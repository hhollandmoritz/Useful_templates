# kniting one report at a time to an html document
library(knitr)
library(rmarkdown)

# Create knit directory
project.fp <- "/home/hannah/Documents/Fierer_lab/Useful Templates"
knit.fp <- paste0(project.fp, "/knit")
code.fp <- paste0(project.fp, "/code") # location of your scripts, sometimes this might be different than your projects directory

if (!dir.exists(knit.fp)) {dir.create(knit.fp)}

#### Knitting Part 1: NameOfPart1 ####

file.copy(from = paste0(code.fp, "/Part1.R"),
          to = paste0(knit.fp, "/Part1.R"),
          overwrite = TRUE)
o = knitr::spin(paste0(knit.fp, "/Part1.R"), knit = FALSE)
rmarkdown::render(o, "html_document")
#### =================================================================================================== ####

#### Kniting Part 2: 02_preliminary_analyses ####

file.copy(from = paste0(code.fp, "/Part2.R"),
          to = paste0(knit.fp, "/Part2.R"),
          overwrite = TRUE)
o = knitr::spin(paste0(knit.fp, "/Part2.R"), knit = FALSE)
rmarkdown::render(o, "html_document")
#### =================================================================================================== ####

#### Concatenated Report ####

# Write the knit_multi_doc_report.R
# Change the names of the documents in the lines with "child = " to match your own

multi_doc_lines <- c("
#' ---
#' title: Full Report Title
#' author: Your Name Here
#' date: \"`r format(Sys.time(), '%d %B, %Y')`\"
#' output: 
#'   pdf_document:
#'     toc: true
#'   html_document:
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

#+ Part 1, child=\"Part1.Rmd\", cache = TRUE

#+ Part 2, child=\"Part2.Rmd\", cache = TRUE
")

writeLines(multi_doc_lines, paste0(knit.fp, "/knit_multi_doc_report.R"))

# Create Rmd document(s)

p1 = knitr::spin(paste0(knit.fp, "/Part1.R"), knit = FALSE)
p2 = knitr::spin(paste0(knit.fp, "/Part2.R"), knit = FALSE)

all = knitr::spin(paste0(knit.fp, "/knit_multi_doc_report.R"), knit = FALSE)

rmarkdown::render(all, output_format = html_document(toc = TRUE), 
                  output_file = "Full_Report")
#### =================================================================================================== ####
