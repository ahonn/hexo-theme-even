## Document

### Directory
- [Config](#Config)
  + [Set the home page article number](#Set_the_home_page_article_number)
  + [Set the archive page number](#Set_the_archive_page_number)
  + [Add categories page](#Add_categories_page)
  + [Add tags page](#Add_tags_page)
  + [Add about page](#Add_about_page)
  + [Open/close the article directory sidebar](#Open/close_the_article_directory_sidebar)
  + [Modify the home page article preview location](#Modify_the_home_page_article_preview_location)
  + [Modify the site icon](#Modify_the_site_icon)
  + [Modify the site set up time](#Modify_the_site_set_up_time)
  + [Modify the social links](#Modify_the_social_links)
- [Third party service](#Third_party_service)
  + [Add analytics](#Add_analytics)
  + [Add comments](#Add_comments)

Site config: `yourblog/_config.yml`

Theme config: `yourblog/themes/even/_config.yml`

**In order to update do not change the existing `_config.yml` file in theme, the theme of the configuration file named `_config.yml.sample`. Use the theme for the first time will need to create the `_config.yml` file and copy the contents of the `_config.yml.sample` in the `_config.yml`.**

### Config

#### Set the home page article number
Modify `per_page` items of site config:
```
# Pagination
## Set per_page to 0 to disable pagination
per_page: 10    # home page article number
pagination_dir: page
```

#### Set the archive page number
Add `archive_generator` items in site config:

```
# Generator-archive (your should install hexo-generator-archive)
archive_generator:
  per_page: 20  # archive page number, close if it is 0
  yearly: false
  monthly: false
  daily: false
```

#### Add categories page 
- Create page
Run `hexo new page categories`

- Set the page layout
Add in `source/categories/index.md`

```
---
title: categories
layout: categories   
---
```

- Modify menu
Modify `Menu` items in theme config:

```
menu:
  Home: /
  Archives: /archives/
  Categories: /categories/   # Add Categories
```

#### Add tags page 
- Create page
Run `hexo new page tags`

- Set the page layout
Add in `source/tags/index.md`

```
---
title: tag
layout: tags   
---
```

- Modify menu
Modify `Menu` items in theme config:

```
menu:
  Home: /
  Archives: /archives/
  Tags: /tags/   # Add tags
```

#### Add about page 
- Create page
Run `hexo new page about`

- Set the page layout
Add in `source/about/index.md`

```
---
title: about
layout: about   
---
```

- Modify menu
Modify `Menu` items in theme config:

```
menu:
  Home: /
  Archives: /archives/
  About: /about/   # Add About 
```

#### Open/close the article directory sidebar

Modify `sidebar` items in theme config(true: open, false: close)

```
# article directory sidebar
sidebar: true
```

#### Modify the home page article preview location
In the article add `<!-- more -->` tag, the contents of the above will be on the home page preview.

Read more of the position will be in the tag.

#### Modify the site icon
Modify `favicon` items in theme config

#### Modify the site set up time
Add `since` items in site config, value of the site set up time

```
# Site
title: Ahonn
subtitle:
description:
author: ahonn
language:
timezone:
since: 2013  # Add site set up time 
```

#### Modify the social linkss
Modify `social` items in theme config, display when the value not null

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

### Third party service

#### Add analytics

#####  Baidu analytics
Modify `baidu_analytics` items to use baidu analytics in theme config, the value is your baidu analytics id


##### Google analytics
Modify `google_analytics` items to use google analytics in theme config, the value is your google analytics id

```
# Baidu Analytics
baidu_analytics: your baidu analytics id
# Google Analytics
google_analytics: your google analytics id
```

#### Add comments

##### Use duoshou comments 

Modify `duoshuo_shortname` items, value is your duoshuo id.

##### Use disqus comments

Modify `disqus_shortname` items, value is your disqus id.

```
# Duoshuo
duoshuo_shortname: your duoshuo id
# Disqus
# disqus_shortname: your disqus id
```

**Use disques comments when use that both**

##### Comments setting

Modify `comments` items:

Open the post page comments when `comments.post` is true.

Open the about page comments when `comments.about` is true.


