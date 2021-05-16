from scrapy.loader import ItemLoader
from .items import InstagramItm
from itemloaders.processors import TakeFirst


class InstagramLoader(ItemLoader):
    default_item_class = InstagramItm
    _id_out = TakeFirst()
    date_parse_out = TakeFirst()
    data_out = TakeFirst()