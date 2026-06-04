---
title: ''
date: 2024-04-19
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      button:
        text: Download CV
        url: pdf/resume_2024.pdf
      headings:
        about: 'Biography'
        education: ''
        interests: ''
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: sm
      avatar:
        size: medium
        shape: square

  - block: collection
    id: news
    content:
      title: Recent Posts
      page_type: blog
      count: 6
      filters:
        author: ''
        category: ''
        tag: ''
        exclude_featured: false
        exclude_future: false
        exclude_past: false
      order: desc
    design:
      view: card
      columns: 1

  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      count: 6
      filters:
        folders:
          - events
    design:
      view: card
      columns: 3

  - block: collection
    id: papers
    content:
      title: Recent Publications
      filters:
        folders:
          - publications
    design:
      view: citation
---
