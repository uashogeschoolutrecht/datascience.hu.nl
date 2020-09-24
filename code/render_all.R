## render all Rmd in root to md

## renders multiple R-markdown files



dir_out <- here::here()
dir_in <- here::here()

list_rmd <- list.files(dir_in, 
                                     pattern = ".Rmd",
                                     full.names = TRUE)
list_rmd

render_all <- function(x){
  
  rmarkdown::render(input = x, 
                    output_dir = dir_out,
                    output_format = "md_document")
}

purrr::walk(
  .x = list_rmd,
  .f = render_all
)
