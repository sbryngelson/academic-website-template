---
title: "Talks"
layout: page
permalink: /talks/
---

# Talks

<div class="section-card" id="pubList">
<h2>Invited Talks</h2>

{% bibliography --query @incollection[keywords ^= invited] %}

<h2>Regular Talks</h2>

{% bibliography --query @incollection[keywords != invited] %}
</div>
