import json
import time
from pathlib import Path
import requests

"""
1xx
2xx
3xx
4xx
5xx
"""

"""
GET
POST
PATCH
DELETE
"""


class ParseError(Exception):
    def __init__(self, text):
        self.text = text


class Parse5ka:
    _headers = {
        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:84.0) Gecko/20100101 Firefox/84.0",
    }
    _params = {
        "records_per_page": 50,
    }

    def __init__(self, start_url: str, result_path: Path):
        self.start_url = start_url
        self.result_path = result_path

    @staticmethod
    def __get_response(url: str, *args, **kwargs) -> requests.Response:
        while True:
            try:
                response = requests.get(url, *args, **kwargs)
                if response.status_code > 399:
                    raise ParseError(response.status_code)
                time.sleep(0.1)
                return response
            except (requests.RequestException, ParseError):
                time.sleep(0.5)
                continue

    def run(self):
        for product in self.parse(self.start_url, self._params):
            file_path = self.result_path.joinpath(f'{product["id"]}.json')
            self.save(product, file_path)
        self.gimme_cat()

    def parse(self, url: str, params: dict) -> dict:
        while url:
            response = self.__get_response(
                url, params=params, headers=self._headers
            )
            data = response.json()
            url = data["next"]
            for product in data["results"]:
                yield product

    @staticmethod
    def save(data: dict, file_path: Path):
        with file_path.open("w", encoding="utf-8") as file:
            json.dump(data, file, ensure_ascii=False)
            
    @staticmethod
    def add_to_file(data: dict, file_path: Path):
        with file_path.open('a', encoding='utf-8') as file:
            json.dump(data, file, ensure_ascii=False)
            
    def gimme_cat(self):
        data = requests.get('https://5ka.ru/api/v2/categories/').json()
        for _, value in enumerate(data):
            self._params['categories'] = value['parent_group_code']
            for product in self.parse("https://5ka.ru/api/v2/special_offers/", self._params):
                file_path = self.result_path.parent.joinpath(f'categories/{self._params["categories"]}.json')
                self.add_to_file(product, file_path)

if __name__ == "__main__":
    url = "https://5ka.ru/api/v2/special_offers/"
    result_path = Path(__file__).parent.joinpath("products")
    parser = Parse5ka(url, result_path)
    parser.run()