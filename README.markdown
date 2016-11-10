# DOTVIM
This repository holds the .vim files and vim plugins I use

##installation:
```sh
git clone git@github.com:AlexManuskin/dotvim.git ~/.vim
```

##make soft links
```sh
ln -s .vim/vimrc .vimrc
```
##Bash files
Copy or make soft links for .bash files

##Install the plugins on a new machine
```sh
git submodule init
git submodule update
```

##Update the plugins
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
