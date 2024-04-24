---
title: ''
date: 2024-04-19
type: landing


# Your landing page sections - add as many different content blocks as you like
sections:
  - block: about.biography
    id: about
    content:
      title: Biography
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin

  - block: experience
    content:
      title: Experience
      # Date format for experience
      #   Refer to https://wowchemy.com/docs/customization/#date-format
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Sustainability Data Scientist
          company: MIT Office of Sustainability
          company_url: 'https://sustainability.mit.edu/'
          company_logo: ''
          location: Cambridge
          date_start: '2023-09-11'
          date_end: ''
          description: |2-
              Innovate MIT's sustainability data collection, reporting, and sharing efforts, leveraging cloud technology and modern data stacks.

        - title: Founding Senior Data Scientist
          company: Web3 Builders
          company_url: ''
          company_logo: ''
          location: Boston
          date_start: '2022-06-27'
          date_end: '2023-04-22'
          description: |2-
              Integrated disparate data sources to develop labeled datasets for ML models, predicting scam probabilities of Ethereum smart contracts and wallets. Established ETL and ML pipelines using cloud infrastructures.

        - title: Senior Data Scientist (Consultant)
          company: SFL Scientific (acquired by Deloitte)
          company_url: 'https://www2.deloitte.com/us/en/pages/about-deloitte/articles/press-releases/deloitte-acquires-sfl-scientific.html'
          company_logo: ''
          location: Boston
          date_start: '2021-10-14'
          date_end: '2022-06-24'
          description: |2-
              
              * Implemented and deployed ML solutions tailored to clients’ objectives, resulting in improved business performance through meticulous exploratory analysis, metric definition, and continuous evaluation of data science life-cycle outcomes.
              *  Orchestrated a CNN-based illegal fishing vessels detection and labeling system, designing and implementing end-to-end data workflows for large-scale data ingestion, processing, tagging, and publishing.
        - title: Senior Atmospheric Data Scientist
          company: Tomorrow.io
          company_url: 'https://www.tomorrow.io/blog/detecting-rain-without-radar-how-climacell-blends-global-precipitation-observations-to-fill-coverage-gaps/'
          company_logo: ''
          location: Boston
          date_start: '2018-10-01'
          date_end: '2021-10-07'
          description: |2-
              
              Created novel weather products by integrating computer vision and ML techniques, resulting in a near real-time global precipitation pipeline using geostationary satellite images and cloud-based technologies using Google Cloud Platform, xarray, dask and satpy. 

        - title: Research Assistant
          company: RSMAS, University of Miami
          company_url: ''
          company_logo: ''
          location: Miami
          date_start: '2012-07-01'
          date_end: '2018-06-30'
          description: |2-
              
              *  Explored Agulhas Leakage variability through a state-of-the-art high-resolution climate model using Lagrangian particle analysis and open-source tools, resulting in 4 peer-review articles.
              * Organized and led weekly discussion sessions, developed the final exam problems for the course **Current topics of Weather and Climate**, graded weekly quizzes, exams, and final term-papers. 
              * Coordinated with the instructor to synthesize news articles regarding climate change, mitigation, and policy to be covered in the lectures for the course **Climate and Global Change**
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
  - block: collection
    id: posts
    content:
      title: Recent Posts
      subtitle: ''
      text: ''
      # Choose how many pages you would like to display (0 = all pages)
      count: 5
      # Filter on criteria
      filters:
        folders:
          - post
        author: ""
        category: ""
        tag: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: compact
      columns: '2'
  - block: portfolio
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - project
      # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
      default_button_index: 0
      # Filter toolbar (optional).
      # Add or remove as many filters (`filter_button` instances) as you like.
      # To show all items, set `tag` to "*".
      # To filter by a specific tag, set `tag` to an existing tag name.
      # To remove the toolbar, delete the entire `filter_button` block.
      # buttons:
      #   - name: All
      #     tag: '*'
      #   - name: Agulhas Leakage
      #     tag: Agulhas
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '2'
      view: masonry
      # For Showcase view, flip alternate rows?
      flip_alt_rows: True
  - block: collection
    id: publications
    content:
      title: Publications
      filters:
        folders:
          - publication
        featured_only: false
    design:
      columns: '2'
      view: compact
  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - talk
      count: 2
    design:
      columns: '2'
      view: compact
---