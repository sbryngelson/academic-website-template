---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---

<style>
.btn{
    margin-bottom:5px;
    padding-top:1px;
    padding-bottom:1px;
    padding-left:15px;
    padding-right:15px;
}
</style>

<div class="jumbotron">
### Invited talks
{% bibliography --query @incollection[keywords ^= invited] %}
</div>

<div class="jumbotron">
### Regular talks
{% bibliography --query @incollection[keywords != invited] %}
</div>
