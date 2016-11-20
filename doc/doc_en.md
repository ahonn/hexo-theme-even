## Document

### CONTENTS
- [Config](#Config)
  + [Set theme color](#Set-theme-color)
  + [Set article anchor](#Set-article-anchor)
  + [Set the home page article number](#Set-the-home-page-article-number)
  + [Set the archive page article number](#Set-the-archive-page-article-number)
  + [Set the tags page article number](#Set-the-tags-page-article-number)
  + [Add categories page](#Add-categories-page)
  + [Add tags page](#Add-tags-page)
  + [Add about page](#Add-about-page)
  + [Add custom page](#Add-custom-page)
  + [Open/close the article directory sidebar](#Open/close-the-article-directory-sidebar)
  + [Modify the home page article preview location](#Modify-the-home-page-article-preview-location)
  + [Modify the site icon](#Modify-the-site-icon)
  + [Modify the site set up time](#Modify-the-site-set-up-time)
  + [Modify the social links](#Modify-the-social-links)
- [Third party service](#Third-party-service)
  + [Add analytics](#Add-analytics)
  + [Add comments](#Add-comments)

Site config: `yourblog/_config.yml`

Theme config: `yourblog/themes/even/_config.yml`

### Config

#### Set theme color
right now, you can custom the theme color!

The theme have five thme color:
- Default: #c05b4d
- Mint Green: #16982B
- Cobalt Blue: #0047AB
- Hot Pink: #FF69B4
- Dark Violet: #9932CC

Modify the `theme.color` item in the theme config could be change theme color
```
# theme color
# Default | Mint Green | Cobalt Blue | Hot Pink | Dark Violet
theme:
  color: Default  # Default Theme Color
```

##### custom youself theme color
Modify `$theme-color-map` in `source/css/_global.scss`:

```
$theme-color-map: (
  'Default': #c05b4d #f8f5ec,
  'Mint Green': #16982B #f5f5f5,
  'Cobalt Blue': #0047AB #f0f2f5,
  'Hot Pink': #FF69B4 #f8f5f5,
  'Dark Violet': #9932CC #f5f4fa
) !default;
```

Just like:

```
'Color name': [theme color] [code block backgroup color]
```

Change `theme.color` item to your color name

#### Set article anchor
The defualt anchor is `§`, can change it in thmem config:

```
theme:
  anchor: "§"  # "#" OR "", etc
```

#### Set the home page article number
Modify `per_page` items of site config:
```
# Pagination
## Set per_page to 0 to disable pagination
per_page: 10    # home page article number
pagination_dir: page
```

#### Set the archive page article number
Install `hexo-generator-archive` in your website:
```
npm install hexo-generator-archive --save
```

Add `archive_generator` items in site config:

```
# Generator-archive
archive_generator:
  per_page: 20  # archive page number, close if it is 0
  yearly: false
  monthly: false
  daily: false
```

#### Set the tags page article number
Install `hexo-generator-tag` in your website:
```
npm install hexo-generator-tag --save
```

Add `tag_generator` items in site config：
```
# Generator-tag
tag_generator:
  per_page: 10 # tags page number, close if it is 0
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

#### Add custom page
- Create page
Run `hexo new page xxxx`

- Set the page layout
Add in `source/xxxx/index.md`

```
---
title: xxxx
layout: page # use page layout   
---
```

- Modify menu
Modify `Menu` items in theme config:

```
menu:
  Home: /
  Archives: /archives/
  xxxx: /xxxx/   # make sure eq title


#### Open/close the article contents sidebar

Modify `sidebar` items in theme config(true: open, false: close)

```
# article contents sidebar
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
  email: your@email.com
  stack-overflow:
  twitter:
  facebook:
  github: 
  weibo: 
  zhihu: 
  rss: /atom.xml
```

### Third party service

#### Add analytics

#####  Baidu analytics
Modify `baidu_analytics` items to use baidu analytics in theme config, the value is your baidu analytics id


##### Google analytics
Modify `google_analytics` items to use google analytics in theme config, the value is your google analytics id

```
## Baidu Analytics
baidu_analytics: Your Baidu Analytics ID
## Google Analytics
google_analytics: Your Google Analytics ID
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


