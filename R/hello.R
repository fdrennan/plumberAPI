# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Saves a csv
#' @importFrom glue glue
#' @importFrom utils write.csv
#' @export save_cars
save_cars <- function() {
  rand_n <- sum(sample(1:1000, 6))
  write.csv(datasets::mtcars, glue('mtcars{rand_n}.csv'))
}
