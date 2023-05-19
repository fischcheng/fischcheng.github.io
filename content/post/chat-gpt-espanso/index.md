---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Supercharging Your Job Hunt with ChatGPT and Espanso"
subtitle: ""
summary: "The meteoric rise of ChatGPT since its launch has made it a hot topic everywhere. An ever-increasing array of courses and articles dedicated to refining the art of prompting with language learning models (LLMs) emerges every second. Can it help to streamline the job-searching process?"
authors: ["Yu Cheng"]
tags: ["AI", "ChatGPT", "Utility", "Espanso"]
categories: ["AI"]
date: 2023-05-18T19:39:48-04:00
lastmod: 2023-05-18T19:39:48-04:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

### Job Searching with ChatGPT
The meteoric rise of ChatGPT since its launch has made it a hot topic everywhere. An ever-increasing array of courses and articles dedicated to refining the art of prompting with language learning models (LLMs) emerges every second.  Here is a great [collection](https://github.com/f/awesome-chatgpt-prompts) of effective prompting snippets that I always come back to. 

Recently, I found myself back in the job market due to a corporate restructure. While thinking about my next move, it struck me - why not harness the prowess of ChatGPT to streamline my job search? A quick google search (I haven't jumped ship to Bing :smirk:) led me to this great video by Jeff Su ([part1](https://www.youtube.com/watch?v=pmnY5V16GSE), [part2](https://www.youtube.com/watch?v=ZXmbb5fPfgk)). 

His insightful videos underscores some facets of job-hunting where ChatGPT excels: 
* Customizing resumes and cover letters according to the job description
* Optimizing resume bullet points using successful templates
* Crafting incisive questions for the company/interviewers
* Drafting personalized LinkedIn messages to secure coffee chats
* Interview preparation (compiling prepared questions and answers)
* Composing impactful 'Thank You' emails
* Negotiating job offers

Given that my job hunt has been progressing at a slower pace than I'd like, this post will focus on the utilization of ChatGPT in tailoring cover letters and resumes. Moreover, I will be discussing how Espanso can expedite these complex prompting steps.

### Use Espanso to speed things up
The intricate prompting steps mainly comprise:
* Assigning an identity to ChatGPT - think of a resume writing maestro with two decades of experience, or a seasoned tech recruiter, etc.
* Providing comprehensive context, summarizing the previous step's output, and incorporating it into the next prompt.
* Constraining the output format, for instance, into a predefined table.
* Specifically instructing ChatGPT to refrain from fabricating information.

It wasn't long before I realized that repeatedly typing the same prompts was anything but fun. That's when [`Espanso`](https://espanso.org), a tool I'd previously utilized, sprung to mind. Espanso is an open-source text expander. Think of it as an auto-complete feature for modern IDEs that you can use anywhere you can type.


#### Getting Started with Espanso
1. Download `Espanso` binary [here](https://espanso.org/install/), follow the setup instructions and provide necessary permisions. 
2. In terminal, `espanso status` will show if `espanso` is running in the background, or check the icon in the status bar. 
3. A simple example and some pre-built keywords `:espanso` will automatically change into `Hi there!`
4. To modify Espanso configuration and add more keywords and match rules, enter `espanso path` to locate the configuration folder.
5. The `configuration folder`, something like `/Users/<username>/Library/Application\ Support/espanso` (Mac for example), contains two subfolders, `config/default.yml` and `match/base.yml`
> * The files contained in the match directory define WHAT Espanso should do. In other words, this is where you should specify all the custom snippets and actions (aka Matches). 
> * The files contained in the config directory define HOW Espanso should perform its expansions. In other words, this is were you should specify all Espanso's parameters and options. 
6. Whenever you alter the configuration, remember to use `espanso restart` to ensure the changes are active. 
7. Press `Alt + Space` (or `Opt + Space` for Mac) to pull up the search bar for available keywords.

You can find more details [here](https://espanso.org/docs/get-started/).

#### Sample triggers
Here are some of my Espanso `match` rules specifically for ChatGPT. I’ve bracketed the job description and resume since they frequently need adjusting to fit specific job requirements.  *The "|" allows multiple lines to replace when setting the matching rules.* 

```yaml
matches:
  # Simple text replacement
  - trigger: ":jdsum"
    replace: |
    Based on the job description, what are the biggest challenge for the position will face day-to-day. 
    Please see quoted part between brackets for the job description. 
    {job description}
  - trigger: ":jdskills"
    replace: "Based on the job description, List out the necessary skills by categories into a table."
  - trigger: ":covergrab"
    replace: |
    "Based on the resume posted below. {resume} 
    You are currently working as a Data Scientist at a startup with 5 years of inter-disciplinary experience and you would love to apply for the position based on the job description.
    Write an attention-grabbing hook for you cover letter that highlights your experience and qualifications in a way that shows you empathize and can successfully take on the challenges of the data scientist role.
    
    Consider incorporating specific examples of how you've tackled these challenges in your past works and explore creative ways to express your enthusiasm for the opportunity. Keep your hook within 100 words."
  - trigger: ":coverall"
    replace: |
    "Incorporate the attention grabbing hook above, and compose a cover letter under 300 words. 
    Please do not make up information, and focus on the enthusiasm of the opportunity."
```

Hope these help! Stay commited, stay positive!