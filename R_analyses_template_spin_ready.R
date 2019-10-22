#' # Title of R Project Here

#+ knitr setup, include=FALSE
# some setup options for outputing markdown files; feel free to ignore these
knitr::opts_chunk$set(eval = TRUE, 
                      include = TRUE,
                      echo = FALSE,
                      warning = FALSE, 
                      message = FALSE,
                      collapse = TRUE,
                      dpi = 300,
                      fig.dim = c(9, 9),
                      out.width = '98%',
                      out.height = '98%',
                      cache = TRUE)
#+ loading libraries and set seed

library(plyr) # always load before tidyverse to avoid conflicts with dplyr
packageVersion("plyr")
library(tidyverse)
packageVersion("tidyverse")

set.seed(12345)

#' ## The start of your analyses
#' Any markdown following the ```#'``` will be interpreted as markdown.
#' For example:
#' # Header 1
#' ## Header 2
#' ### Header 3
#' #### Header 4
#' **italics**
#' _Bold_
#' 
#' * This is 
#' * a bulleted list
#' 
#' 1. This is
#' 2. A numbered list
#' 
#' Anything not prefaced by ```#'``` will be interepreted as R code. 
#' For example: 

random_numbers <- rnorm(n = 50)
hist(random_numbers)
