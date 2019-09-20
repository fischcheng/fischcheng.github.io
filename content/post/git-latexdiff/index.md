---
title:  "Using git-latexdiff to track changes in tex-file graphically"
summary: compare different compiled latex files
authors:
- admin
tags:
- latex
- git
- thesis
date: "2017-02-25T20:13:52Z"
lastmod: "2017-02-26T21:00:30Z"
featured: false
draft: false


# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

It's been a while since I started using `git`. The version control system helps to track changes in computer files and coordinating work on those files among multiple people. Composing a manuscript is nothing unlike developing a program. If multiple authors work on the same manuscript, `git` can be very helpful to avoid conflicts. If you are the only author, `git` can help you to document what has been changed since the last commit or put your advisor's comment in another branch.

I'm a big fan of $\Latex$. It's powerful and elegant. With a given template, one should only focus on the content. However, when it comes to tracking changes, $\Latex$ is a lightyear behind Word. Fortunately, I recently bumped into a program `latexdiff`, which visually tracks changes between $\Latex$ generated pdfs, much like how Word does. Before, I often manually color the lines I changed when sending to my advisor. 

`git-latexdiff` is a wrapper around `git` and `latexdiff`. Instead of manually generating dummy tex files of different names (and also the auxiliary files), `git-latexdiff` can graphically show the differences between various versions of a LaTeX-generated pdf. Below is an example of how I incorporate these tools to my workflow.


### Git basics

* You can turn any folders into *git-tracking* folders by typing the command `git init .` in the targeting folder.
* `git add .`: add all files in the folder to staging
* `git commit`: commit changes to head (the changes are still local)
* These committed changes can then be pushed to a remote repository hosted on GitHub or gitlab.
* `git checkout -b branchname` to create and switch to new branch (`git checkout branchname` to switch after commit if the branch already exists)
* `git status` to check current branch and status
* After you are satisfied with the changes you made in a developing branch, merge back to `master` by `git merge branchname`, assuming the current branch is `master`.
* Many GUI git [clients](https://git-scm.com/download/gui/linux) can save the day if you are not used to command lines. For now, I am using *GitKraken*.

### Track changes

`latexdiff` works like this:

```latex
latexdiff draft.tex revision.tex > diff.tex
```

To compare the difference between first two versions of .tex, a third dummy diff.tex is created, along with many auxiliary files. Check this [link](https://www.sharelatex.com/blog/2013/02/16/using-latexdiff-for-marking-changes-to-tex-documents.html) for better control over `latexdiff`. Using `git-latexdiff`, one can track the differences between the same file on different branches or versions, like this:

```latex
git latexdiff --latexmk --append-context2cmd="abstract" --main Largescale_eddy_interannual_AL.tex master advisor
```

`git-latexdiff` also has many additional options. More detailed information can be found [here](https://www.slideshare.net/sppmg/latex-with-git) and the gitlab page of [`git-latexdiff` project](https://gitlab.com/git-latexdiff/git-latexdiff). 





