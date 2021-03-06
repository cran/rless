# Created by: Jonas Vaclavek
# Modified by: Jonas Vaclavek
# Modify date: 05.06.2019
# Description: Parse less to css

if(getRversion() >= "2.15.1")  utils::globalVariables("output")

#' Parse LESS content to CSS
#'
#' Parse LESS file to CSS and return it as result
#'
#' Currently LESS \emph{`@import`} functionality is not supported.
#'
#' @param code text to be converted in LESS format
#' @examples
#' parse_less('.button { .red{ collor: red}}')
#' parse_less('@red: red; .red{ collor: @red}')
#' @return converted text to CSS
#'
#' @export
parse_less <-
  function(code) {
    get_v8_console()$call("rlessParse", code, "output")
    output
  }
