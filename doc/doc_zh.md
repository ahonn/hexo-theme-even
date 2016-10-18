## 中文文档

### 目录
- [主题配置](#主题配置)
  + [修改博客主题色](#修改博客主题色)
  + [修改文章内锚点样式](#修改文章内锚点样式)
  + [设置首页文章数](#设置首页文章数)
  + [设置归档页文章数](#设置归档页文章数)
  + [设置标签页文章数](#设置标签页文章数)
  + [添加分类页](#添加分类页)
  + [添加标签页](#添加标签页)
  + [添加关于页](#添加关于页)
  + [添加自定义页面](#添加自定义页面)
  + [开启/关闭文章侧栏目录](#开启/关闭文章侧栏目录)
  + [修改首页文章预览位置](#修改首页文章预览位置)
  + [修改站点图标](#修改站点图标)
  + [修改站点建立时间](#修改站点建立时间)
  + [修改社交链接](#社交链接)
- [第三方服务](#第三方服务)
  + [添加统计分析](#添加统计分析)
  + [添加评论服务](#添加评论服务)

站点配置文件指博客根目录下的 `_config.yml`

主题配置文件指主题目录下的 `_config.yml`

### 主题配置

#### 修改博客主题色
Even 主题自带以上 5 种主题色，分别是：
- Default: <span style="background-color: #c05b4d;">#c05b4d</span>
- Mint Green: <span style="background-color: #16982B;">#16982B</span>
- Cobalt Blue: <span style="background-color: #0047AB;">#0047AB</span>
- Hot Pink: <span style="background-color: #FF69B4;">#FF69B4</span>
- Dark Violet: <span style="background-color: #9932CC;">#9932CC</span>

修改主题配置文件中的 `theme.color` 项选择主题色：

```
# theme color
# Default | Mint Green | Cobalt Blue | Hot Pink | Dark Violet
theme:
  color: Default  # 默认配色
```
##### 自定义主题颜色
修改主题目录下 `source/css/_global.scss` 中的 `$theme-color-map` 添加颜色：

```
$theme-color-map: (
  'Default': #c05b4d #f8f5ec,
  'Mint Green': #16982B #f5f5f5,
  'Cobalt Blue': #0047AB #f0f2f5,
  'Hot Pink': #FF69B4 #f8f5f5,
  'Dark Violet': #9932CC #f5f4fa
) !default;
```

键即为配置文件中的 `theme.color` 的值，第一个颜色为全局的主题颜色，第二个颜色为代码块的背景颜色（可根据主题颜色计算）。

添加后，修改主题配置文件中的 `theme.color` 项选择自定义的主题色即可。

#### 修改文章内锚点样式
默认文章内的标题锚点为 `§`，可通过主题配置文件修改

```
theme:
  headerlink: "§"  # 可修改为 "#" 或者 "" 等
```

#### 设置首页文章数
修改站点配置文件中的 `per_page` 项：
```
# Pagination
## Set per_page to 0 to disable pagination
per_page: 10    # 首页文章数
pagination_dir: page
```

#### 设置归档页文章数
在站点根目录下执行安装 `hexo-generator-archive`：
```
npm install hexo-generator-archive --save
```

在站点配置文件下添加 `archive_generator` 项设置归档页文章数：

```
# Generator-archive
archive_generator:
  per_page: 20  # 归档页文章数, 参数为 0 时不分页
  yearly: false
  monthly: false
  daily: false
```

#### 设置标签页文章数
在站点根目录下执行安装 `hexo-generator-tag`:
```
npm install hexo-generator-tag --save
```

在站点配置文件下添加 `tag_generator` 项：
```
# Generator-tag
tag_generator:
  per_page: 10 # 标签页文章数, 参数为 0 时不分页
```

#### 添加分类页
- 新建页面

在博客根目录下：
```
hexo new page categories
```
- 设置页面模版

在新建的 `source/categories/index.md` 中添加：
```
---
title: categories
layout: categories   # 添加使用 categories 模版
---
```
- 修改菜单

修改主题配置文件中的 `Menu` 项：
```
menu:
  Home: /
  Archives: /archives/
  Categories: /categories/   # 添加 Categories 选项
```

#### 添加标签页
- 新建页面

在博客根目录下：
```
hexo new page tags
```
- 设置页面模版

在新建的 `source/tags/index.md` 中添加：
```
---
title: tags
layout: tags   # 添加使用 tags 模版
---
```
- 修改菜单

修改主题配置文件中的 `Menu` 项：
```
menu:
  Home: /
  Archives: /archives/
  Tags: /tags/   # 添加 Tags 选项
```

#### 添加关于页
- 新建页面

在博客根目录下：
```
hexo new page about
```
- 设置页面模版

在新建的 `source/about/index.md` 中添加：
```
---
title: about
layout: about   # 添加使用 about 模版
---
```
- 修改菜单

修改主题配置文件中的 `Menu` 项：
```
menu:
  Home: /
  Archives: /archives/
  About: /about/   # 添加 About 选项
```

#### 添加自定义页面
- 新建页面

在博客根目录下：
```
hexo new page xxxx
```
- 设置页面模版

在新建的 `source/xxxx/index.md` 中添加：
```
---
title: xxxx
layout: page   # 添加使用 page 模版
---
```
- 修改菜单

在主题配置文件中的 `Menu` 项中添加：
```
menu:
  Home: /
  Archives: /archives/
  About: /about/ 
  xxxx: /xxxx/  # 确保与 source/xxxx/index.md 文件中的 title 一直
```

#### 开启/关闭文章侧栏目录

修改主题配置文件中的 `sidebar` 项，true 为开启，false 为关闭

```
# article directory sidebar
sidebar: true
```

#### 修改首页文章预览位置
在文章中添加 `<!-- more -->` 标记，标记上方的内容将会在首页显示。

即 Read more 的位置将会在标记处。

#### 修改站点图标
修改主题配置文件中的 `favicon` 项

#### 修改站点建立时间
在站点配置文件中添加 `since` 项，值为站点建立年份
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

#### 修改社交链接
修改主题配置文件中的 `social` 项，当值为空时不显示

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

##### 开启百度统计

修改主题配置文件中的 `baidu_analytics` 项为你的 ID

##### 开启谷歌分析

修改主题配置文件中的 `google_analytics` 项为你的 ID
```
# Baidu Analytics
baidu_analytics: 9e0cbea7d3319c6c94c71dfb93c151b8
# Google Analytics
google_analytics: UA-74273646-1
```

#### 添加评论服务

##### 使用多说评论

修改主题配置文件中的 `duoshuo_shortname` 项为你的 ID

##### 使用 Disqus 评论

修改主题配置文件中的 `disqus_shortname` 项为你的 ID

```
# Duoshuo
duoshuo_shortname: ahonn
# Disqus
# disqus_shortname: ahonn
```

**同时启用时默认使用 Disqus**

##### 评论设置

修改主题配置文件中的 `comments` 项

`comments.post` 项为文章页评论

`comments.about` 项为关于页评论