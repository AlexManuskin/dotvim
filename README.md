# Vim tutorial and useful installations

## Why use vim
* Comes preinstalled on many many Unix-like machines
* Support for a large and fanatic community 
* Concepts are portable to many full featured IDEs Jet-Brains, VS-Code
* You never stop learning vim

# Getting started
The default settings of vim are pretty bear-boned, but still enough to get started.

## The mode modal
There are 3 main modes for vim:  
1. Normal mode: Where you move around and do most of the things
2. Insert mode: Where you insert text in short bursts
3. Visual mode: For text selection, copy paste, etc

## Resources to get started:
Interactive tutorial for basic movement
* `vimtutor`
* [openvim](https://www.openvim.com)
* Type `:help` in your vim

## Basic motions

### Chaning modes
* `esc`: exit back to normal mode
* `i` enter insert mode
* `v` enter visual mode  
You should always be in visual mode, unless you are inserting text. The power of vim is treating text as repeatable actions.


### Navigation
* `hjkl` for moving around  
(Try [vim-hardtime](https://github.com/takac/vim-hardtime) to really suffer)
* `Ctrl+o` Jump to the last palce you have viewed
* `Ctrl+i/Tab` Jump forward

* `w,b` to skip words forward and back

* `Ctrl+d` page down
* `Ctrl+u` page up

# Editing commands
* `c` change
* `d` delete
* `r` replace
* `y` yank
* `p` paste
* `u` undo
* `Ctrl+r` redo
* `.` repeat the last editing action

You can combine `operator` + `number` + `motion`  
Examples:
* Delete 7 lines down
* Change word
* Change between parenthesis 


### Saving and exiting
* `:w` write
* `:q` quite
* `:wa` write all
* `:wq` write and quite

## Plugins
Vim has an extensive plugin system. You can find a plugin for syntax highlight, spell check, linting, code completion, git integration.

To use plugins you need a plugin manager. There are a few to choose from.
* [vim-pathogen](https://github.com/tpope/vim-pathogen)
* [vim-plug](https://github.com/junegunn/vim-plug)

### Pathogen
After following installation process, simply clone the relevant repository into `$HOME/.vim/bundle` (other actions may apply)

* Basically anything by Tim Pope

    * Plugin manager: [vim-pathogen](https://github.com/tpope/vim-pathogen)
    * Sensible settings:  [vim-sensible](https://github.com/tpope/vim-sensible)
    * Git integration:  [vim-fugitive](https://github.com/tpope/vim-fugitive)

* [vim-airline](https://github.com/vim-airline/vim-airline): Compact status line with lots of useful information 

* Code completion:
    * [necomplete](https://github.com/Shougo/neocomplete.vim)
    * [deoplete](https://github.com/Shougo/deoplete.nvim)
    * [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

* Linting:
    * [ale](https://github.com/dense-analysis/ale)


## Installation
### Get support for python3 and/or lua
`brew install vim`  
Then run `vim --version` to make sure you see 
`+lua, +python`

### Repository installation:
Clone this repository as .vim
```sh
git clone https://github.com/amanusk/dotvim.git .vim
```

## make soft links
```sh
ln -s .vim/vimrc .vimrc
```

## Install the plugins on a new machine
```sh
cd .vim &&
git submodule init &&
git submodule update 
```

## Update the plugins
```sh
git submodule foreach git pull origin master
```

## Add new submodule
```sh
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
```

## Remove submodule
```sh
Delete the relevant section from the .gitmodules file.
Stage the .gitmodules changes git add .gitmodules
Delete the relevant section from .git/config.
Run git rm --cached path_to_submodule (no trailing slash).
Run rm -rf .git/modules/path_to_submodule
Commit git commit -m "Removed submodule <name>"
Delete the now untracked submodule files
rm -rf path_to_submodule
```

### Other softlinks
```
ln -s .vim/.bash_aliases .bash_aliases &&
ln -s .vim/tmux.conf .tmux.conf 
```

### Resources
* [Vim-casts](http://vimcasts.org): Many useful vim features, novice and advanced
* Setting up vim for typescript https://www.vimfromscratch.com/articles/setting-up-vim-for-typescript/
