import os
import requests
from urllib.parse import urljoin
import bs4
import pymongo
from dotenv import load_dotenv
import time
from dateparser.search import search_dates
import datetime

rus_to_eng_dic = {u'января': 'Jan',
                  u'февраля': 'Feb',
                  u'марта': 'Mar',
                  u'апреля': 'Apr',
                  u'мая': 'May',
                  u'июня': 'Jun',
                  u'июля': 'Jul',
                  u'августа': 'Aug',
                  u'сентября': 'Sep',
                  u'октября': 'Oct',
                  u'ноября': 'Nov',
                  u'декабрая': 'Dec'
                 }

class ParseError(Exception):
    def __init__(self, text):
        self.text = text

class MagnitParser:
    def __init__(self, start_url, data_client):
        self.start_url = start_url
        self.data_client = data_client
        self.data_base = self.data_client["gb_parse_21_01_2021"]

    @staticmethod
    def _str_to_date(std):
        for russian,english in rus_to_eng_dic.items():
            std = std.replace(russian,english)
        if len(search_dates(std)) == 2:
            return search_dates(std)
        else:
            return [('Now', datetime.datetime.today()), ('Now', datetime.datetime.today())]

    @staticmethod
    def _get_response(url, *args, **kwargs):
        while True:
            try:
                response = requests.get(url, *args, **kwargs)
                if response.status_code > 399:
                    raise ParseError(response.status_code)
                time.sleep(0.1)
                return response
            except (requests.RequestException, ParseError):
                time.sleep(0.5)

    @staticmethod
    def _get_soup(response):
        return bs4.BeautifulSoup(response.text, "lxml")

    def run(self):
        for product in self.parse(self.start_url):
            self.save(product)

    def parse(self, url) -> dict:
        soup = self._get_soup(self._get_response(url))
        catalog_main = soup.find("div", attrs={"class": "сatalogue__main"})
        for product_tag in catalog_main.find_all("a", attrs={"class": "card-sale"}):
            yield self._get_product_data(product_tag)

    @property
    def data_template(self):
        return {
            "url": lambda tag: urljoin(self.start_url, tag.attrs.get("href")),
            "promo_name": lambda tag: tag.find('div', attrs={'class': 'card-sale__header'}).text,
            "product_name": lambda tag: tag.find('div', attrs={'class': 'card-sale__title'}).text,
            "old_price": lambda tag: float(tag.find('div', attrs={'class': 'label__price_old'}).\
                                           find('span', attrs={'class': 'label__price-integer'}).text + 
                                            '.' +
                                           tag.find('div', attrs={'class': 'label__price_old'}).\
                                           find('span', attrs={'class': 'label__price-decimal'}).text),
            "new_price": lambda tag: float(tag.find('div', attrs={'class': 'label__price_new'}).\
                                           find('span', attrs={'class': 'label__price-integer'}).text + 
                                            '.' +
                                           tag.find('div', attrs={'class': 'label__price_new'}).\
                                           find('span', attrs={'class': 'label__price-decimal'}).text),
            "image_url": lambda tag: urljoin(self.start_url, tag.find('img').attrs.get('data-src')),
            "date_from": lambda tag: self._str_to_date(tag.find('div', attrs={'class': 'card-sale__date'}).text)[0][1],
            "date_to": lambda tag: self._str_to_date(tag.find('div', attrs={'class': 'card-sale__date'}).text)[1][1]
        }

    def _get_product_data(self, product_tag: bs4.Tag) -> dict:
        data = {}
        for key, pattern in self.data_template.items():
            try:
                data[key] = pattern(product_tag)
            except AttributeError:
                pass
        return data

    def save(self, data):
        collection = self.data_base["magnit"]
        collection.insert_one(data)
        pass


if __name__ == '__main__':
    load_dotenv(".env")
    data_base_url = os.getenv("DATA_BASE_URL")
    data_client = pymongo.MongoClient(data_base_url)
    url = "https://magnit.ru/promo/?geo=moskva"
    parser = MagnitParser(url, data_client)
    parser.run()