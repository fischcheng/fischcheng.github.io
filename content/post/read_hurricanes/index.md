---
title: 'Remove model drift using control run simulations'
authors:
- admin
tags:
- hurricane
- evacuation
- nws
- warning
date: "2016-10-06T00:42:30Z"
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

---


The University will be closed on both Thursday and Friday in preparation for the approaching Hurricane Matthew. Students and faculties were asked to leave RSMAS by 5 pm on Wednesday since wind shutters would completely seal the MSC building. The threat seems imminent; people are freak out -- Publix was like a war zone when I was ordered to pick up some bottled water on my way home.

Last night, Matthew with the maximum sustained wind at 140 mph, was a category 4 hurricane (>130mph). Last time a major hurricane (category 3 and above) made a landfall in the US was back in 2005 (Wilma at 120 mph). I slowly began to understand peoples' reactions.

<center>
<iframe src="https://embed.windytv.com/?25.720,-80.271,6,menu,message,marker" width="750" height="500" frameborder="0"></iframe>
</center>

### More like overreactions?###

Growing up in Taiwan and coming from atmospheric sciences background, I have experienced many typhoons.  Just recently, I visited Taiwan from 9/14 to 9/27. During that short period, three major typhoons (Meranti, Malakas, and Megi) hit the little island. My return flight to the US nearly got canceled -- my wife and I were sitting on the grounded but shaky aircraft for almost an hour. So honestly, I am surprised to see my colleagues' hurricane preparation. 

I mean, it should be like this. General public are aware of the threats and cooperate with the government to evacuate. Schools and companies grant enough time for students and employees to get prepared for the approaching storm. There is no such thing as overpreparation. It's the right attitude facing any threats at such magnitude. Instead, people in Taiwan always blame everything on the Central Weather Bureau and local governments without being sufficiently prepared.

*check out recent typhoons in Taiwan!*
<center>
{{< youtube2 src="-IHZXBgz0yg" width="80%">}}
</center>

<center>
{{< youtube2 src="OmVJGC381XY" width="80%">}}
</center>


### How to read the NWS hurricane warning? ###
The best way to track the latest hurricane forecast is to visit the [national weather service website](http://www.nhc.noaa.gov/#MATTHEW).  I'm no hurricane/typhoon specialist (like I always said, I dived into the ocean when I came to Miami). Thanks to my colleagues, I finally got a grip on reading the NWS hurricane warnings. They are very different from the ones issued by Taiwanese weather bureau, and I would like to share some of my findings below:

{{< figure src="/img/hurricane01.png" title="NWS hurricane warning" >}}

1. Concise punch line on the top (as for the 2 am warning): **...MATTHEW POUNDING PORTIONS OF THE CENTRAL BAHAMAS... ...EXPECTED TO INTENSIFY AS IT APPROACHES FLORIDA...**
2. The essential hurricane statistics on the top-left including location, moving direction and speed, minimum pressure and maximum sustained wind. 
3. For more detailed paragraphs, checked the Public Advisory, Forecast advisory and discussion, and their Spanish versions. Check their official guide on [how to read a public advisory.](http://www.nhc.noaa.gov/help/tcp.shtml) I personally enjoy reading the Forecast advisory. 
4. For the path forecast, check the [Warnings/Cone](http://www.nhc.noaa.gov/refresh/graphics_at4+shtml/034341.shtml?5-daynl#contents). Over 2/3 of chances that the center of the hurricane will stay in the white zone on the map. However, the area it may affect is much broader, considering its rain bands and hurricane force winds. Also there is still 1/3 of chances that the center of the hurricane will be outside that cone. More details can be found [here](http://www.nhc.noaa.gov/aboutcone.shtml).
{{< figure src="/img/hurricane02.png" title="forecast path" >}}

5. For the currently wind affected area, check the [surface wind field plot](http://www.nhc.noaa.gov/refresh/graphics_at4+shtml/034341.shtml?radii#contents). It shows the maximum possible extent of a given wind speed within particular quadrants around the tropical cyclone. By definition, Hurricane force winds exceeds 74mph and Tropical Storm force winds are no less than 39mph, so the later cover a much larger area. 
{{< figure src="/img/hurricane03.png" title="force wind affected area" >}}

6. Now comes to the [force wind speed probabilities.](http://www.nhc.noaa.gov/refresh/graphics_at4+shtml/034341.shtml?tswind120#contents) These plots indicate the cumulative possibility that a specific area will experience winds over a certain threshold. Users can change the cumulative periods (up to 120hrs), and the wind thresholds (tropical storm force, 50knots and hurricane force.)
{{< figure src="/img/hurricane04.png" title="force wind speed probabilities" >}}

7. Rainfall and storm surges are more difficult to predict. But NWS also provides such products. 

### Others
1. I was surprised to see that Matthew reached 140mph last night. However, I realized that NWS takes 1-min average maximum sustained wind to define hurricane intensity. In West Pacific, 10-min average is used instead. So I'm less impressed by Matthew now. But let's check back in 24 hrs since it is predicted to regroup and intensify again before reaching Florida.
2. Interesting read on the differences between watches and warnings:
{{< figure src="/img/hurricane05.png" title="Watches vs Warnings" >}}


References:

1. [NOAA Hurricane Research Devision](http://www.aoml.noaa.gov/hrd/tcfaq/A3.html)
2. [Definition of the NHC Track Forecast Cone](http://www.nhc.noaa.gov/aboutcone.shtml)
3. [Hurricane Preparedness - Watches & Warnings](http://www.nhc.noaa.gov/prepare/wwa.php)
