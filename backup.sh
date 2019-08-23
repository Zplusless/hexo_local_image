if [ ! -d "../source_bak" ]
then
    cp -rp ../source ../source_bak  # -p保留路径元数据
    echo 'backup finished!'
    python3 translate.py 
else
    echo 'source_bak已存在，不执行任何操作'
fi
