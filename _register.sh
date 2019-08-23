#!/bin/bash
current_path=$(pwd)
echo "alias ht='cd $current_path && bash backup.sh '">>~/.bashrc
echo "alias hr='cd $current_path && bash recovery.sh'">>~/.bashrc
echo "alias htg='ht && hexo g'">>~/.bashrc
source ~/.bashrc
