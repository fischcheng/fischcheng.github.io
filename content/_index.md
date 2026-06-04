---
title: ''
date: 2024-04-19
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: |
        Yu has 10 years of experience using pioneering high-resolution climate models to study the ocean and its role in the climate system. Coming from Taiwan, he is a big fan of all weather phenomena and the latest technology. With an atmospheric science background, he is passionate about combining his experiences in climate modeling, software engineering and data science to solve more challenging problems.

        Fun facts: Yu loves all sports with racquets. He plays in local tennis leagues, school badminton clubs, and has been stringing racquets for friends for many years. One of his dearest memories from Miami was serving as a ballperson at Miami Open and handing towels to Rafael Nadal.
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
        shape: circle

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
