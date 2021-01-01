#'@export
get_article_info <- function(article_content) {
  header <- article_content %>%
    rvest::html_node("[class='asset-masthead ']")

  header_date <- header %>%
    rvest::html_node("time") %>%
    rvest::html_text(trim = T)

  header_author <- header %>%
    rvest::html_node("ul") %>%
    rvest::html_node("li") %>%
    rvest::html_node("span") %>%
    rvest::html_text(trim = T)

  article_body <- article_content %>%
    rvest::html_node("[class='asset-body']") %>%
    rvest::html_node('[class="asset-content  subscriber-premium"]') %>%
    rvest::html_text(trim = T)

  return(list(
    date = header_date,
    author = header_author,
    body = article_body
  ))
}
