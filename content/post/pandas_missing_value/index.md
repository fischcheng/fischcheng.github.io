---
title: "Fill in the missing data using Python pandas"
summary: Using interpolation of neighboring points to fill the blank
authors:
- admin
tags:
- python
- pandas
- timeseries
date: "2017-02-13T00:42:30Z"
lastmod: "2017-02-13T05:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 2
  caption: 'Image credit: [**Unsplash**](http://pandas.pydata.org/_static/pandas_logo.png)'
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

One of the many advantages of Python is its abundant and often powerful Libraries. For my research, besides plotting maps, I often play with time series. When it comes to manipulating and plotting time series, no other tools can beat python pandas. 

>pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.


At the core of Pandas are the data structures: *Series*, *DataFrame* and *Panel*. The ones I used the most are the first two. A *Series* is an array labeled with timestamps, and a *DataFrame* consists of many *Series*. In a real-world use case, I use pandas to generate a range of time-axis, which is then attached to my Agulhas leakage time-series. After doing that, the value at a specific timestep can be easily retrieved by calling `Series['timestamp'].` And to plot the whole time series is as simple as `Series.plot().` 

For a *DataFrame*, to see the key statistics of a *DataFrame* with many columns, simply use `DataFrame.describe()`. A table with mean, standard deviation, counts, and percentiles will then pop up. To compare multiple time series visually, naively put `DataFrame.plot().` 


#### Working with missing data

Recently, I am calculating the Atlantic Ocean Heat Content (OHC). 

```python
#headers=['date','OHC2000','OHC300','OHC700']
OHC_multilevels=DataFrame.from_csv('OHC_HRC07_1951-2002.csv')  # If it's pandas generated, this is much easier.
OHC_multilevels.plot()
```

{{< figure src="/img/output_32_1.png" title="Atlantic OHC in multiple layers 1951-2002" width="600">}}

Obviously, something fishy happened near 1952 and again in 1971. Several months have values close to zero, which is unlikely. Going back to the data, I confirmed that the temperature and salinity fields of those months are missing. To clean up the time series, I first assigned `None` to those months, and interpolate linearly using the neighboring months. Three time series in the same *DataFrame* are processed using following two lines. 

```python
OHC_multilevels[OHC_multilevels<100]=None
OHC_multilevels.interpolate().plot()
```

{{< figure src="/img/output_33_1.png" title="filled missing data with linear interpolation" width="600">}}

This is just a glimpse of the awesomness of pandas. More details can be found in the [official documentation](http://pandas.pydata.org/pandas-docs/stable/overview.html). 


