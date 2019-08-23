if [ ! -d "../source_bak"  ]
then
    echo 'source_bak不存在，不执行任何操作'
else
    rm -r ../source && mv  ../source_bak ../source
    echo 'done!'
fi
