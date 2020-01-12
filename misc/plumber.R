#* @Plumber Example

library(plumber)
library(plumberAPI)

#' @filter cors
cors <- function(req, res) {

  res$setHeader("Access-Control-Allow-Origin", "*")

  if (req$REQUEST_METHOD == "OPTIONS") {
    res$setHeader("Access-Control-Allow-Methods","*")
    res$setHeader("Access-Control-Allow-Headers", req$HTTP_ACCESS_CONTROL_REQUEST_HEADERS)
    res$status <- 200
    return(list())
  } else {
    plumber::forward()
  }

}

#* Echo back the input
#* @param msg The message to echo
#* @get /save_cars
save_cars <- function() {
  save_cars()
  list(msg = paste0("Completed save cars"))
}

#* Echo back the input
#* @param time The time needed to wait
#* @get /wait
wait <- function(time = 5) {
  Sys.sleep(time)
  list(msg = glue("Completed wait for {time}"))
}

#* Echo back the input
#* @get /data
data <- function() {
  toJSON(mtcars)
}
