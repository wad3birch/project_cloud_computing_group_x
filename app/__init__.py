#coding:UTF-8
__author__ = 'Group_X'

from flask import Flask

app = Flask(__name__)


app.config.from_object('config')

from app import views
