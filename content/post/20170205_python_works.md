+++
date = "2017-02-05T00:42:30-05:00"
math = false
draft = false
tags = ["python","ncl","scripts","galley"]
title = "iPython notebook gallery"
image = "https://www.software.ac.uk/sites/default/files/images/content/jupyter-main-logo.svg"
imgurl= true
+++

Sometimes I got emails requesting codes to plot certain things. Those inquiries remind me that I have an older version of my website on Wordpress.com still up and running. That was an answer to the requirement that every student in RSMAS should have their own websites back in 2014. To fill in the blanks, I listed out some of my python works in Ipython notebooks. 

<!--more-->

Python is a thing that I picked up in the graduate school. I not only use `Python` to visualize model outputs or satellite data but as a shell-script alternative to control my workflow. `Ipython` stands for *Interactive Python*. It was an interactive shell, complementing the original python prompt. The Notebook web-interface was added to `Ipython` project in 2011, and it has evolved into an enormous spin-off project called `Jupyter` in 2014. Such notebooks connect to different *kernels.* There are many kernels compatible with `Ipython/Jupyter`, including `Python` (natürlich!), `Julia`, `R`, and `Haskell`.

I love using Ipython notebooks because I can run code, comment in Markdown and plot inline on the same page. Everything is then easily exported to shareable formats such as pdf, HTML, Latex, even presentation slides. 

Ths description quoted from Jupyter.org:

> The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, machine learning and much more.

In 2013, I participated in a research cruise "Meteor 100/2". On board, I was asked to provide daily Satellite plots as well as plots from RTOFS outputs. I used Python scripts to control the daily procedure to download data, to plot these data with several NCL scripts, then tar and compress them before moving them to DropBox shared-directory, so that the Chief-Scientist on board could receive the latest satellite images, regardless of the pathetic bandwidth of the satellite-based internet. 

{{< figure src="https://ycheng1.files.wordpress.com/2013/10/trac_anim.gif" title="Satellite SST and onboard observed wind-vectors" width="600">}}

Like I said, Ipython Notebooks are easily shareable, in particular through the nbviewer provided by *Jupyter.org*. Below are some links to my early works in the notebook format:

* [Plotting routine for Meteor 100/2](http://nbviewer.jupyter.org/url/www.rsmas.miami.edu/users/ycheng/daily.ipynb)
* [Along-track wind-observation and animation](http://nbviewer.jupyter.org/url/www.rsmas.miami.edu/users/ycheng/track_wind.ipynb)
* [Linear Inverse Modeling data validation, predictability study](http://nbviewer.jupyter.org/url/www.rsmas.miami.edu/users/ycheng/p1_CCSM3.ipynb?create=1)
* [Reduced Gravity model showing equatorial waves](https://github.com/fischcheng/fischcheng.github.io/blob/source/static/notebook/p3.ipynb)

<center>
{{< youtube2 src="jx_bGld1eLM" width="80%">}}
</center>

