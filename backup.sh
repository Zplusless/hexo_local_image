if [ ! -d "../source_bak" ]
then
    cp -r ../source ../source_bak
    echo 'backup finished!'
    python3 translate.py 
else
    echo 'source_bak已存在，不执行任何操作'
fi
