import time
import requests


class ParseError(Exception):
    def __init__(self, text):
        self.text = text


class ParseComment:
    _headers = {
        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:84.0) Gecko/20100101 Firefox/84.0",
    }
    _params = {
        "commentable_type": "Post",
    }

    def __init__(self, start_url: str):
        self.start_url = start_url

    @staticmethod
    def __get_response(url: str, *args, **kwargs) -> requests.Response:
        
        while True:
            try:
                response = requests.get(url, *args, **kwargs)
                if response.status_code == 429 or response.status_code == 404:
                    return None
                if response.status_code > 399:
                    raise ParseError(response.status_code)
                time.sleep(0.1)
                return response
            except (requests.RequestException, ParseError):
                time.sleep(0.5)
                continue

    def run(self, comment_id):
        self._params["commentable_id"] = comment_id
        products = self.parse(self.start_url, self._params)
        return products

    def parse(self, post_url: str, params: dict) -> dict:
        response = self.__get_response('https://geekbrains.ru/api/v2/comments',
                                       params=params,
                                       headers=self._headers)
        data = response.json()
        output = []
        output_element = {}
        for comment in data:
            output_element['url'] = post_url
            output_element['comment_id'] = comment['comment']['id']
            output_element['comment'] = comment['comment']['body']
            output_element['author'] = comment['comment']['user']['full_name']
            output_element['author_id'] = comment['comment']['user']['id']
            output_element['parent_id'] = comment['comment']['parent_id']
            output_element['root_comment_id'] = comment['comment']['root_comment_id']
            output.append(output_element)
            self.child_parse(post_url, comment['comment']['children'], output)
        return output
            
                           
    def child_parse(self, post_url, child, list_to_return):
        dic_element = {}
        for element in child:
            dic_element['url'] = post_url
            dic_element['comment_id'] = element['comment']['id']
            dic_element['comment'] = element['comment']['body']
            dic_element['author'] = element['comment']['user']['full_name']
            dic_element['author_id'] = element['comment']['user']['id']
            dic_element['parent_id'] = element['comment']['parent_id']
            dic_element['root_comment_id'] = element['comment']['root_comment_id']
            list_to_return.append(dic_element)
            self.child_parse(post_url, element['comment']['children'], list_to_return)
        return list_to_return