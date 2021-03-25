from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
import datetime

from sqlalchemy import Column, Integer, String, ForeignKey, Table, DateTime

Base = declarative_base()


class IdMixin:
    id = Column(Integer, autoincrement=True, primary_key=True)


class UrlMixin:
    url = Column(String, unique=True, nullable=False)


class NameMixin:
    name = Column(String, nullable=False)


tag_post = Table(
    "tag_post",
    Base.metadata,
    Column('post_id', Integer, ForeignKey("post.id")),
    Column('tag_id', Integer, ForeignKey("tag.id")),
)


comm_post = Table(
    "comm_post",
    Base.metadata,
    Column('post_url', Integer, ForeignKey("post.url")),
    Column('comm_id', Integer, ForeignKey("comment.comment_id")),
)


class Post(IdMixin, UrlMixin, Base):
    __tablename__ = "post"
    date = Column(DateTime, default=datetime.datetime.utcnow)
    img = Column(String, unique=True)
    title = Column(String, nullable=False)
    author_id = Column(Integer, ForeignKey("author.id"))
    author = relationship("Author")
    tags = relationship("Tag", secondary=tag_post)
    post_id = Column(Integer, unique=True)
    comments = relationship("Comment", secondary=comm_post)


class Author(IdMixin, UrlMixin, NameMixin, Base):
    __tablename__ = "author"
    posts = relationship("Post")


class Tag(IdMixin, UrlMixin, NameMixin, Base):
    __tablename__ = "tag"
    posts = relationship("Post", secondary=tag_post)
    
class Comment(IdMixin, UrlMixin, Base):
    __tablename__ = 'comment'
    author = Column(String, nullable=False)
    author_id = Column(Integer, nullable=False)
    comment = Column(String, nullable=False)
    comment_id = Column(Integer, nullable=False)
    parent_id = Column(Integer)
    root_comment_id = Column(Integer)
    posts = relationship("Post", secondary=comm_post)