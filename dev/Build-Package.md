Check and Build Package
================
Daniel Carpenter
2024-04-22

Do this every time you make a major change

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
library(quarto)
```

``` r
load_all()
```

    ## ℹ Loading styles.cmac

``` r
document()
```

    ## ℹ Updating styles.cmac documentation
    ## ℹ Loading styles.cmac

``` r
quarto::quarto_render('README.qmd')
```

    ## 
    ## 
    ## processing file: README.qmd
    ##   |                                                           |                                                   |   0%  |                                                           |.                                                  |   3%                     |                                                           |...                                                |   5% (unnamed-chunk-1)   |                                                           |....                                               |   8%                     |                                                           |.....                                              |  10% (unnamed-chunk-2)   |                                                           |.......                                            |  13%                     |                                                           |........                                           |  15% (unnamed-chunk-3)   |                                                           |.........                                          |  18%                     |                                                           |..........                                         |  21% (unnamed-chunk-4)   |                                                           |............                                       |  23%                     |                                                           |.............                                      |  26% (unnamed-chunk-5)   |                                                           |..............                                     |  28%                     |                                                           |................                                   |  31% (unnamed-chunk-6)   |                                                           |.................                                  |  33%                     |                                                           |..................                                 |  36% (unnamed-chunk-7)   |                                                           |....................                               |  38%                     |                                                           |.....................                              |  41% (unnamed-chunk-8)   |                                                           |......................                             |  44%                     |                                                           |........................                           |  46% (unnamed-chunk-9)   |                                                           |.........................                          |  49%                     |                                                           |..........................                         |  51% (unnamed-chunk-10)  |                                                           |...........................                        |  54%                     |                                                           |.............................                      |  56% (unnamed-chunk-11)  |                                                           |..............................                     |  59%                     |                                                           |...............................                    |  62% (unnamed-chunk-12)  |                                                           |.................................                  |  64%                     |                                                           |..................................                 |  67% (unnamed-chunk-13)  |                                                           |...................................                |  69%                     |                                                           |.....................................              |  72% (unnamed-chunk-14)  |                                                           |......................................             |  74%                     |                                                           |.......................................            |  77% (unnamed-chunk-15)  |                                                           |.........................................          |  79%                     |                                                           |..........................................         |  82% (unnamed-chunk-16)  |                                                           |...........................................        |  85%                     |                                                           |............................................       |  87% (unnamed-chunk-17)  |                                                           |..............................................     |  90%                     |                                                           |...............................................    |  92% (unnamed-chunk-18)  |                                                           |................................................   |  95%                     |                                                           |.................................................. |  97% (unnamed-chunk-19)  |                                                           |...................................................| 100%                                                                                                                                
    ## output file: README.knit.md
    ## 
    ## pandoc 
    ##   to: >-
    ##     commonmark+autolink_bare_uris+emoji+footnotes+gfm_auto_identifiers+pipe_tables+strikeout+task_lists+tex_math_dollars
    ##   output-file: README.md
    ##   standalone: true
    ##   default-image-extension: png
    ##   toc: true
    ##   toc-depth: 3
    ##   number-sections: true
    ##   
    ## metadata
    ##   title: CMAC Brand in ggplot2 - Installation and Examples
    ##   author: Daniel Carpenter
    ##   editor: visual
    ##   
    ## Output created: README.md

``` r
# Ensure there are no errors
devtools::check()
```

    ## ══ Documenting ═════════════════════════════════════════════════════════════════

    ## ℹ Updating styles.cmac documentation
    ## ℹ Loading styles.cmac

    ## 
    ## ══ Building ════════════════════════════════════════════════════════════════════
    ## Setting env vars:
    ## • CFLAGS    : -Wall -pedantic
    ## • CXXFLAGS  : -Wall -pedantic
    ## • CXX11FLAGS: -Wall -pedantic
    ## • CXX14FLAGS: -Wall -pedantic
    ## • CXX17FLAGS: -Wall -pedantic
    ## • CXX20FLAGS: -Wall -pedantic
    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (415ms)
    ##       ─  preparing 'styles.cmac': (6.4s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (16.5s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (3.2s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## ══ Checking ════════════════════════════════════════════════════════════════════
    ## Setting env vars:
    ## • _R_CHECK_CRAN_INCOMING_REMOTE_: FALSE
    ## • _R_CHECK_CRAN_INCOMING_       : FALSE
    ## • _R_CHECK_FORCE_SUGGESTS_      : FALSE
    ## • NOT_CRAN                      : true
    ## ── R CMD check ─────────────────────────────────────────────────────────────────
    ##       ─  using log directory 'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpOWcWIM/styles.cmac.Rcheck' (438ms)
    ## ─  using R version 4.2.3 (2023-03-15 ucrt)
    ## ─  using platform: x86_64-w64-mingw32 (64-bit)
    ## ─  using session charset: UTF-8
    ##       ─  using options '--no-manual --as-cran' (405ms)
    ##   ✔  checking for file 'styles.cmac/DESCRIPTION'
    ## ─  checking extension type ... Package
    ## ─  this is package 'styles.cmac' version '0.1.0'
    ## ─  package encoding: UTF-8
    ## ✔  checking package namespace information
    ##    checking package dependencies ...     checking package dependencies ...   ✔  checking package dependencies (7.8s)
    ##    checking if this is a source package ...  ✔  checking if this is a source package
    ## ✔  checking if there is a namespace
    ##          checking for executable files ...     checking for executable files ...   ✔  checking for executable files (2.2s)
    ##    checking for hidden files and directories ...     checking for hidden files and directories ...   ✔  checking for hidden files and directories
    ##   ✔  checking for portable file names
    ##   ✔  checking serialization versions
    ##    checking whether package 'styles.cmac' can be installed ...     checking whether package 'styles.cmac' can be installed ... [10s]     checking whether package 'styles.cmac' can be installed ... [10s]   ─  checking whether package 'styles.cmac' can be installed ... [10s] OK (10s)
    ##    checking installed package size ...     checking installed package size ...   ✔  checking installed package size (889ms)
    ##       ✔  checking package directory (352ms)
    ##      checking for future file timestamps ...     checking for future file timestamps ...   ✔  checking for future file timestamps (371ms)
    ##    checking 'build' directory ...  ✔  checking 'build' directory
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information (384ms)
    ##    checking top-level files ...  N  checking top-level files
    ##    Non-standard files/directories found at top level:
    ##      'README.qmd' 'README_files' 'dev'
    ## ✔  checking for left-over files
    ##    checking index information ...     checking index information ...   ✔  checking index information
    ##    checking package subdirectories ...     checking package subdirectories ...   ✔  checking package subdirectories (343ms)
    ##    checking R files for non-ASCII characters ...     checking R files for non-ASCII characters ...   ✔  checking R files for non-ASCII characters
    ##    checking R files for syntax errors ...     checking R files for syntax errors ...   ✔  checking R files for syntax errors
    ##    checking whether the package can be loaded ...     checking whether the package can be loaded ...   ✔  checking whether the package can be loaded (2s)
    ##    checking whether the package can be loaded with stated dependencies ...     checking whether the package can be loaded with stated dependencies ...   ✔  checking whether the package can be loaded with stated dependencies (1.9s)
    ##    checking whether the package can be unloaded cleanly ...     checking whether the package can be unloaded cleanly ...   ✔  checking whether the package can be unloaded cleanly (2s)
    ##    checking whether the namespace can be loaded with stated dependencies ...     checking whether the namespace can be loaded with stated dependencies ...   ✔  checking whether the namespace can be loaded with stated dependencies (1.8s)
    ##    checking whether the namespace can be unloaded cleanly ...     checking whether the namespace can be unloaded cleanly ...   ✔  checking whether the namespace can be unloaded cleanly (2.1s)
    ##    checking loading without being on the library search path ...     checking loading without being on the library search path ...   ✔  checking loading without being on the library search path (2.5s)
    ##    checking dependencies in R code ...     checking dependencies in R code ...   ✔  checking dependencies in R code (1.9s)
    ##    checking S3 generic/method consistency ...     checking S3 generic/method consistency ...   ✔  checking S3 generic/method consistency (2.3s)
    ##    checking replacement functions ...     checking replacement functions ...   ✔  checking replacement functions (1.9s)
    ##    checking foreign function calls ...     checking foreign function calls ...   ✔  checking foreign function calls (1.9s)
    ##    checking R code for possible problems ...     checking R code for possible problems ... [11s]  ─  checking R code for possible problems ... [11s] NOTE (11.1s)
    ##    theme_cmac: no visible global function definition for 'alpha'
    ##    Undefined global functions or variables:
    ##      alpha
    ##    checking Rd files ...     checking Rd files ...   ✔  checking Rd files (435ms)
    ##    checking Rd metadata ...     checking Rd metadata ...   ✔  checking Rd metadata
    ##    checking Rd line widths ...     checking Rd line widths ...   ✔  checking Rd line widths
    ##    checking Rd cross-references ...     checking Rd cross-references ...   ✔  checking Rd cross-references (340ms)
    ##    checking for missing documentation entries ...     checking for missing documentation entries ...   ✔  checking for missing documentation entries (1.8s)
    ##    checking for code/documentation mismatches ...     checking for code/documentation mismatches ...   ✔  checking for code/documentation mismatches (5.5s)
    ##    checking Rd \usage sections ...     checking Rd \usage sections ...   ✔  checking Rd \usage sections (2.8s)
    ##    checking Rd contents ...     checking Rd contents ...   ✔  checking Rd contents
    ##    checking for unstated dependencies in examples ...     checking for unstated dependencies in examples ...   ✔  checking for unstated dependencies in examples (348ms)
    ##          checking installed files from 'inst/doc' ...     checking installed files from 'inst/doc' ...   ✔  checking installed files from 'inst/doc'
    ##    checking files in 'vignettes' ...     checking files in 'vignettes' ...   N  checking files in 'vignettes'
    ##    Files named as vignettes but with no recognized vignette engine:
    ##       'vignettes/simulate-palette.Rmd'
    ##    (Is a VignetteBuilder field missing?)
    ##      checking examples ...     checking examples ...   ✔  checking examples (5.9s)
    ##          checking for unstated dependencies in vignettes ...     checking for unstated dependencies in vignettes ...   ✔  checking for unstated dependencies in vignettes (344ms)
    ##    checking package vignettes in 'inst/doc' ...  ✔  checking package vignettes in 'inst/doc'
    ##          checking re-building of vignette outputs ...     checking re-building of vignette outputs ...   ✔  checking re-building of vignette outputs (9.1s)
    ##    checking for non-standard things in the check directory ...  ✔  checking for non-standard things in the check directory
    ## ✔  checking for detritus in the temp directory
    ##    
    ##    See
    ##      'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpOWcWIM/styles.cmac.Rcheck/00check.log'
    ##    for details.
    ##    
    ##    
    ## 

    ## ── R CMD check results ────────────────────────────────── styles.cmac 0.1.0 ────
    ## Duration: 1m 23.9s
    ## 
    ## ❯ checking top-level files ... NOTE
    ##   Non-standard files/directories found at top level:
    ##     'README.qmd' 'README_files' 'dev'
    ## 
    ## ❯ checking R code for possible problems ... [11s] NOTE
    ##   theme_cmac: no visible global function definition for 'alpha'
    ##   Undefined global functions or variables:
    ##     alpha
    ## 
    ## ❯ checking files in 'vignettes' ... NOTE
    ##   Files named as vignettes but with no recognized vignette engine:
    ##      'vignettes/simulate-palette.Rmd'
    ##   (Is a VignetteBuilder field missing?)
    ## 
    ## 0 errors ✔ | 0 warnings ✔ | 3 notes ✖

``` r
# Build the package
devtools::build()
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (406ms)
    ##       ─  preparing 'styles.cmac': (6.2s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (16s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (3.3s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## 

    ## [1] "C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac_0.1.0.tar.gz"

``` r
# install the package and build the vignette
devtools::install(build_vignettes = TRUE, upgrade = 'never')
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (394ms)
    ##       ─  preparing 'styles.cmac': (5.9s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (15.5s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (3.1s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## Running "C:/PROGRA~1/R/R-42~1.3/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\DANIEL~1.CAR\AppData\Local\Temp\RtmpOWcWIM/styles.cmac_0.1.0.tar.gz" \
    ##   --install-tests 
    ## * installing to library 'C:/Users/daniel.carpenter/AppData/Local/R/win-library/4.2'
    ## * installing *source* package 'styles.cmac' ...
    ## ** using staged installation
    ## ** R
    ## ** inst
    ## ** byte-compile and prepare package for lazy loading
    ## ** help
    ## *** installing help indices
    ## ** building package indices
    ## ** installing vignettes
    ## ** testing if installed package can be loaded from temporary location
    ## ** testing if installed package can be loaded from final location
    ## ** testing if installed package keeps a record of temporary installation path
    ## * DONE (styles.cmac)

``` r
# view the vignettes
# browseVignettes("styles.cmac")
```
