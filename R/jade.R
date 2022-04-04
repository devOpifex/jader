#' Pug
#' 
#' Pugger renderer for Ambiorix.
#' 
#' @export
jader <- \(){
  ambiorix::as_renderer(renderer)
}

#' Renderer
#' 
#' Renders file using specified data.
#' 
#' @param file File to render.
#' @param data Data to render variables.
#' 
#' @export
renderer <- \(file, data) {
  content <- read_lines(file)
  ctx$call("jade.render", content, data)
}

# Silently read lines
read_lines <- \(file){
  suppressWarnings(
    readLines(file)
  ) |> 
    paste0(collapse = "\n")
}
