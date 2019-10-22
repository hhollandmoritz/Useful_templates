# kniting one report at a time

o = knitr::spin("02_preliminary_analyses.R", knit = FALSE)
rmarkdown::render(o, "html_document")

# knitr::spin("02_preliminary_analyses.R", knit = TRUE, report = TRUE, precious = TRUE)


# kniting multiple reports

# Create Rmd document(s)

p1 = knitr::spin("01_cleaning_data.R", knit = FALSE)
p2 = knitr::spin("02_preliminary_analyses.R", knit = FALSE)

all = knitr::spin("knit_multi_doc_report.R", knit = FALSE)

rmarkdown::render(all, "html_document", output_file = "Full_Sandbox_report")
