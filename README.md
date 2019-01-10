
[![Travis-CI Build
Status](https://travis-ci.org/hrbrmstr/ednstest.svg?branch=master)](https://travis-ci.org/hrbrmstr/ednstest)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/ednstest/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/ednstest)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/ednstest)](https://cran.r-project.org/package=ednstest)

# ednstest

‘RFC’ 6891 (‘EDNS’) Compliance Checker

## Description

Checks ‘Domain Name System’ (‘DNS’) zones for compliance with ‘RFC’ 6891
(‘EDNS’).

You can read more about this at the [DNS Flag Day
website](https://dnsflagday.net/), but the minimal working setup which
will allow your domain to survive 2019 DNS flag day must not have
`timeout` result in any of plain DNS and EDNS version 0 tests
implemented in [ednscomp](https://ednscomp.isc.org/ednscomp) tool.

## What’s Inside The Tin

The following functions are implemented:

  - `ednstest`: ‘RFC’ 6891 (‘EDNS’) Compliance Checker

## Installation

``` r
devtools::install_git("https://sr.ht.com/~hrbrmstr/ednstest.git")
# or
devtools::install_git("https://gitlab.com/hrbrmstr/ednstest.git")
# or (if you must)
devtools::install_github("hrbrmstr/ednstest")
```

## Usage

``` r
library(ednstest)

# current version
packageVersion("ednstest")
## [1] '0.1.0'
```

``` r
edns_test("rud.is")
## EDNS compliance test for [rud.is] has ✔ PASSED!
## Report URL: https://ednscomp.isc.org/ednscomp/60049cb032

edns_test("rstudio.com")
## EDNS compliance test for [rstudio.com] has ✖ FAILED
## Report URL: https://ednscomp.isc.org/ednscomp/54e2057229

edns_test("r-project.org")
## EDNS compliance test for [r-project.org] has ✔ PASSED!
## Report URL: https://ednscomp.isc.org/ednscomp/839ee9c9af
```

## ednstest Metrics

| Lang | \# Files |  (%) | LoC | (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | --: | ----------: | ---: | -------: | ---: |
| R    |        5 | 0.83 |  44 | 0.8 |          13 | 0.37 |       32 | 0.48 |
| Rmd  |        1 | 0.17 |  11 | 0.2 |          22 | 0.63 |       35 | 0.52 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
