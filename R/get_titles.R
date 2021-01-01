#'@export
get_titles <- function(headline) {
  headline %>%
    rvest::html_text(trim = T)
}
