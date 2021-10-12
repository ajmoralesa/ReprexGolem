#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 
  
  filex <- "myimg"
  filexurl <- paste0("img/", filex, ".png")
  
  filename <- normalizePath(
    file.path("inst", "app", filexurl)
  )
  
  output$eximg <- renderImage({
    list(
      src = filename, width = "420px", height = "400px"
    )
  }, deleteFile = FALSE)
  
}
