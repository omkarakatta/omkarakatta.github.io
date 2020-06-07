# This file contains knitr settings for Rmarkdown files
# run this file via source() in all RMarkdown files
library(knitr)
library(stringr)
library(here)
library(ggplot2)
# get name of file during knitting and strip file extension
rmd_filename <- str_remove(knitr::current_input(),"\\.Rmd")

# Figure path on disk = base.dir + fig.path
# Figure URL online = base.url + fig.path
knitr::opts_knit$set(base.dir = str_c(here::here(),'/'),base.url='/') # project root folder
knitr::opts_chunk$set(fig.path = str_c("rmd_images/",rmd_filename,'/'),
                      echo=TRUE,
                      fig.height = 4,
                      fig.width = 6,
                      fig.align = 'center')
theme_oakweb <- function(){
  theme_bw(base_size=12, base_family="Avenir Next") %+replace% 
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill="#eaeaea", colour=NA), 
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      plot.title = element_text(hjust = 0.5)
    )
}
theme_set(theme_oakweb())