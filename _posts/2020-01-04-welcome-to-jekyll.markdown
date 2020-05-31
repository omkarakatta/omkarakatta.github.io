---
layout: post
title:  "Welcome to Jekyll!"
date:   2020-01-04 12:20:17 -0500
tag: jekyll
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

Jekyll requires blog post files to be named according to the following format:

`YEAR-MONTH-DAY-title.MARKUP`

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, and `MARKUP` is the file extension representing the format used in the file. After that, include the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
# This is an example for Ruby.
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

{% highlight r %}
# This is a simple example for R.
print("Hello World!")
{% endhighlight %}

"To find the appropriate identifier to use for the language you want to highlight, look for the “short name” on the [Rouge wiki](https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers)." - [Jekyll Tags Filter](https://jekyllrb.com/docs/liquid/tags/)

Here is an example of some math typesetting. Use \\$ for inline math expressions, e.g., $a^2 + b^2 = c^2$. Use \\$\\$ and `align` environment as shown below.

$$
\begin{align}
  \nabla\times\vec{\mathbf{B}}-\frac{1}{c}\frac{\partial\vec{\mathbf{E}}}{\partial t} &= \frac{4\pi}{c}\vec{\mathbf{j}} \\
  \nabla\cdot\vec{\mathbf{E}} &= 4\pi\rho \\
  \nabla\times\vec{\mathbf{E}}+\frac{1}{c}\frac{\partial\vec{\mathbf{B}}}{\partial t} &= \vec{\mathbf{0}} \\
  \nabla\cdot\vec{\mathbf{B}} &= 0\label{eqn:example}
\end{align}
$$

I can reference \eqref{eqn:example} because it is labeled. The `align*` environment removes numbering.

$$
\begin{align*}
  \dot{x} &= \sigma(y - x) \\
  \dot{y} &= \rho x - y - xz \\
  \dot{z} &= -\beta z + xy
\end{align*}
$$

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
