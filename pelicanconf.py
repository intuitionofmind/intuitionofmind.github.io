#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Wayne Zheng'
SITENAME = "Wayne Zheng's HOMEPAGE"
SITEURL = ''

OUTPUT_PATH = 'public/'

PATH = 'content'
PAGE_PATHS = ['pages']
STATIC_PATHS = ['pdfs', 'images']

GOOGLE_ANALYTICS = 'UA-91674826-1'

TIMEZONE = 'US/Eastern'

DEFAULT_LANG = 'en'

USE_FOLDER_AS_CATEGORY = True
LOAD_CONTENT_CACHE = False

THEME = 'pelican-themes/foundation-default-colours'
# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

MONTH_ARCHIVE_SAVE_AS = 'posts/{date:%Y}/{date:%m}/index.html'

# plugins
PLUGIN_PATHS = ['./pelican-plugins/']
PLUGINS = ['tag_cloud', 'render_math', 'sitemap', 'autopages']

TAG_CLOUD_SORTING = 'random'
TAG_CLOUD_BADGE = True

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
        ('Python.org', 'http://python.org/'))

# Social widget
SOCIAL = (('Github', 'https://github.com/intuitionofmind'),
        ('Strava', 'http://www.strava.com/athletes/3923875'))

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True
