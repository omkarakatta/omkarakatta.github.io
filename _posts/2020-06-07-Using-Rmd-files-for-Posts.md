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
---

Some blog posts will require the use of data and data-driven graphics to convey information, so it would be helpful to incorporate R in creating blog posts while adhering to the style of the website, e.g., font style, background, etc. I use [Jesse Cambon’s blog post](https://jessecambon.github.io/2019/12/08/practical-tidy-evaluation.html) and the associated [Rmd file on GitHub](https://github.com/jessecambon/jessecambon.github.io/blob/master/_posts/2020-03-22-deploying-rmarkdown-online.Rmd) as a reference.

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

## Including Plots

You can also embed plots, for example:

<img src="/rmd_images/2020-06-07-Using-Rmd-files-for-Posts/pressure-1.png" style="display: block; margin: auto;" />

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
