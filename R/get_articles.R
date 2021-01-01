#'@export
get_article <- function(article) {
  article %>%
    rvest::html_node("[class='card-container']") %>%
    rvest::html_node("[class='card-body']")
}
