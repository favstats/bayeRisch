#' get_bayerisch
#'
#' Translates German to Bavarian
#'
#'
#' @param txt provide a text you want to translate from German into Bavarian (a maximum of 1009 characters per call)
#' @export
get_bayerisch <- function(txt) {

  if(stringr::str_count(txt)>1009){
    stop("Your text should be shorter than 1009 characters.")
  }

  html <- rvest::session("https://www.respekt-empire.de/Translator/?page=translateEngine")
  bayerform <- rvest::html_form(html)[[1]]

  bayerform_in <- rvest::html_form_set(bayerform, tr_text = txt)

  resp <- rvest::html_form_submit(bayerform_in)

  fin <- rvest::read_html(resp) %>%
    rvest::html_nodes(".translator") %>%
    rvest::html_text() %>%
    stringr::str_squish()

  return(fin)
}
