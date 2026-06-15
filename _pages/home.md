---
title: "Home"
layout: homelay
sitemap: false
permalink: /
---

<h2 class="home-hero">{{ site.name }}</h2>
<p class="home-hero-sub">{{ site.title }}, {{ site.institution }}</p>

### About me

Dr. Wenhao Yang is an Assistant Professor in the Department of Industrial and Systems Engineering at
[Lamar University](https://www.lamar.edu), where he joined in Fall 2024.
His [research]({{ site.url }}{{ site.baseurl }}/research) focuses on the integration of Augmented Reality (AR),
Virtual Reality (VR), and Mixed Reality (MR) with robotics and industrial systems, with particular emphasis on
human-robot interaction, immersive training environments, and resilient system design.

He received his Ph.D. in Industrial and Systems Engineering from
[Rochester Institute of Technology (RIT)](https://www.rit.edu) in 2023.
His work spans interdisciplinary areas including advanced manufacturing, human-computer interaction (HCI), and
user-centered system design, aiming to develop scalable and effective solutions for complex engineering challenges.

Dr. Yang has extensive experience in developing and [teaching]({{ site.url }}{{ site.baseurl }}/teaching) courses
in robotics and immersive technologies, including Collaborative Robot Operation and Programming, AR/VR Applications,
Introduction to Robotics, and Robotics and Automation in Manufacturing.
He is passionate about making complex technologies accessible and impactful through both research and education.

He directs the [XRAI Lab]({{ site.url }}{{ site.baseurl }}/lab), where his [team]({{ site.url }}{{ site.baseurl }}/team)
explores innovative approaches at the intersection of robotics, XR technologies, and industrial applications.
Dr. Yang welcomes motivated students to join his group and contribute to cutting-edge research in these areas.

<div class="chip-container" markdown="0">
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">Augmented Reality</a>
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">Mixed Reality</a>
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">Human-Robot Interaction</a>
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">XR Rehabilitation</a>
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">Industrial XR</a>
<a href="{{ site.url }}{{ site.baseurl }}/research" class="chip">Spatial Computing</a>
</div>

### Recent Projects

{% assign sorted_research = site.data.research | sort: "end_date" | reverse %}
<div class="home-projects-grid" markdown="0">
{% for item in sorted_research limit:3 %}
<a href="{{ site.url }}{{ site.baseurl }}/research" class="home-project-card">
{% if item.image and item.image != "" %}
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ item.image }}" alt="{{ item.title }}" loading="lazy">
{% endif %}
<div class="home-project-card-body">
<h4>{{ item.title }}</h4>
<p>{{ item.abstract | truncatewords: 20 }}</p>
</div>
</a>
{% endfor %}
</div>
