import os
import requests
from dotenv import load_dotenv
import bs4
from urllib.parse import urljoin
import database
import time
import datetime

import comment_parse as cp


class ParseError(Exception):
    def __init__(self, text):
        self.text = text


class GbParse:
    def __init__(self, start_url, db):
        self.db = db
        self.start_url = start_url
        self.done_url = set()
        self.tasks = [self.parse_task(self.start_url, self.pag_parse)]
        self.done_url.add(self.start_url)

    @staticmethod
    def _get_response(*args, **kwargs):
        while True:
            try:
                response = requests.get(*args, **kwargs)
                if response.status_code > 399:
                    raise ParseError(response.status_code)
                time.sleep(0.1)
                return response
            except (requests.RequestException, ParseError):
                time.sleep(0.5)

    def _get_soup(self, *args, **kwargs):
        response = self._get_response(*args, **kwargs)
        return bs4.BeautifulSoup(response.text, "lxml")

    def parse_task(self, url, callback):
        def task():
            soup = self._get_soup(url)
            return callback(url, soup)

        return task

    def run(self):
        for task in self.tasks:
            result = task()
            if result:
                self.save(result)

    def pag_parse(self, url, soup):
        self.create_parse_tasks(
            url, soup.find("ul", attrs={"class": "gb__pagination"}).find_all("a"), self.pag_parse
        )
        self.create_parse_tasks(
            url,
            soup.find("div", attrs={"class": "post-items-wrapper"}).find_all(
                "a", attrs={"class": "post-item__title"}
            ),
            self.post_parse,
        )

    def create_parse_tasks(self, url, tag_list, callback):
        for a_tag in tag_list:
            a_url = urljoin(url, a_tag.get("href"))
            if a_url not in self.done_url:
                task = self.parse_task(a_url, callback)
                self.tasks.append(task)
                self.done_url.add(a_url)

    def post_parse(self, url, soup):
        published = soup.find("time", attrs={"class": "m-r-md"}).get('datetime')
        post_data = {
            "title": soup.find("h1", attrs={"class": "blogpost-title"}).text,
            "url": url,
            "img": soup.find("div", attrs={"class": "blogpost-content"}).find('img')['src'] \
                     if soup.find("div", attrs={"class": "blogpost-content"}).find('img') is not None \
                     else None,
            "date": datetime.datetime.fromisoformat(published) \
                    if published \
                    else None,
        }
        author_tag_name = soup.find("div", attrs={"itemprop": "author"})
        author = {
            "name": author_tag_name.text,
            "url": urljoin(url, author_tag_name.parent.get("href")),
        }
        tags_a = soup.find("article", attrs={"class": "blogpost__article-wrapper"}).find_all(
            "a", attrs={"class": "small"}
        )

        tags = [{"url": urljoin(url, tag.get("href")), "name": tag.text} for tag in tags_a]
        comment_id = soup.find("comments").get('commentable-id')
        comment_data = cp.ParseComment(url).run(comment_id) \
                            if comment_id else None
        return {
            "post_data": post_data,
            "author": author,
            "tags": tags,
            "comment_data": comment_data,
        }

    def save(self, data):
        self.db.create_post(data)


if __name__ == "__main__":
    load_dotenv(".env")
    db = database.Database(os.getenv("SQL_DB_URL"))
    parser = GbParse("https://geekbrains.ru/posts", db)
    parser.run()