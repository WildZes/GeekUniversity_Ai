import scrapy
from scrapy.http import Response
from urllib.parse import urljoin, unquote
import pymongo
import os

data_base_url = os.getenv("DATA_BASE_URL")

class AutoyoulaSpider(scrapy.Spider):
    name = "autoyoula"
    allowed_domains = ["auto.youla.ru"]
    start_urls = ["https://auto.youla.ru/"]
    css_query = {
        "brand": "div.ColumnItemList_container__5gTrc a.blackLink",
        "pagination": "div.Paginator_block__2XAPy a.Paginator_button__u1e7D",
        "ads": "article.SerpSnippet_snippet__3O1t2 a.SerpSnippet_name__3F7Yu",
    }

    data_query = {
        "title": "div.AdvertCard_advertTitle__1S1Ak::text",
        "price": "div.AdvertCard_price__3dDCr::text",
        "description": "div.AdvertCard_descriptionInner__KnuRi::text",
    }

    @staticmethod
    def gen_task(response, list_links, callback):
        for link in list_links:
            yield response.follow(link.attrib.get("href"), callback=callback)

    def parse(self, response: Response):
        yield from self.gen_task(response, response.css(self.css_query["brand"]), self.brand_parse)

    def brand_parse(self, response: Response):
        yield from self.gen_task(
            response, response.css(self.css_query["pagination"]), self.brand_parse
        )
        yield from self.gen_task(response, response.css(self.css_query["ads"]), self.ads_parse)

    def ads_parse(self, response: Response):
        data = {}
        img_list = []
        spec_query = {
            'Год выпуска': 'div.AdvertSpecs_data__xK2Qx a.blackLink::text',
            'Пробег': 'div.AdvertSpecs_data__xK2Qx::text',
            'Кузов': 'div.AdvertSpecs_data__xK2Qx a.blackLink::text',
            'КПП': 'div.AdvertSpecs_data__xK2Qx::text',
            'Двигатель': 'div.AdvertSpecs_data__xK2Qx::text',
            'Руль': 'div.AdvertSpecs_data__xK2Qx::text',
            'Цвет': 'div.AdvertSpecs_data__xK2Qx::text',
            'Привод': 'div.AdvertSpecs_data__xK2Qx::text',
            'Мощность': 'div.AdvertSpecs_data__xK2Qx::text',
            'VIN': 'div.AdvertSpecs_data__xK2Qx::text',
            'Растаможен': 'div.AdvertSpecs_data__xK2Qx::text',
            'Владельцев': 'div.AdvertSpecs_data__xK2Qx::text',
        }
        spec_dic = {}
        for name, query in self.data_query.items():
            data[name] = response.css(query).get()
        for img in response.css('button.PhotoGallery_thumbnailItem__UmhLO'):
            img_list.append(img.attrib.get('style').replace('background-image:url(', '')[:-1])
        for select in response.css('div.AdvertSpecs_row__ljPcX'):
            spec_dic[select.css('div.AdvertSpecs_label__2JHnS::text').get()] = select.css(spec_query[select.css('div.AdvertSpecs_label__2JHnS::text').get()]).get()
        user_link = unquote(response.text)
        user_link = user_link[(user_link.find('youlaProfile')+32):]
        user_link = urljoin("https://auto.youla.ru/", '/user/' + user_link[:user_link.find('"')])
        data['img'] = img_list
        data['spec'] = spec_dic
        data['seller'] = user_link

        data_portion = pymongo.MongoClient(data_base_url)["youla"]
        data_portion.insert_one(data)
