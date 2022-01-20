## 个人博客项目

主题使用[next](https://github.com/theme-next/hexo-theme-next)，进行了一些配置修改，以及[CSS样式覆盖](themes/next/source/css/custom.styl)。

博客文章放在sources目录，其中 `source/_posts` 为Markdown源文件和图片存放位置，配置了gitignore，本地软链接到笔记目录。

渲染器使用自己fork修改的[hexo-renderer-markdown-it-jzj](https://github.com/jzj1993/hexo-renderer-markdown-it-jzj)，可以处理`source/_posts`中使用相对路径引用的图片文件，并自动复制到`public`目录。

测试文章放在`source-test`目录，用于开发测试。

本地编译发布：`hexo clean && hexo generate && hexo server`

发布到GitHub Pages:

1. 全量发布：`hexo deploy`，重新生成博客文件，清空Git历史记录并push最新文件，需要消耗较多网络资源
1. 增量发布：`./deploy.sh "MESSAGE" full`，重新生成博客文件，不清空Git历史记录，只push改动的文件
1. 快速增量发布：`./deploy.sh ["MESSAGE"] [fast]`，增量生成博客文件，可能会残留多余文件，但是速度最快

功能配置

1. [x] HTTPS
1. [x] 固定链接
1. [x] 文章目录
1. [x] 代码高亮
1. [x] MathJax
1. [x] 搜索
1. [x] 标签云
1. [x] 友情链接
1. [x] 相关文章
1. [x] 评论(valine)
1. [x] 阅读量(valine)
1. [x] 站点地图
1. [x] 搜索引擎SEO
1. [x] 增量deploy
