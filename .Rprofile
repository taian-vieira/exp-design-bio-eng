cat("Loading custom .Rprofile")

# example R options set globally
options(width = 60)

# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#",
  collapse = FALSE,
  message = FALSE,
  warning = FALSE
)

library(magrittr)
library(DT)
library(htmltools)
library(exams)
library(exams2forms)
library(webshot)
library(ggplot2)
library(dplyr, warn.conflicts = FALSE)
library(kableExtra, warn.conflicts = FALSE)

cex_symbol <- 2.5
cex_label <- 1.2
cex_axis <- 1.2
question_color <- "#B35629"
key_color <- "#35759C"
course_name <- "Experimental Design in Biomedical Engineering"

colorize <- function(x, color) {
  return (sprintf("<span style='color: %s;'>%s</span>", color, x))
}

# webexercises::add_to_bookdown(
#   bookdown_dir = ".",
#   output_format = "bs4_book"  # or "gitbook", "html_book", "tufte_html_book"
# )
