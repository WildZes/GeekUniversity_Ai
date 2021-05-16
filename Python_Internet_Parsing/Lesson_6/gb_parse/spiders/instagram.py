# -*- coding: utf-8 -*-
import json
import scrapy
import datetime as dt
from ..loaders import InstagramLoader
from uuid import uuid1


class InstagramSpider(scrapy.Spider):
    name = "instagram"
    allowed_domains = ["www.instagram.com"]
    start_urls = ["https://www.instagram.com/"]
    login_url = "https://www.instagram.com/accounts/login/ajax/"
    api_url = "/graphql/query/"
    query_hash = {
        'tag_posts': "9b498c08113f1e09617a1703c22b2f32",
    }


    def __init__(self, login, password, *args, **kwargs):
        self.tags = ["fifa", "python"]
        self.login = login
        self.password = password
        super().__init__(*args, **kwargs)

    def parse(self, response):
        try:
            js_data = self.js_data_extractor(response)
            yield scrapy.FormRequest(
                self.login_url,
                method="POST",
                callback=self.parse,
                formdata={
                    "username": self.login,
                    "enc_password": self.password,
                },
                headers={
                    "X-CSRFToken": js_data["config"]["csrf_token"],
                },
            )
        except AttributeError:
            if response.json().get('authenticated'):
                for tag in self.tags:
                    yield response.follow(f'/explore/tags/{tag}/', callback=self.tag_parse)

    def tag_parse(self, response):
        loader = InstagramLoader(response=response)
        tag = self.js_data_extractor(response)['entry_data']['TagPage'][0]['graphql']['hashtag']
        loader.add_value('_id', uuid1())
        loader.add_value('data', tag)
        loader.add_value('date_parse', dt.datetime.utcnow())
        yield from self.get_tag_posts(tag, response)
        return loader.load_item()

    def pagination_parse(self, response):
        yield from self.get_tag_posts(response.json()['data']['hashtag'], response)

    def get_tag_posts(self, tag, response):
        if tag['edge_hashtag_to_media']['page_info']['has_next_page']:
            variables = {
                'tag_name': tag['name'],
                'first': 100,
                'after': tag['edge_hashtag_to_media']['page_info']['end_cursor'],
            }
            url = f'{self.api_url}?query_hash={self.query_hash["tag_posts"]}&variables={json.dumps(variables)}'
            yield response.follow(url, callback=self.pagination_parse,)

        yield from self.get_post_item(tag['edge_hashtag_to_media']['edges'])

    def get_post_item(self, edges):
        loader = InstagramLoader()
        for node in edges:
            loader.add_value('_id', uuid1())
            loader.add_value('date_parse', dt.datetime.utcnow())
            loader.add_value('data', node['node'])
            loader.add_value('images', node['node']['display_url'])
            yield loader.load_item()

    def js_data_extractor(self, response) -> dict:
        script = response.xpath('//body/script[contains(text(), "csrf_token")]/text()').get()
        return json.loads(script.replace("window._sharedData = ", "", 1)[:-1])
