---
title: "Blog Posts by Date"
shorttitle: Blog
permalink: /blog/
featured: false
---

<div>
<a href="/tag/" title="View Posts by Tag">View posts organized by tags</a>
</div>

<br/>
This blog is a way for me to record my life as an aspiring academic. I hope it will serve to be a creative outlet for me as well as a way in which I can formalize my teaching and research philosophy. Perhaps one day, it will be useful for creating a blog that will be open to the public. But for now, these posts are solely for my meditation.
<br/>

<ul>
{% for post in site.posts %}
    {% if post.url contains ".html" %}
        {% if post.hidden == true %}
            <li style="list-style-type: none; margin-left:-2em">
                <span class="date">{{ post.date | date: "%b %d, %Y"  }}: &nbsp; </span>
                <a href="{{ post.url }}">{{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
{% endfor %}
</ul>
