# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
from scrapy import Request
from scrapy.pipelines.images import ImagesPipeline
from scrapy.exceptions import DropItem
import pymongo


class GbParsePipeline:
    def process_item(self, item, spider):
        return item


class SaveToMongoPipeline:
    def __init__(self):
        client = pymongo.MongoClient()
        self.db = client["gb_parse_13_01_2021"]

    def process_item(self, item, spider):
        self.db[spider.name].insert_one(item)
        return item


class GbImagePipeline(ImagesPipeline):
    def get_media_requests(self, item, info):
        for image_url in item.get("images", []):
            yield Request(image_url)

    def item_completed(self, results, item, info):
        if results:
            item["images"] = [itm[1] for itm in results]
        return item


class DuplicatesPipeline:

    def __init__(self):
        self.ids_seen = set()

    def process_item(self, item, spider):
        adapter = ItemAdapter(item)
        if str(adapter['data']) in self.ids_seen:
            raise DropItem(f"Duplicate item found: {item!r}")
        else:
            self.ids_seen.add(str(adapter['data']))
            return item
