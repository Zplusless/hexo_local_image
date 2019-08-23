## 实现功能：

1. 解决hexo不支持markdown原生语法引用本地图片
2. 不使用图床，将图片放在本地，hexo图片路径问题
3. 实现本地markdown可预览图片，vps端hexo正常生成图片
4. 实现在markdown文本中对hexo渲染图片大小的控制

## 实现原理：

1. 利用ht命令，将markdown文本中关于图像的命令转化为hexo风格:

   即不带缩放的

   ```markdown
   {% asset_img slug [title] %}
   ```

   和利用html缩放的

   ```html
   <img src="/images/myImage.png" width=50% height=50% align=center/>
   ```

   

2. 接下来利用hexo自身命令发布

3. 利用hr命令，恢复成markdown文本，方便编写时同步看到图片效果

## 使用环境：

本项目仅支持linux，windows请用wsl, 脚本使用shell+python3编写

## 使用方法：

1. clone本项目到hexo根目录下（与source文件夹同一等级目录）

2. 执行以下命令，_register.sh会利用alias在.bashrc中创建ht和hr两个命令。

   ```bash
   git clone https://github.com/Zplusless/hexo_local_image
   cd hexo_local_image
   bash _register.sh
   ```

3. hexo配置文件中，`post_asset_folder: true`，这样`hexo new`时，会同步创建于md同名的文件夹，
  
4. 编写格式

   - 引用图片：`![](博客文件夹名/图片名)`
   - 控制图片缩放：`![50%,50%](博客文件夹名/图片名)`。即在[ ]中依次写入宽缩放百分比和高缩放百分比，中间逗号隔开。

5. 写完博客后，发布流程

   - ht  将源文件转化成hexo标准格式于source文件夹中，源文件备份于source_bak中
   
   - hexo g  生成博客
   
   - hexo d  发布博客
   
   - hr  恢复source文件夹为markdown标准格式，删除备份文件夹source_bak
   
   - 简化命令
   
     ```shell
     htg  # ht + hexo g  转化并生成可发布文件
     hexo s  # 本地查看效果
     hdr  # hexo d + hr  发布并恢复成markdown文件
     ```
   
     

