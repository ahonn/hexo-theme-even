## 中文文档

### 目录
- [主题配置](#主题配置)
  + [首页文章数](#首页文章数)
  + [归档页文章数](#归档页文章数)
  + [标签页](#标签页)
  + [关于页](#关于页)
  + [站点图标](#站点图标)
  + [站点建立时间](#站点建立时间)
  + [友链](#友链)
  + [社交链接](#社交链接)
- [第三方服务](#第三方服务)
  + [统计分析](#统计分析)
  + [评论](#评论)

### 主题配置
站点配置文件指博客根目录下的 `_config.yml`

主题配置文件指 even 目录下的 `_config.yml`

#### 首页文章数
修改站点配置文件中的 per_page 项：
```
# Pagination
## Set per_page to 0 to disable pagination
per_page: 10    # 首页文章数
pagination_dir: page
```

#### 归档页文章数
在站点配置文件下添加：
```
# Generator-archive  需要 hexo-generator-archive
archive_generator:
  per_page: 20  # 归档页文章数, 参数为 0 时不分页
  yearly: false
  monthly: false
  daily: false
```

#### 标签页
- 新建页面

在博客根目录下：
```
hexo new page tags
```
- 设置页面模版

在新建的 source/tags/index.md 中添加：
```
---
title: tags
date: yyyy-mm-dd hh:mm:ss
layout: tags   # 添加使用 tags 模版
---
```
- 修改菜单

修改主题配置文件中的 Menu 项：
```
menu:
  Home: /
  Archives: /archives/
  Tags: /tags/   # 添加 Tags 选项
```

#### 关于页
- 新建页面

在博客根目录下：
```
hexo new page about
```
- 设置页面模版

在新建的 source/about/index.md 中添加：
```
---
title: about
date: yyyy-mm-dd hh:mm:ss
layout: about   # 添加使用 about 模版
---
```
- 修改菜单

修改主题配置文件中的 Menu 项：
```
menu:
  Home: /
  Archives: /archives/
  About: /about/   # 添加 About 选项
```

#### 站点图标
修改主题配置文件中的 favicon 项

#### 站点建立时间
在站点配置文件中添加 since 项，值为站点建立年份
```
# Site
title: Ahonn
subtitle:
description:
author: ahonn
language:
timezone:
since: 2013  # 添加 since 项
```

#### 友链
在主题配置文件中的 friends 项下添加友链名称及地址（友链显示在侧边栏中，不开启侧边栏则不显示）
```
# Friends Link
friends:
  ahonn: http://www.ahonn.me
```

#### 社交链接
修改主题配置文件中的 social 项，当值为空时不显示
```
# Social links
social:
  email: mailto:ahonn95@outlook.com
  github: https://github.com/ahonn
  # twitter: your twitter
  # facebook: your facebook
  weibo: http://weibo.com/ahonn
  zhihu: https://www.zhihu.com/people/ahonn
```

### 第三方服务
#### 统计分析
- 开启百度统计

修改主题配置文件中的 baidu_analytics 项为你的 ID

- 开启谷歌分析

修改主题配置文件中的 google_analytics 项为你的 ID
```
# Baidu Analytics
baidu_analytics: 9e0cbea7d3319c6c94c71dfb93c151b8
# Google Analytics
google_analytics: UA-74273646-1
```

#### 评论
- 开启评论

修改主题配置文件中的 comments 项开启评论

comments.post 项为文章页评论

comments.about 项为 About 页评论

- 使用多说评论

修改主题配置文件中的 duoshuo_shortname 项为你的 ID

- 使用 Disqus 评论

修改主题配置文件中的 disqus_shortname 项为你的 ID
```
# Duoshuo
duoshuo_shortname: ahonn
# Disqus
# disqus_shortname: ahonn
```

> 同时启用时默认使用 Disqus
