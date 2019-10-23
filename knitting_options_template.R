# kniting one report at a time to an html document

### First create your .Rmd file from your R template
o = knitr::spin("R_analyses_template_spin_ready.R", knit = FALSE)

### Now create the report from the .Rmd file you just created
rmarkdown::render(o, "html_document")

# kniting a report and rendering it at the same time. This will render the code properly for github interpretation 
knitr::spin("R_analyses_template_spin_ready.R", knit = TRUE, report = TRUE, precious = TRUE)


# kniting multiple reports together

# Create Rmd document(s) for each of the individual pieces of code

p1 = knitr::spin("Multireport/Part1.R", knit = FALSE)
p2 = knitr::spin("Multireport/Part2.R", knit = FALSE)

# Create a separated R file that merges these documents. In this case that document is "knit_multi_doc_report.R"

all = knitr::spin("Multireport/knit_multi_doc_report.R", knit = FALSE)

rmarkdown::render(all, "html_document", output_file = "Full_report")
rmarkdown::render(all, "pdf_document", output_file = "Full_report")
