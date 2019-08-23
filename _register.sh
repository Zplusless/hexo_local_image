#!/bin/bash
root_path=$(pwd)
echo "alias ht='cd $root_path && bash ./backup.sh '">>~/.bashrc
echo "alias hr='cd $root_path && bash ./recovery.sh'">>~/.bashrc
echo "alias htg='ht && hexo g'">>~/.bashrc
echo "alias hdr='hexo d && hr'">>~/.bashrc
source ~/.bashrc
