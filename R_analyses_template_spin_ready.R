#' # Title of R Project Here

#+ knitr setup, include=FALSE
# some setup options for outputing markdown files; feel free to ignore these
# These are the default options for this report; more information about options here: https://yihui.name/knitr/options/
knitr::opts_chunk$set(eval = TRUE, # evaluate code chunks
                      include = TRUE, # include the console output of the code in the final document
                      echo = FALSE, # include the code that generated the report in the final report
                      warning = FALSE, # include warnings
                      message = FALSE, # include console messages
                      collapse = TRUE, # Merge code blocks and output blocks, if possible.
                      dpi = 300, # the default figure resolution
                      fig.dim = c(9, 5), # the default figure dimensions
                      out.width = '98%', # the default figure output width
                      out.height = '98%', # the default figure output height
                      cache = TRUE) # save the calculations so that kniting is faster each time. (Sometimes this option can cause issues and images won't reflect the most recent code changes, if this happens, just delete the *_cache folder and reknit the code.)
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
