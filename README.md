## hexo-theme-even

![even](http://7xqvel.com1.z0.glb.clouddn.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-03-07%20%E4%B8%8A%E5%8D%8810.07.04.png?imageView/3/w/600)

### 安装
```
$ hexo init blog
$ cd blog
$ npm install
$ npm install --save hexo-renderer-jade hexo-generator-feed hexo-generator-sitemap hexo-browsersync hexo-generator-archive
$ cd themes/
$ git clone https://github.com/ahonn/hexo-theme-even
```

### 使用

#### 启用主题
修改 `_config.yml` 中的 `theme` 配置项为 `even`

#### 首页
- 设置首页显示文章数：

修改 `_config.yml` 中的 `per_page` 配置项为你想要的首页文章数量

#### 归档
- 设置归档每页显示文章数

在 `_config.yml` 中添加：
```
# Generator-archive  需要 hexo-generator-archive
archive_generator:
  per_page: 20  # Archive 每页文章数，参数为 0 时不分页
  yearly: false
  monthly: false
  daily: false

```

#### 标签
在 `theme/even/_config.yml` 中启用 `menu` 的 `Tags` 项：
```
# navbar
menu:
  Home: /
  Archives: /archives/
  Tags: /tags/    # 启用 Tags
  About: /about/
```

并在 `source` 下创建 `tags` 文件夹，并在该目录下创建 `index.md`:
```
layout: tags
---
```

### 关于
在 `source` 下创建 `about` 文件夹，并在该目录下创建 `index.md`, 该 md 文件中的内容将在 about 页显示:
```
layout: about
---
# about you
```

#### 评论
在 `theme/even/_config.yml` 中：
```
# Duoshuo
duoshuo_shortname:  your duoshuo shortname

# Disqus
disqus_shortname: your disqus shortname

```
当两个 ID 都存在时，默认启用 Disqus

#### 统计
在 `theme/even/_config.yml` 中：
```
# Baidu Analytics
# baidu_analytics: your baidu analytics

# Google Analytics
google_analytics: your google analytics

```

#### 社交
在 `theme/even/_config.yml` 中：
```
# Social links
social:
  github: your github url
  twitter: your twitter url
  weibo: your weibo url

```
