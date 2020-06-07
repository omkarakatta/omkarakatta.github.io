---
title: "Blog Posts by Date"
shorttitle: Blog
permalink: /blog/
featured: true
---

<div>
<a href="/tag/" title="View Posts by Tag">View posts organized by tags</a>
</div>

<br/>
<br/>

<ul>
{% for post in site.posts %}
    {% if post.url contains ".html" %}
        {% if post.published == "true" %}
            <li style="list-style-type: none; margin-left:-2em">
                <span class="date">{{ post.date | date: "%b %Y"  }}: &nbsp; </span>
                <a href="{{ post.url }}">{{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
{% endfor %}
</ul>
