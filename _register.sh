#!/bin/bash
current_path=$(pwd)
echo "alias ht='cd $current_path && cp -r ../source ../source_bak && python3 translate.py'">>~/.bashrc
echo "alias hr='cd $current_path && python3 recovery.py'">>~/.bashrc
source ~/.bashrc
