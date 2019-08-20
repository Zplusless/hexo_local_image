本项目仅支持linux或wsl

使用方法：

1. clone本项目到hexo根目录下（与source文件夹同一等级目录）

2. 在本目录下，执行

   ```bash
   bash _register.sh
   ```

3. 工作流程
   - ht  将源文件转化成hexo标准格式，源文件备份于source_bak中
   - hexo g  生成博客
   - hexo d  发布博客
   - hr  恢复source文件夹为markdown标准格式，删除备份文件夹source_bak

