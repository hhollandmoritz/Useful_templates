
#' ---
#' title: Full Report Title
#' author: Your Name Here  
#' date: "`r format(Sys.time(), '%d %B, %Y')`"
#' output: 
#'   pdf_document:
#'     toc: true
#'   html_document:
#'     toc: true
#'   github_document:
#'     toc: true
#' ---

#+ full setup, include=FALSE
knitr::opts_chunk$set(eval = TRUE, 
                      include = TRUE,
                      echo = FALSE,
                      warning = FALSE, 
                      message = FALSE,
                      collapse = TRUE,
                      dpi = 300,
                      fig.dim = c(9, 5),
                      out.width = '98%',
                      out.height = '98%',
                      cache = FALSE)

#+ Part 1, child="Part1.Rmd", cache = TRUE

#+ Part 2, child="Part2.Rmd", cache = TRUE

