# MySetup
My bash on windows vim setup and a couple of scripts. If you are having problems installing this set-up feel free to contact me.

# Installation
Before installing please remove your current .vimrc. You can do this by applying the following command:
```bash
rm ~/.vimrc
```
To install this VIM setup please run the following commands in the exact order:
```bash
cd
git clone https://github.com/hailstorm75/MySetup/
cd MySetup
mv -t ~/ .newProjectGenerator .vimbuilder .vimrc .templates
rm .git .gitattributes README.md
cd
rmdir MySetup
```
Next you need to install the VIM plugins and additional packages which you can find in the [requirements](#Requirements) section.

To install a vim plugin you will most likely need a package manager. I use [pathogen](https://github.com/tpope/vim-pathogen). To install pathogen paste the following command into your terminal:
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
After that everything else is simple. Just navigate to your pathogen bundle directory
```bash
cd ~/.vim/bundle
```
and install the VIM plugins using this syntax
```bash
git clone https://github.com/USER/PLUGIN
```

The way you install packages will differ depending on your Linux distro. But since this is a setup for Bash on Windows (Ubuntu), I will provide the ubuntu command:
```bash
sudo apt-get install MyPackageName
```

# Requirements
## Vim plugins
- https://github.com/scrooloose/nerdtree.git
- https://github.com/jiangmiao/auto-pairs.git
- https://github.com/yggdroot/indentline
- https://github.com/majutsushi/tagbar
- https://github.com/honza/vim-snippets
- https://github.com/garbas/vim-snipmate
- https://github.com/idanarye/vim-vebugger
- https://github.com/Shougo/vimproc.vim
- https://github.com/valloric/youcompleteme
## Packages
- exuberant-ctags
- clang
- python2.7-dev (may be different for you depending on python version)
- texlive
