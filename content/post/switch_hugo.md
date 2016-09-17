+++
date = "2016-09-14T01:16:30-05:00"
math = false
draft = false
tags = ["hugo","blog","pelican"]
title = "Switch from Pelican to Hugo"
image = "http://duncanlock.net/images/posts/how-i-built-this-website-using-pelican-part-1-setup/pelecanus-occidentalis-diagram.png"
imgurl=true

+++

Being a big fan of all things Python, I built the last two incarnations of this site with Pelican. I even went to the length to set up a Travis CI to automatically build and deploy to GitHub pages. That was the beginning of the summer and only two new posts ever since. 

Recently, my boss has brought up the topic of building a group website. Also, there is a joint-project website needs to be done. Most other groups in the school have their group website, mostly hosted by Weebly, Wordpress or Wix. Those website services certainly have pros. For one, a Weebly site can easily allow multiple contributors. But most customization and advanced features are usually not free. 

So, I shared my experience of hosting a static site on Github pages and showed off my Pelican-powered website. By generating your own website, hosted by some popular cloud services (i.e. Amazon S3 and Github), one has full control to the contents and styles. All other responsive features such as site analytics and commenting can be achieved by integrating with existed online services. 


### Static site generators ###

Options are plenty, to name a few, Jekyll, Octopress, Pelican, Middleman, and Hugo. They were written in different languages (Ruby, JavaScript, Python and Go, etc.) but serve the same goal -- construct the bare bone of a website and render the contents to the publishable HTML pages. 

Not every site generators were created equal. Folks from different languages tend to choose the one they are familiar with. That was why I used Pelican initially. For the time-being, I realized that Pelican community is not very active, and theme options seems a bit thin. Jekyll is more matured, and there are already numerous professional-like themes available. However, it is Hugo that caught my eyes.

Hugo has certainly attracted many people from Jekyll. The binary itself is written in Go, and no other dependencies are necessary. It renders Markdown file to HTML really fast (we are talking about millisecond here.) Its structure makes switching between themes and customization overwriting the chosen theme super easy. Also, Hugo was the name I had during the 7-day intensive Spanish program that I completed in the past summer.

![banner](https://tbd.kaitoy.xyz/images/hugo-logo.png "hugo")

### Hugo workflow ###

Let me walk you through the basics of building a Hugo-powered website. For more details, readers are referred to the official Hugo [quickstart guide](https://gohugo.io/overview/quickstart/)

1. Install Hugo binary: for OS X (and the future Mac OS) users, it's recommended to do it through homebrew, just like for most open-source software.

		brew install hugo

2. Create a new site under the desired root directory:

		hugo new site sitename
		
3. The generated directory have the following layout:
 
		.
		|-- archetypes
		|-- config.toml
		|-- content
		|-- data
		|-- layouts
		`-- static

		5 directories, 1 file

4. Create new posts under the content folder:

		hugo new post/postname.md
		
5. `config.toml` is the key configuration file to let Hugo know how to render the contents. 
6. Pick a theme from [here](https://themes.gohugo.io/) or build your own. To apply a theme, one needs to create a `themes` folder under the root, and `git clone` or make a new-theme directory under this folder. Then switching themes can be achieved by adding a line in `config.toml` file like this `theme = "hugo-academic"`, or tell hugo which theme to build with using this command `hugo server --theme=hugo_theme_name`

7. Check the results by running a virtual server, which automatically listens to any changes you make and render HTML in real time. Go to [http://localhost:1313/](http://localhost:1313/) to see your shiny new site in action.

		hugo server --watch
		
8. Build the pages by invoking `hugo`. Generated HTML pages will by default be stored under `public` folder. It is this folder you need to find a home to host. 


### comments and tips

* Posts are usually written in Markdown, though it also supports other markup languages. Markdown is really elegant and easy to use, definitely worth picking up.
* The equivalent of *extension* in Hugo is *shortcodes*, which are stored under `layout/shortcodes` directory. These pre-defined snippets can allow site-owner to embed Youtube, Vimeo players and individual tweet into their posts.
* Most themes support *Disqus* for commenting or *google-analytic* for analyzing website usage. 
* The format of metadata in the markdown files might be different from those using other site-generators. So, migrating old posts to Hugo needs some works (could be easily down with some simple parsing scripts.)
* Add customized CSS stylesheet under `static` to overwrite settings in the chosen theme. 


