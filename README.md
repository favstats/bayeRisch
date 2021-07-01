
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bayeRisch

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `bayeRisch` is to translate German into Bavarian (German
dialect). `bayeRisch` is built upon [this
tool](https://www.respekt-empire.de/Translator/?page=translateEngine) by
Andi Hummel and simply provides an interface to it.

## Installation

You can install the development version of `bayeRisch` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/bayeRisch")
```

## Example

This is a basic example:

``` r
library(bayeRisch)
## basic example code
```

``` r
get_bayerisch("Ja, ich hätte gern ein Bier bitte.")
#> [1] "Jo, i häd grn a Bier bitte."
```

``` r
get_bayerisch("Angezapft ist.")
#> [1] "Ogzapft is."
```

``` r
get_bayerisch("Es gibt nichts besser als was gutes.")
#> [1] "'s gibt nix bessa ois wos guads."
```

``` r
get_bayerisch("Das ist gehüpft wie gesprungen.")
#> [1] "Des is ghüpft wia gsprunga."
```
