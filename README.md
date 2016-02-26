## hexo-theme-even

![even](http://7xqvel.com1.z0.glb.clouddn.com/hexo-theme-even.png?imageView/3/w/600)

修改自 [apollo](https://github.com/pinggod/hexo-theme-apollo)

### 安装
```
$ hexo init blog
$ cd blog
$ npm install
$ npm install --save hexo-renderer-jade hexo-generator-feed hexo-generator-sitemap hexo-browsersync hexo-generator-archive
$ cd theme
$ git clone https://github.com/ahonn/hexo-theme-even
```

### 使用

#### 启用主题
修改 `_config.yml` 中的 `theme` 配置项为 `even`

#### 首页文章数
修改 `_config.yml` 中的 `per_page` 配置项为你想要的首页文章数量

#### 归档页文章数
在 `_config.yml` 中添加：
```
# Generator-archive  需要 hexo-generator-archive
archive_generator:
  per_page: 20  # Archive 每页文章数，参数为 0 时不分页
  yearly: false
  monthly: false
  daily: false

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

#### 统计分析
在 `theme/even/_config.yml` 中：
```
# Baidu Analytics
# baidu_analytics: your baidu analytics

# Google Analytics
google_analytics: your google analytics

```

#### 页尾社交 iocn
在 `theme/even/_config.yml` 中：
```
# Social links
social:
  github: your github url
  twitter: your twitter url
  weibo: your weibo url

```
