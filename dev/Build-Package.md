Check and Build Package
================
Daniel Carpenter
2024-04-18

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
    ##   |                                                           |                                                   |   0%  |                                                           |.                                                  |   3%                     |                                                           |...                                                |   5% (unnamed-chunk-1)   |                                                           |....                                               |   8%                     |                                                           |......                                             |  11% (unnamed-chunk-2)   |                                                           |.......                                            |  14%                     |                                                           |........                                           |  16% (unnamed-chunk-3)   |                                                           |..........                                         |  19%                     |                                                           |...........                                        |  22% (unnamed-chunk-4)   |                                                           |............                                       |  24%                     |                                                           |..............                                     |  27% (unnamed-chunk-5)   |                                                           |...............                                    |  30%                     |                                                           |.................                                  |  32% (unnamed-chunk-6)   |                                                           |..................                                 |  35%                     |                                                           |...................                                |  38% (unnamed-chunk-7)   |                                                           |.....................                              |  41%                     |                                                           |......................                             |  43% (unnamed-chunk-8)   |                                                           |.......................                            |  46%                     |                                                           |.........................                          |  49% (unnamed-chunk-9)   |                                                           |..........................                         |  51%                     |                                                           |............................                       |  54% (unnamed-chunk-10)  |                                                           |.............................                      |  57%                     |                                                           |..............................                     |  59% (unnamed-chunk-11)  |                                                           |................................                   |  62%                     |                                                           |.................................                  |  65% (unnamed-chunk-12)  |                                                           |..................................                 |  68%                     |                                                           |....................................               |  70% (unnamed-chunk-13)  |                                                           |.....................................              |  73%                     |                                                           |.......................................            |  76% (unnamed-chunk-14)  |                                                           |........................................           |  78%                     |                                                           |.........................................          |  81% (unnamed-chunk-15)  |                                                           |...........................................        |  84%                     |                                                           |............................................       |  86% (unnamed-chunk-16)  |                                                           |.............................................      |  89%                     |                                                           |...............................................    |  92% (unnamed-chunk-17)  |                                                           |................................................   |  95%                     |                                                           |.................................................. |  97% (unnamed-chunk-18)  |                                                           |...................................................| 100%                                                                                                                                
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
    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (431ms)
    ##       ─  preparing 'styles.cmac': (4.9s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (15.9s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.6s)
    ##   ─  checking for empty or unneeded directories
    ##      Removed empty directory 'styles.cmac/tests/testthat'
    ##    Removed empty directory 'styles.cmac/tests'
    ##    Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## ══ Checking ════════════════════════════════════════════════════════════════════
    ## Setting env vars:
    ## • _R_CHECK_CRAN_INCOMING_REMOTE_: FALSE
    ## • _R_CHECK_CRAN_INCOMING_       : FALSE
    ## • _R_CHECK_FORCE_SUGGESTS_      : FALSE
    ## • NOT_CRAN                      : true
    ## ── R CMD check ─────────────────────────────────────────────────────────────────
    ##       ─  using log directory 'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpmiswKM/styles.cmac.Rcheck' (459ms)
    ## ─  using R version 4.2.3 (2023-03-15 ucrt)
    ## ─  using platform: x86_64-w64-mingw32 (64-bit)
    ## ─  using session charset: UTF-8
    ##       ─  using options '--no-manual --as-cran' (391ms)
    ##   ✔  checking for file 'styles.cmac/DESCRIPTION'
    ## ─  checking extension type ... Package
    ## ─  this is package 'styles.cmac' version '0.1.0'
    ## ─  package encoding: UTF-8
    ## ✔  checking package namespace information
    ##    checking package dependencies ...     checking package dependencies ...   ✔  checking package dependencies (7.5s)
    ##    checking if this is a source package ...  ✔  checking if this is a source package
    ## ✔  checking if there is a namespace
    ##          checking for executable files ...     checking for executable files ...   ✔  checking for executable files (905ms)
    ##    checking for hidden files and directories ...  ✔  checking for hidden files and directories
    ##    checking for portable file names ...  ✔  checking for portable file names
    ## ✔  checking serialization versions
    ##      checking whether package 'styles.cmac' can be installed ...     checking whether package 'styles.cmac' can be installed ... [11s]     checking whether package 'styles.cmac' can be installed ... [11s]   ─  checking whether package 'styles.cmac' can be installed ... [11s] OK (10.6s)
    ##    checking installed package size ...     checking installed package size ...   ✔  checking installed package size
    ##       ✔  checking package directory (358ms)
    ##      checking for future file timestamps ...     checking for future file timestamps ...   ✔  checking for future file timestamps (447ms)
    ##    checking 'build' directory ...  ✔  checking 'build' directory
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information (372ms)
    ## N  checking top-level files
    ##    Non-standard files/directories found at top level:
    ##        'README.qmd' 'README_files' 'dev'
    ## ✔  checking for left-over files
    ##    checking index information ...     checking index information ...   ✔  checking index information (341ms)
    ##    checking package subdirectories ...     checking package subdirectories ...   ✔  checking package subdirectories (363ms)
    ##    checking R files for non-ASCII characters ...     checking R files for non-ASCII characters ...   ✔  checking R files for non-ASCII characters
    ##    checking R files for syntax errors ...     checking R files for syntax errors ...   ✔  checking R files for syntax errors
    ##    checking whether the package can be loaded ...     checking whether the package can be loaded ...   ✔  checking whether the package can be loaded (2.1s)
    ##    checking whether the package can be loaded with stated dependencies ...     checking whether the package can be loaded with stated dependencies ...   ✔  checking whether the package can be loaded with stated dependencies (2.1s)
    ##    checking whether the package can be unloaded cleanly ...     checking whether the package can be unloaded cleanly ...   ✔  checking whether the package can be unloaded cleanly (2.2s)
    ##    checking whether the namespace can be loaded with stated dependencies ...     checking whether the namespace can be loaded with stated dependencies ...   ✔  checking whether the namespace can be loaded with stated dependencies (2.1s)
    ##    checking whether the namespace can be unloaded cleanly ...     checking whether the namespace can be unloaded cleanly ...   ✔  checking whether the namespace can be unloaded cleanly (2.1s)
    ##    checking loading without being on the library search path ...     checking loading without being on the library search path ...   ✔  checking loading without being on the library search path (3.7s)
    ##    checking dependencies in R code ...     checking dependencies in R code ...   ✔  checking dependencies in R code (2.1s)
    ##    checking S3 generic/method consistency ...     checking S3 generic/method consistency ...   ✔  checking S3 generic/method consistency (2.6s)
    ##    checking replacement functions ...     checking replacement functions ...   ✔  checking replacement functions (2.1s)
    ##    checking foreign function calls ...     checking foreign function calls ...   ✔  checking foreign function calls (2s)
    ##    checking R code for possible problems ...     checking R code for possible problems ... [12s]  ─  checking R code for possible problems ... [12s] NOTE (11.5s)
    ##    theme_cmac: no visible global function definition for 'alpha'
    ##    Undefined global functions or variables:
    ##      alpha
    ##    checking Rd files ...     checking Rd files ...   ✔  checking Rd files (546ms)
    ##    checking Rd metadata ...     checking Rd metadata ...   ✔  checking Rd metadata
    ##    checking Rd line widths ...     checking Rd line widths ...   ✔  checking Rd line widths
    ##    checking Rd cross-references ...     checking Rd cross-references ...   ✔  checking Rd cross-references (454ms)
    ##    checking for missing documentation entries ...     checking for missing documentation entries ...   ✔  checking for missing documentation entries (2s)
    ##    checking for code/documentation mismatches ...     checking for code/documentation mismatches ...   ✔  checking for code/documentation mismatches (5.9s)
    ##    checking Rd \usage sections ...     checking Rd \usage sections ...   ✔  checking Rd \usage sections (3s)
    ##    checking Rd contents ...     checking Rd contents ...   ✔  checking Rd contents
    ##    checking for unstated dependencies in examples ...     checking for unstated dependencies in examples ...   ✔  checking for unstated dependencies in examples (341ms)
    ##      checking installed files from 'inst/doc' ...     checking installed files from 'inst/doc' ...   ✔  checking installed files from 'inst/doc'
    ##    checking files in 'vignettes' ...     checking files in 'vignettes' ...   ✔  checking files in 'vignettes'
    ##      checking examples ...     checking examples ...   ✔  checking examples (6s)
    ##      checking for unstated dependencies in vignettes ...     checking for unstated dependencies in vignettes ...   ✔  checking for unstated dependencies in vignettes (355ms)
    ##    checking package vignettes in 'inst/doc' ...  ✔  checking package vignettes in 'inst/doc'
    ##      checking re-building of vignette outputs ...     checking re-building of vignette outputs ...   ✔  checking re-building of vignette outputs (9.6s)
    ## ✔  checking for non-standard things in the check directory
    ##   ✔  checking for detritus in the temp directory
    ##    
    ##    See
    ##      'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpmiswKM/styles.cmac.Rcheck/00check.log'
    ##    for details.
    ##    
    ##    
    ## 

    ## ── R CMD check results ────────────────────────────────── styles.cmac 0.1.0 ────
    ## Duration: 1m 27.5s
    ## 
    ## ❯ checking top-level files ... NOTE
    ##   Non-standard files/directories found at top level:
    ##     'README.qmd' 'README_files' 'dev'
    ## 
    ## ❯ checking R code for possible problems ... [12s] NOTE
    ##   theme_cmac: no visible global function definition for 'alpha'
    ##   Undefined global functions or variables:
    ##     alpha
    ## 
    ## 0 errors ✔ | 0 warnings ✔ | 2 notes ✖

``` r
# Build the package
devtools::build()
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (497ms)
    ##       ─  preparing 'styles.cmac': (6s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (15.7s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.5s)
    ##   ─  checking for empty or unneeded directories
    ##      Removed empty directory 'styles.cmac/tests/testthat'
    ##    Removed empty directory 'styles.cmac/tests'
    ##    Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## 

    ## [1] "C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac_0.1.0.tar.gz"

``` r
# install the package and build the vignette
devtools::install(build_vignettes = TRUE, upgrade = 'never')
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (427ms)
    ##       ─  preparing 'styles.cmac': (5s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (16.9s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.6s)
    ##   ─  checking for empty or unneeded directories
    ##      Removed empty directory 'styles.cmac/tests/testthat'
    ##    Removed empty directory 'styles.cmac/tests'
    ##    Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## Running "C:/PROGRA~1/R/R-42~1.3/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\DANIEL~1.CAR\AppData\Local\Temp\RtmpmiswKM/styles.cmac_0.1.0.tar.gz" \
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
