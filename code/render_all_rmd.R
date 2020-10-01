## render all Rmd in different input folders to .md for the Jekyll site

render_all_rmd <- function(){

  ## jupyter
  render_active_to_markdown(dir_in = "./Rmd/jupyterhub", dir_out = "./_docs/jupyterhub/")

  ## rstudio
  render_active_to_markdown(dir_in = "./Rmd/rstudio", dir_out = "./_docs/rstudio/")

  ## shiny-server
  render_active_to_markdown(dir_in = "./Rmd/shiny-server", dir_out = "./_docs/shiny-server/")

  ## spyder-python
  render_active_to_markdown(dir_in = "./Rmd/spyder-python", dir_out = "./_docs/spyder-python/")

  ## workspace-types
  render_active_to_markdown(dir_in = "./Rmd/workspace-types", dir_out = "./_docs/workspace-types/")

}