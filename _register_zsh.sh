#!/bin/zsh
root_path=$(pwd)
echo "alias ht='cd $root_path && zsh ./backup.sh '">>~/.zshrc
echo "alias hr='cd $root_path && zsh ./recovery.sh'">>~/.zshrc
echo "alias htg='ht && hexo g'">>~/.zshrc
echo "alias hdr='hexo d && hr'">>~/.zshrc
source ~/.zshrc
