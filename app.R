# Точка входа для Posit Connect Cloud
library(shinymanager)
pkgload::load_all(export_all = FALSE)
options(shiny.port = 3838, shiny.host = "0.0.0.0")
MyGolemProject::run_app() 
