# Github Pages

To use Github pages, as suggested in https://docs.getpelican.com/en/stable/tips.html

```bash
$ pelican content -o output -s pelicanconf.py
$ ghp-import output -b gh-pages
$ git push origin gh-pages
```

# Plugins

Starting with version 4.5, Pelican moved to a new plugin structure utilizing namespace packages.
Use `pip` to install plugins and import them in `pelicanconf.py` like
```python
from pelican.plugins import tag_cloud
```
Then add `PLUGINS = ['tag_cloud']`. 


