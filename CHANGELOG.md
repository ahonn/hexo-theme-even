## 2016-11-27
- 添加 `bin/install` 脚本，完成主题的初始化。（复制主题配置文件与自定义样式文件，以及安装必要的 hexo-render 插件）
- 添加主题自定义样式模板文件 `source/css/_costom.sample.scss`。（使用 `bin/install` 根据模板生成 `source/css/_costom.scss` 可自定义主题样式）
- 忽略用户的主题配置文件 `_config.yml` 与自定义样式文件 `source/css/_costom.scss`，方便主题更新。
