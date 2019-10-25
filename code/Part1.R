#' ## Chapter 1
#' This is the first chapter

#+ knitr setup, include=FALSE
# some setup options for outputing markdown files; feel free to ignore these
# These are the default options for this report; more information about options here: https://yihui.name/knitr/options/
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
# Here I would normally load my libraries
set.seed(12345)

#' ### The start of your analyses