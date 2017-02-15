# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Title
#'
#' @return A string telling "Hello from reactr!"
#' @export
#'
#' @examples
#' service_test
service_test <- function() {
  return( print("Hello from reactr!") )
}

#' Title
#'
#' @param file the name of a file starting from the package's working directory
#'
#' @return A data frame with the contents of file
#' @export
#'
#' @examples
#' \dontrun{
#' mydata <- read_file(csv_file)
#' }
read_file <- function(file) {
  return( read.csv2("cars.csv") )
}

#' Title
#'
#' @param data a data frame constructed from csv file
#'
#' @return A plot generated with ggplot
#' @export
#'
#' @examples
#' \dontrun{
#' plot_file(mydata)
#' }
plot_file <- function(data) {
  data <- as_data_frame(data)
  ggplot(data = data, aes(x = speed, y = dist)) +
    geom_line()
}
