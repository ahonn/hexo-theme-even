# hexo-theme-even
A super simple theme for Hexo(在作者基础上增加了一些小功能)

[![GitHub stars](https://img.shields.io/github/stars/ahonn/hexo-theme-even.svg)](https://github.com/ahonn/hexo-theme-even/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/ahonn/hexo-theme-even.svg)](https://github.com/ahonn/hexo-theme-even/network)
[![GitHub issues](https://img.shields.io/github/issues/ahonn/hexo-theme-even.svg)](https://github.com/ahonn/hexo-theme-even/issues)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/ahonn/hexo-theme-even/master/LICENSE)

## Demo
[原作者在线预览 Demo](http://ahonn.github.io/)
[现有版本](http://blog.flywinky.top)

## Feature
- 自定义样式
- 支持 Fancybox
- 版权信息，自定义许可协议
- 文章打赏，添加二维码
- 增加来必力评论插件
- 增加站内搜索
- 博文可设置密码

## Screenshots
![even-screenshots](http://ouv0frko5.bkt.clouddn.com/eerqv.jpg)

## Installation
```
$ npm install hexo-renderer-scss --save
$ git clone https://github.com/ahonn/hexo-theme-even themes/even
```

修改配置文件中的 `theme` 字段为 `even`:

```
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: even
```

更多主题设置，查看 [Document](https://github.com/ahonn/hexo-theme-even/wiki)

## 站内搜索

安装主题后,在source新建search文件,并添加index.md,其内容如下

```
<section>
        <span class="h1"><a href="#">站内搜索</a></span>
        <div id="site_search">
        <input type="text" id="local-search-input" style="width: 200px;" results="0"/>
        <div id="local-search-result"></div>
        </div>
</section>
```

之后在_config.yml启用站内搜索,至于各种样式可以根据下面流程设置自己喜欢的

[具体实现介绍](https://blog.flywinky.top/2017/07/20/%E5%A6%82%E4%BD%95%E5%AE%9E%E7%8E%B0%E7%AB%99%E5%86%85%E6%90%9C%E7%B4%A2/)

## 博文加密

[安装这个插件就好了](https://github.com/MikeCoder/hexo-blog-encrypt/blob/master/ReadMe.zh.md)

## 关于社交图标自定义方法

打开[阿里巴巴矢量库](http://www.iconfont.cn/)

新建自己的项目,并搜索需要的图标,生成自己的代码

替换下面路径里的相应代码

```
source\css\_partial\_iconfont.scss
```

并修改相对应的图标代码部分,例如下面:

```
.icon-github:before {
  content: "\e606"; #修改为你生成的代号
  position: relative;
  top: -3px;
}
```

[详细介绍](https://www.cnblogs.com/loveyunk/p/6222527.html)