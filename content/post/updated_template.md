+++
tags = []
highlight = true
date = "2017-02-27T00:28:36-05:00"
title = "Updated Hugo Academic theme to sync the upstream repo"
math = false
summary = "Testing the new features of Hugo-Academic theme..."

[header]
  caption = ""
  image = ""

+++

I just updated the Hugo-Academic theme from the upstream repo. The structure has been greatly changed. Now each section on the `index.html` is a widget. Changing Research Interests and Education is no longer inside the `config.toml`, but the `about.md` as metadata. I also added a Talk widget, and the Project widget now showcase my research in cards. 

Below I would like to try out some new features:

-------

## Emojis!!!
Now the Hugo-Academic theme supports Emojis natively. Check [here](http://www.webpagefx.com/tools/emoji-cheat-sheet/) for a cheat-sheet of available Emojis. 

:smiley:
:sleepy: 
:tennis: 
:thumbsup:
:mahjong:
Tomorrow is Vicky's defense! :date:

-------
## Blockquotes
This is not part of the theme. I updated the custom css file to achieve this effect. 

>We live in a society exquisitely dependent on science and technology, in which hardly anyone knows anything about science and technology. 
>
>**Carl Sagan**

-------
## Syntax highlighting using highlight.js
Python:

```python
from pandas import Series, DataFrame, Panel
import gsw
import scipy.io as sio
fulllist=sorted(glob.glob('/raid60/kirtman/HRC07/ocn/mo_nc4/*.nc'))

months=pd.period_range('1951-01', '2002-12', freq='M') 
OHC300_HRC07=Series(OHC300,index=months)
OHC700_HRC07=Series(OHC700,index=months)
OHC2000_HRC07=Series(OHC2000,index=months)
```

Matlab:

```matlab
MMend=str2num(end_date(6:7)); 
DDend=str2num(end_date(9:10));

for yrid=find(yyy==YYs):find(yyy==YYe)
 if (yrid==find(yyy==YYs))
   mstart=MMs;
 else
   mstart=1;
 end
 if (yrid==find(yyy==YYe))
   mend=MMend;
 else
```

For available languages and styles, check [link](https://highlightjs.org/static/demo/)

------
## Twitter Tweet
{{< tweet 833394043585376256 >}}

------
## Youtube video
{{< youtube GTqicHqhb1A >}}

------
## Alerts
{{% alert note %}}
It's about time to sleep!
{{% /alert %}}

{{% alert warning %}}
Hope this will help you.
{{% /alert %}}

-----
Some more options in the Hugo-Academic [Theme](https://gcushen.github.io/hugo-academic-demo/post/managing-content/). That's all for now. I guess the only thing I missed about Pelican was its plugin to embed ipython notebook cells to the post. Haven't found a hugo-shortcode for that purpose yet. Or maybe a shortcode to embed an Instagram post?

Wow, there is a built-in shortcode for Instagram!

{{< instagram BQ6v1Qlj1vT >}}

