---
title: "Blog Posts by Tag"
permalink: /tag/
---
<div>
<a href="/blog/" title="View Posts by Date">View posts organized by date</a>
</div>

<br/>
This blog is a way for me to record my life as an aspiring academic. I hope it will serve to be a creative outlet for me as well as a way in which I can formalize my teaching and research philosophy. Perhaps one day, it will be useful for creating a blog that will be open to the public. But for now, these posts are solely for my meditation. test
<br/>
<!-- Reference: https://raw.githubusercontent.com/jokecamp/jokecamp.com/master/tag.md -->
<!-- Click on a tag to see corresponding list of blog posts. -->

<ul class = "tags">
{% for tag in site.tags %}
  {% assign t = tag | first %}
    {% if post.hidden == false %}
      <li style = "margin-right:2em; margin-left:-2em; padding:0 4px">
        <a href="/tag/#{{t | downcase | replace:" ","-" }}">{{ t | downcase }}</a>
      </li>
    {% endif %}
{% endfor %}
</ul>

---

{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}
  <h3><a name="{{t | downcase | replace:" ","-" }}" id = "{{t | downcase}}"></a><a href="/tag/#{{t | downcase | replace:" ","-" }}">{{ t | downcase }}</a></h3>
  <ul style="list-style-type: none; margin:0">
    {% for post in posts %}
      {% if post.url contains ".html" %}
        {% if post.tags contains t %}
          {% if post.hidden == false %}
            <li>
              <a href="{{ post.url }}">{{ post.title }}</a>
              <span class="date">{{ post.date | date: "%B %-d, %Y"  }}</span>
              {{ post.excerpt }}
            </li>
          {% endif %}
        {% endif %}
      {% endif %}
    {% endfor %}
  </ul>
  <!-- --- -->
{% endfor %}


<!-- {% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul style="list-style-type: none; margin:0">
    {% for post in tag[1] %}
      {% if post.url contains ".html" %}
        <li>
          <a href="{{ post.url }}">{{ post.title }}</a>
          {{ post.excerpt}}
        </li>
      {% endif %}
    {% endfor %}
  </ul>
{% endfor %} -->

<!-- <ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul> -->
