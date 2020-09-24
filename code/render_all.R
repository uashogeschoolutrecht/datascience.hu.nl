## render all Rmd in root to md

## renders multiple R-markdown files


dir_in <- here::here("Rmd", "active")
dir_out <- here::here("_docs", "rstudio")

list_rmd <- list.files(dir_in, 
                                     pattern = ".Rmd",
                                     full.names = TRUE)
list_rmd

render_all <- function(x){
  
  rmarkdown::render(input = x, 
                    output_dir = dir_out,
                    rmarkdown::md_document(preserve_yaml = TRUE))
}


# render_all(list_rmd[[2]])

purrr::walk(
  .x = list_rmd,
  .f = render_all
)
