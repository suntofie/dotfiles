#!/bin/bash 

echo -n "Create symlinks? (Y/n) "

read item
case "$item" in
    y|Y) echo "Creating symlinks..."
        ;;
    n|N) echo "exit from script"
        exit 0
        ;;
    *) echo "They did not enter anything. Perform the default action..."
        ;;
esac
echo "termite [1/6]" && sleep 1
ln -s ~/bin/dotfiles/termite ~/.config/termite
echo "bspwm [2/6]" && sleep 1
ln -s ~/bin/dotfiles/bspwm ~/.config/bspwm
echo "sxhkd [3/6]" && sleep 1
ln -s ~/bin/dotfiles/sxhkd ~/.config/sxhkd
echo "polybar [4/6]" && sleep 1
ln -s ~/bin/dotfiles/polybar ~/.config/polybar
echo "neovim [5/6]" && sleep 1
ln -s ~/bin/dotfiles/nvim ~/.config/nvim
echo "sh [6/6]" && sleep 1
ln -s ~/bin/dotfiles/sh ~/bin/sh

echo -n "Add sh scripts to bashrc? (Y/n) "

read item
case "$item" in
    y|Y) echo "Addition..."
        echo "source ~/bin/sh/aliases.sh" >> ~/.bashrc
        echo "source ~/bin/sh/ex.sh" >> ~/.bashrc
        ;;
    n|N) echo "Skiping..." 
        ;;
    *) echo "They did not enter anything. Perform the default action..."
	     echo "source ~/bin/sh/aliases.sh" >> ~/.zshrc
        echo "source ~/bin/sh/ex.sh" >> ~/.zshrc
		  ;;
esac

echo -n "Add sh scripts to zshrc? (Y/n) "

read item
case "$item" in
    y|Y) echo "Addition..."
        echo "source ~/bin/sh/aliases.sh" >> ~/.zshrc
        echo "source ~/bin/sh/ex.sh" >> ~/.zshrc
        ;;
    n|N) echo "Skiping..." 
        ;;
    *) echo "They did not enter anything. Perform the default action..."
        echo "source ~/bin/sh/aliases.sh" >> ~/.zshrc
        echo "source ~/bin/sh/ex.sh" >> ~/.zshrc
        ;;
esac
echo "" && sleep 1
echo "done"
