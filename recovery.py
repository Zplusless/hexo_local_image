import os
import shutil

if os.path.exists('../source_bak'):
    shutil.rmtree('../source')
    shutil.move('../source_bak', '../source')
    print('recovery success!')
else:
    print('source_bak not exsist')