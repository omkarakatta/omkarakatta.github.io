---
layout: post
title: "Using Rmd files for Posts"
date:   2020-06-07
tags: [r, jekyll]
output:
  md_document:
    pandoc_args: ["--wrap=none"]
    variant: gfm
    preserve_yaml: TRUE
always_allow_html: true
editor_options:
  chunk_output_type: console
hidden: false
---

Some blog posts will require the use of data and data-driven graphics to convey information, so it would be helpful to incorporate R in creating blog posts while adhering to the style of the website, e.g., font style, background, etc. I experiment with `ggplot`, `kable`, and `kableExtra`.

I use [Jesse Cambon’s blog post](https://jessecambon.github.io/2019/12/08/practical-tidy-evaluation.html) and the associated [Rmd file on GitHub](https://github.com/jessecambon/jessecambon.github.io/blob/master/_posts/2020-03-22-deploying-rmarkdown-online.Rmd) as a reference to incorporate Rmd files as blog posts.

## YAML header

``` r
---
layout: post
title: "Using Rmd files for Posts"
date:   2020-06-07
tags: [r, jekyll]
output:
  md_document:
    pandoc_args: ["--wrap=none"]
    variant: gfm
    preserve_yaml: TRUE
editor_options:
  chunk_output_type: console
---
```

## Configuration File

In the root directory is a file called `rmd_config.R` which houses configuration settings for all Rmd files. These settings inform the default chunk options, as well as set the base directory in the root of the website. I can also include global functions and `ggplot2` settings. By including `source(here::here("rmd_config.R"))` in a setup chunk at the top of my Rmd files, I can access these settings.

## Formatting

Notice that the text and background color of the page is consistent with the website. However, ggplot and base R graphics are not by default. To solve this issue with ggplot, I create my own ggplot theme `theme_oakweb`.

Some lingering issues to fix or consider:

  - learn about tooltips with `kableExtra`
  - learn about interactive plots with `plotly` and `ggplotly()`
  - change striped color of kableTable

## Including Plots

My ggplot theme `theme_oakweb` was created using [Joey Stanley’s blog post](http://joeystanley.com/blog/custom-themes-in-ggplot2) so that the background and the text of the graphic would align with the website.

<!-- I also reference [Juuso Parkkinen's blog post](https://ouzor.github.io/blog/2014/11/21/interactive-visualizations.html) to try out `plotly::ggplotly()`.  -->

<img src="/rmd_images/2020-06-07-Using-Rmd-files-for-Posts/sampleplot-1.png" style="display: block; margin: auto;" />

## Including Tables

<table class="table table-striped" style="width: auto !important; float: right; margin-left: 10px;">

<thead>

<tr>

<th style="text-align:left;">

Species

</th>

<th style="text-align:center;">

Mean Length

</th>

<th style="text-align:center;">

Mean Width

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

setosa

</td>

<td style="text-align:center;">

5.01

</td>

<td style="text-align:center;">

3.43

</td>

</tr>

<tr>

<td style="text-align:left;">

versicolor

</td>

<td style="text-align:center;">

5.94

</td>

<td style="text-align:center;">

2.77

</td>

</tr>

<tr>

<td style="text-align:left;">

virginica

</td>

<td style="text-align:center;">

6.59

</td>

<td style="text-align:center;">

2.97

</td>

</tr>

</tbody>

</table>

This table was created with `knitr::kable` and `kableExtra`. Unlike the html output, hovering over the table does not change the color of the rows, and since this is a static site, it might not be possible to include such options as “hover” and “responsive” in the bootstrap options of the kable table.
