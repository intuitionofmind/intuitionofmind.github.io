# `Macports` and `xcode`
Install `macports` and `xcode` in the first place and add `export PATH=/opt/local/bin:/opt/local/sbin:$PATH` to `.profile`. You should also run:

```bash
$ sudo xcode-select -switch /Applications/Xcode.app
$ sudo port selfupdate
```

- Terminal as I choose `iterm2`

```bash
$ sudo port install lapack arpack ctags pandoc
```
to use color by adding  `export CLICOLOR=1` and `export LSCOLORS=GxFxCxDxBxegedabagaced` to `.profile`.

# Vim and related

Copy `.vimrc` file to `~/` and install `Vundle` as https://github.com/VundleVim/Vundle.vim,

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

then launch `vim` and run `:PluginInstall`.

# Latex and revtex

```bash
$ sudo port install texlive texlive-fonts-extra texlive-latex-extra
```
Follow the `README` in `revtex4.1` to unzip the `revtex4-1-tds.zip` to `/opt/local/share/texmf-local` and run

```bash
$ sudo mktexlsr /opt/local/share/texmf-local
```

Note that there is a bug in terms of `bbding` package if you are going to use beamer. Simply you can comment `/Cross` in `/opt/local/share/texmf-texlive/tex/latex/bbding/bbding.sty`.

# Python, pip and Jupyter

Just intall python through **MacPorts** and others are NOT. Manage all python packages using through **pip**.  I choose **pip** rather than **conda (anaconda)** because it is more light.

```bash
$ sudo port install pythonxx
```
Then use `sudo python install` to install them.  Set the default python and pip version
```bash
$ sudo port select --list python
$ sudo port select --set python pythonxx
```
```bash
$ sudo port select --list virtualenv
$ sudo port select --set virtualenv virtualenvxx
```
Install **pip** as the offical suggests:

```bash
$ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
$ python get-pip.py --user
```

Then use it to install all the packages:

```bash
$ pip install --user numpy scipy sympy matplotlib ipython jupyter 
```

###  TeX font for Jupyter

We would like to change the font of Jupyter to use **TeX** instead of the original **STIX-web**. In the first place, you should download the full **MathJax** from GitHub and copy its `fonts/HTML-CSS/TeX/` and `jax/output/HTML-CSS/fonts/TeX/` to their corresponding paths in`you_site_package_path/notebook/static/components/MathJax/..`. Finally you should modify the `../notebook/static/notebook/js/main.min.js` and search for `availableFont` with such a way

```js
availableFonts: ["STIX-Web","TeX"],
imageFont: null;
preferredFont: "TeX",
webFont: "TeX"
```

### Set the default browser for Jupyter

```bash
jupyter notebook --generate-config
```

Then go to `./.jupyter/` to edit `jupyter_notebook_config.py` to find as well as set

```python
c.NotebookApp.browser = u'/Applications/Gooogle\ Chrome.app %s'
```

### Jupyter extension plugins

```bash
$ pip install --user jupyter_contrib_nbextensions
$ jupyter contrib nbextension install --user
$ pip install --user jupyter_nbextensions_configurator
$ jupyter nbextensions_configurator enable --user
```

Once your Jupyter notebook is restarted, you can configure all extensions at `<base_url>nbextensions` which mostly is `http://localhost:8888/nbextensions`. I would like to choose plugins like **latex_envs, codefolding,  table of contens, hide input, hide all input** .

###  Export Jupyter note

If you want to export the note without code blocks

```bash
$ jupyter nbconvert /path/to/your.ipynb --to=pdf --TemplateExporter.exclude_input=True
```
