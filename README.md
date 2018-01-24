# MySetup
My bash on windows vim setup and a couple of scripts. If you are having problems installing this setup feel free to contact me.

# Shortcuts
## Global
- **Ctrl+N** open/close NerdTree for file navigation
- **Ctrl+M** open/close Tagbar for tag view (very useful for C and CPP)
- **Ctrl+S** split screen
- **Ctrl+B** compile file (executes .vimbuilder. Edit that file to configure more file types)
## C and CPP
- **F5** start debugging
- **Ctrl+F5** stop debugging
- **F6** continue until next breakpoint or program end
- **F9** toggle breakpoint
- **F10** step over line of code
- **F11** step into function/method call
- **F12** go to definition
- **Ctrl+E** show value of variable under cursor

# Installation
This installation guide assumes your have minimal experience using VIM and the terminal.
## Settings and scripts
Before installing please remove your current .vimrc. You can do this by applying the following command:
```bash
rm ~/.vimrc
```
To install this VIM setup please run the following commands in the exact order:
```bash
cd
git clone https://github.com/hailstorm75/MySetup/
cd MySetup
mv -t ~/ .newProjectGenerator .vimbuilder .vimrc .ycm_extra_conf .templates
cd
rm -rf MySetup
```

## Plugins
Next you need to install the VIM plugins and additional packages which you can find in the [requirements](#requirements) section.
> **Note**: if you are already using a package manager and it's not pathogen you'll have to remove the first line from the provided .vimrc file and use the appropriate plugin installation steps for your package maanger.

### Installing Pathogen
To install a vim plugin you will most likely need a package manager. I use [pathogen](https://github.com/tpope/vim-pathogen). To install pathogen paste the following command into your terminal:
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
### Installing Plugins using Pathogen
After that everything else is simple. Just navigate to your pathogen bundle directory
```bash
cd ~/.vim/bundle
```
and install the VIM plugins using this syntax
```bash
git clone https://github.com/USER/PLUGIN
```
## Packages
The way you install packages will differ depending on your Linux distro. But since this is a setup for Bash on Windows (Ubuntu), I will provide the ubuntu command:
```bash
sudo apt-get install MyPackageName
```

# Requirements
## Vim plugins
> **Note**: Some plugins may require additional settings. Most notably YouCompleteMe
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
