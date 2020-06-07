---
title: Blog
shorttitle: Blog
permalink: /blog/
featured: true
---

<ul>
{% for post in site.posts %}
    {% if post.url contains ".html" %}
    <li style="list-style-type: none; margin-left:-2em">
        <span class="date">{{ post.date | date: "%b %Y"  }}: &nbsp; </span>
        <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>

<br>
<br>
<br>
<br>



<div style="text-align: center">
<a href="/tag/" title="View Posts by Tag">View posts organized by tags</a>
</div>
