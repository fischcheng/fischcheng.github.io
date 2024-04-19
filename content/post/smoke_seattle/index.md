---
title: 'Wildfire Smoke is Choking Seattle: visualizing using Altair'
authors:
- admin
date: "2018-08-22T11:07:23"

tags:
- wildfires
- smoke
- seattle smoke
- PM2.5
- AQI
categories:
- data
featured: false
draft: false

math: true
# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  caption: 'Image credit: [**MyNorthwest**](http://mynorthwest.com/)'
  focal_point: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

Last week was tough for everyone in Seattle because of the bad air quality. Sadly, it was nothing compared to what we are going through this week. The Air Quality Index (AQI) reached well above 150 since Monday, which is roughly equal to "[smoking seven cigarettes in a day](https://www.vox.com/energy-and-environment/2018/8/21/17761908/seattle-air-quality-haze-smoke-wildfire-health)." The hazardous smoke is attributed to the surrounding massive wildfires, and the onshore winds to the rescue are expected to arrive first in the Wednesday evening. 

Here is the experimental smoke forecast from NWS' tweet on Tuesday:

{{< twitter user="NWSSeattle" id="1031999007864705024" >}}


News articles seem to be obsessed with the AQI number. When I tried plotting out the AQI levels in Seattle in the past week, I realized that the AQI is unitless, but the data I found has a typical aerosol measurement unit $\mu g/m^{3}$. So I dived deeper to find out more details about AQI, which I'd like to explain below.

According to the EPA website, the AQI focuses on health effects, not strictly bounded to particle concentration. An AQI value of 100 corresponds to the national air quality standard for that pollutant, and EPA currently published AQI for four pollutants, *ground level ozone, particle pollution, carbon monoxide, and sulfur dioxide.* The number we saw in the news articles is for the particle pollution, specifically the **PM2.5**. Because the AQI 100 depends on the national standard, the AQI scale varies between countries and the regulatory agencies. Here is the current scale published by EPA:

{{< figure src="/img/aqi_scale.png" title="https://airnow.gov/index.cfm?action=aqibasics.aqi" >}}

However, the conversion between AQI and particle concentration is not linear. It is also not clear to me, what the averaging period of the reported AQI number is. After some googling, I found a [chart](https://www.epa.gov/sites/production/files/2014-05/documents/zell-aqi.pdf) published by EPA, but the conversion is based on the 24-hr average of particle concentration. 

The station-based PM2.5 data is harder to find than I expected. Kudos to the Puget Sound Clean Air Agency for providing a fantastic online [graphing tool](https://secure.pscleanair.org/AirGraphing//AirGraphing) and the downloadable data. Below I plotted the PM2.5 concentration in the past 10 days using Altair, a declarative statistical visualization library for Python, based on Vega and Vega-Lite.

<iframe id="altairchart"
    src="/img/AQI_0810_0822_24hrs.html" width=850 height=400 
    scrolling="no" frameborder="no">
</iframe>

Last Wednesday, the 24hrs-averaged PM2.5 concentration reached 95.4 $\mu g/m^{3}$, which is at the *Unhealthy* level. Yesterday the PM2.5 peaked at 154.9 $\mu g/m^{3}$, which is classified *Very Unhealthy*. Fortunately, the index seems to be declining in the past 24 hours. 


---

Walk-through of the plot: 

1. Clean up the dataframe: Altair takes in dataframes as data source. I changed the dtypes and the name of my two columns. One limitation is that Altair doesn't recognize the index. So anything you want to plot need to be in columns (use reset_index)

2.  Define the AQI levels as a dataframe `source`, set the legend and corresponding colors and plot the rectangles using: `alt.Chart(source).mark_rect()`

3. The line plot of PM2.5  with vertical line and circle while mouse hovering is composed of five elements (or layers): selectors, rule, line, point and text. This is adapted from [one of the examples](https://altair-viz.github.io/gallery/multiline_tooltip.html) in the Altair gallery.

4. Combine the line plot and the rectengle, simply `(rect+layer).configure_axis(grid=False)`


To my knowledge, the interactive plots you've seen on the Internet mostly involve javascript. Altair is no exception. It's a wrapper that translates your python commands to [Vega-lite/Vega](https://vega.github.io/vega-lite/)-readable json objects. I really like the idea of "visualization grammar" that divides visualization into several building blocks. Vega/Vega-lite can take json objects and create rich interactive visualizations. I've been following Altair for quite a while, but only recently I decided to give it a spin. It's my first plot using Altair. I'll share more thoughts about Altair in future posts.

{{< gist fischcheng f5942f05606f58c4a42a6049922ff994 >}}
