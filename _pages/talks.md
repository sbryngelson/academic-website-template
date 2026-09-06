---
title: "Talks"
layout: page
permalink: /talks/
---

## Talks

<div class="section-card" id="pubList">
<h3>Invited Talks</h3>

{% bibliography --query @incollection[keywords ^= invited] %}

<h3>Regular Talks</h3>

{% bibliography --query @incollection[keywords != invited] %}
</div>
