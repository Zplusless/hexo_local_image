import os
import re
import shutil


def replace(match):
    if match:
#         print('match!!')
        title = match.group(1)
        path = match.group(2)
        image = re.split(r'/',path)[-1]
        return r'{% asset_image '+image+' '+title+r' %}'
    else:
        return None


def process(file):
    with open(file, 'r', encoding='utf8') as f:
        lines = f.readlines()
    out_lines = []
    for line in lines:
        if ('http' not in line) and (r'](' in line):
            out = re.sub(r'!\[(.*)\]\((.*)\)', replace, line)
            out_lines.append(out)
        else:
            out_lines.append(line)
    with open(file, 'w', encoding='utf8') as f:
        f.writelines(out_lines)


def dir_iter(path):
    # print('扫描：',path)
    temp = []
    for file in os.listdir(path):
        if not os.path.isdir(os.path.join(path,file)):
            # print('文件: ', file)
            if  file.endswith('.md'):
                process(os.path.join(path,file))
                print('Done: '+path+'/'+file)
        else:
            # print('暂存路径: ', file)
            temp.append(os.path.join(path,file))
    for dir_path in temp:
        dir_iter(dir_path)

def ingore_files(dirname, filenames):
    return [name for name in filenames if not name.endswith('.md')]



if __name__ == "__main__":
    
    source_dir = '../source'
    # to_dir = './source_write'


    # shutil.copytree(source_dir, cache_dir, ignore= ingore_files)
    dir_iter(source_dir)
    print('\n替换操作完成\n')

