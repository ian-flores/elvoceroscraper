#'@export
get_url <- function(headline) {
  headline %>%
    rvest::html_attr("href")
}
