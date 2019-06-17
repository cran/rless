## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(rless)

less <- "
@width: 10px;
@height: @width + 10px;

#header {
  width: @width;
  height: @height;
}
"

css <- parse_less(less)
cat(css)

## ------------------------------------------------------------------------
library(rless)

less <- "
@width: 10px;
@height: @width + 10px;

#header {
  width: @width;
  height: @height;
}

#footer{
  width: @width;
  height: @height;
}
"

css <- parse_less(less)
cat(css)


## ------------------------------------------------------------------------
less <- "
ul {
  li {
    color: cyan;
  }  
}
"

css <- parse_less(less)
cat(css)


## ------------------------------------------------------------------------
less <- "
.button {
  &-ok {
    background-color: green;
  }
  && {
    backgrou-color: transparent;
  }
}
"

css <- parse_less(less)
cat(css)

## ------------------------------------------------------------------------
less <- "
.bordered {
  border-top: dotted 1px black;
  border-bottom: solid 2px black;
}

#menu a {
  color: #111;
  .bordered();
}

.post a {
  color: red;
  .bordered();
}
"

css <- parse_less(less)
cat(css)


