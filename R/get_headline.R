#'@export
get_headline <- function(article) {
  article %>%
    rvest::html_node("[class='card-headline']") %>%
    rvest::html_node("a")
}
