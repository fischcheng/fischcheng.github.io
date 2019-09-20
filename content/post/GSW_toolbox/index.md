---
title: 'Gibbs SeaWater Oceanographic Package for Python'
summary: Example of using Gibbs SeaWater Python pacakge
authors:
- admin
tags:
- pythone
- gsw
- seawater
date: "2017-02-05T00:42:30Z"
lastmod:  "2017-02-05T00:05:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  placement: 2
  caption: 'Image credit: [**Unsplash**](https://pbs.twimg.com/media/CGkZIOiWgAAoEo_.jpg)'
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

Recently, I'm looking into the Meridional Heat Transport across the 35$^{\circ}$S in our high-resolution CCSM simulation following [Dong et al. 2011](http://journals.ametsoc.org/doi/abs/10.1175/2011JPO4549.1). To calculate the heat transport, the following formula is used:

\begin{equation}
\int \rho C_{p}v\theta dx dz
\end{equation}

The tricky part is whether one should use temporal and spatial-varying values of $C_{p}$ (seawater heat capacity) and $\rho$ (seawater density). Since density and heat capacity are not among the standard outputs, I went on looking for some standard libraries to calculate them using the fields I have: temperature, pressure, and salinity. Soon, I found the Python version of **Gibbs SeaWater Oceanographic Package**.  

The **Gibbs-SeaWater (GSW) Oceanographic Toolbox** contains the TEOS-10 subroutines for evaluating the thermodynamic properties of pure water (using IAPWS-09) and seawater (using IAPWS-08 for the saline part). You can download the toolbox in differnt languages through this [link](http://www.teos-10.org/software.htm#1). Also can be found are the abundant [documentations](http://www.teos-10.org/pubs/gsw/html/gsw_contents.html). The [python version](https://github.com/TEOS-10/python-gsw) can be easily installed through the standard pip channel, simply type `pip install gsw`. 

So far, I used several functions:

* gsw.p_from_z(depth,latitude): caclculate in situ pressure (in dbar) from depth (in meter)
* gsw.CT_from_pt(Salinity,Potential_Temperature): convert potential temperature (CCSM output) to conservative emperature
* gsw.t_from_CT(Salinity,Conservative_Temperature,Pressure): convert conservative temperature to in situ temperature
* gsw.rho_t_exact(salinity,temperature,pressure): calculate seawater density from field variables 
* gsw.cp_t_exact(salinity,temperature,pressure): calculate the heat capacity of seawater from field variables

For any physical oceanographers, the temperature, salinity and pressure trio cannot be missed. Considering the compressibility, potential temperature and potential density are usually introduced next. But, I don't recall I have ever heard of **Conservative Temperature**. It struck me as the first time I learned about potential temperature. 

Potential Temperature ($\theta$) and Conservative Temperature ($\Theta$) are actually not that different. They are defined similarly involving the thought experiment that adiabatically (no heating) bringing the deep water to the sea surface (p=0). The temperature of the fluid parcel after the procedure is the Potential Temperature, and the parcel has the enthalpy defined as “Potential Enthalpy”. Dividing the “Potential Enthalpy” by the fixed “heat capacity” ($c_{p}^{0}=3991.867 [JKg^{-1}K^{-1}]$) yields the Conservative Temperature. $\Theta$ better represents the “heat content” of seawater and because $\Theta$ is almost a perfectly conservative variable, the meridional “heat” flux is very accurately given by the meridional flux of $\Theta$ (as opposed to the meridional flux of $\theta$). 

ref: [getting started with TEOS-10 and the GSW Oceanographic Toolbox](http://www.teos-10.org/pubs/Getting_Started.pdf)
