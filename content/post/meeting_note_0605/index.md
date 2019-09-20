---
title: 'Agulhas Group meeting notes, 2014-06-05'
authors:
- admin
tags:
- AMOC
- trend
- CMIP5
- climate models
- MOCHA
date: "2015-06-05T16:07:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 2
  caption: ''
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

[C. D. Roberts, L. Jackson andD. McNeall, 2014: Is the 2004–2012 reduction of the Atlantic meridional overturning circulation significant?](http://onlinelibrary.wiley.com/doi/10.1002/2014GL059473/abstract)

**What scientific questions are the authors addressing?**

To test the observed (by MOCHA array) 8 year trend (2004-2012, -0.53Sv/yr) of AMOC is significant, in comparison to the 14 CMIP5 models preindustrial control runs.  


**What methods do the authors use to address the questions?**

The existed oberserved timeseries is not long enough, and there is yet no consensus on the magnitude, periodicities, and mechanisms of AMOC variability across different models.

1. Pick out the models with overturning streamfunction diagnostics on the CMIP5 archive (14), indices defined as the maximum streamfunction at the model latitude closest to 26.5N, annual mean taken from Apr-Mar adopted by the RAPID array (why?)
2. Simplely compare distribution of 8yr trends of different models to the observed trend. However, every models seem underestimate the interannual variability of AMOC (Fig2, b,c)
3. Combining the temporal correlation characteristics of AMOC from CMIP5 models with an observational estimate of interannual variability to account for this bias. (using autoregressive moving average model to fit CMIP5 AMOC timeseries, and add the upper limit of observed variability.)  


**What are the authors' main conclusions?**

1. Eight year trends ≤ −0.53 Sv/yr are relatively common in GFDL-CM3 and GFDL-ESM2M, but they are extremely unusual (or out of range) in the other 12 models.
2. Applying modification of observed variability on top of temporal correlation of Model AMOC timeseries, the observed AMOC trend is not significantly different (p > 0.01) from that expected due to internal AMOC variability. (Fig 2, 3)
3. If the AMOC continues to decrease at a rate of −0.53 Sv/yr, it will take a total of 18 yearsbefore the trend is significantly different from all 14 ARMA-based estimates of internal AMOC variability (red line in Figure 3).


**What are the implications of the results?**

1. Authors find that 14 different CMIP5 models underestimate the magnitude of AMOC variability on interannual time scales, which may due to insufficient atmospheric variability on interannual time scales, and the coarse resolution of ocean in CMIP5 simulations.

2. It is not yet possible to distinguish between mechanisms or dominant time scales due to the short length of the existing observational AMOC record. Discriminating between different models and refining estimates of internal AMOC variability require more than one decade of continuous AMOC observations. All this is calling for the consruction of a more powerful observation system, including monitoring water mass properties in the subpolar gyre and similar arrays at additional lattitudes.


**Why did you choose this paper?**
I am digging out materials about AMOC in climate models. 

**Who read this paper?**
Yu Cheng