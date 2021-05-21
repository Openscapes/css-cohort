## create_github_demo_pub.R. 
## This will become a function in our `openscapesr` package:
## github.com/openscapes/openscapesr
## To be iterated.  

library(tidyverse)
library(datapasta) # install.packages("datapasta")

file_in <-  "julie.md"
text_template <- read_lines(file_template)

## use `datapasta` addin to vector_paste these names formatted from the spreadsheet!
cohort <- c("Cole", "Cat", "Christopher", "Mitch", "Tazarve", "Kiva", "Andrea", "Sophia", "Nima", "Jack", "Martin", "Alexandra", "Nancy", "Nicola", "Isa", "Sarah", "Veronica", "Benjamin", "Maura", "Galen", "Janet", "Ileana", "Kelsey", "Laura", "Sarah", "Lydia", "Angie", "Lisa", "Melinda", "Natasha", "Jacqueline", "Jeremy", "Corinne", "Callum", "Miranda", "Eileen")
cohort <- str_to_lower(cohort)

for (champion in cohort) {
  file_out <- glue::glue(champion, ".md")
  text_write <- write_lines(text_template, file_out)
  
} 

cohort <- "julie.md"


