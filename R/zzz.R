ctx <- NULL
.onLoad <- \(...){
  ctx <<- V8::v8()
  ctx$source(
    system.file("jade.js", package = "jader")
  )
}
