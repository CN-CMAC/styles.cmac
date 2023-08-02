Check and Build Package
================
Daniel Carpenter
2023-08-02

Do this every time you make a major change

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
library(quarto)
```

``` r
quarto::quarto_render('README.qmd')
```

    ## 
    ## 
    ## processing file: README.qmd
    ##   |                                                           |                                                   |   0%  |                                                           |..                                                 |   3%                     |                                                           |....                                               |   7% (unnamed-chunk-1)   |                                                           |.....                                              |  10%                     |                                                           |.......                                            |  14% (unnamed-chunk-2)   |                                                           |.........                                          |  17%                     |                                                           |...........                                        |  21% (unnamed-chunk-3)   |                                                           |............                                       |  24%                     |                                                           |..............                                     |  28% (unnamed-chunk-4)   |                                                           |................                                   |  31%                     |                                                           |..................                                 |  34% (unnamed-chunk-5)   |                                                           |...................                                |  38%                     |                                                           |.....................                              |  41% (unnamed-chunk-6)   |                                                           |.......................                            |  45%                     |                                                           |.........................                          |  48% (unnamed-chunk-7)   |                                                           |..........................                         |  52%                     |                                                           |............................                       |  55% (unnamed-chunk-8)   |                                                           |..............................                     |  59%                     |                                                           |................................                   |  62% (unnamed-chunk-9)   |                                                           |.................................                  |  66%                     |                                                           |...................................                |  69% (unnamed-chunk-10)  |                                                           |.....................................              |  72%                     |                                                           |.......................................            |  76% (unnamed-chunk-11)  |                                                           |........................................           |  79%                     |                                                           |..........................................         |  83% (unnamed-chunk-12)  |                                                           |............................................       |  86%                     |                                                           |..............................................     |  90% (unnamed-chunk-13)  |                                                           |...............................................    |  93%                     |                                                           |.................................................  |  97% (unnamed-chunk-14)  |                                                           |...................................................| 100%                                                                                                                                
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
    ## * checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ... OK
    ## * preparing 'styles.cmac':
    ## * checking DESCRIPTION meta-information ... OK
    ## * installing the package to build vignettes
    ## * creating vignettes ... OK
    ## * checking for LF line-endings in source and make files and shell scripts
    ## * checking for empty or unneeded directories
    ## Omitted 'LazyData' from DESCRIPTION
    ## * building 'styles.cmac_0.1.0.tar.gz'
    ## 
    ## ══ Checking ════════════════════════════════════════════════════════════════════
    ## Setting env vars:
    ## • _R_CHECK_CRAN_INCOMING_REMOTE_: FALSE
    ## • _R_CHECK_CRAN_INCOMING_       : FALSE
    ## • _R_CHECK_FORCE_SUGGESTS_      : FALSE
    ## • NOT_CRAN                      : true
    ## ── R CMD check ─────────────────────────────────────────────────────────────────
    ## * using log directory 'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpeaTHvv/styles.cmac.Rcheck'
    ## * using R version 4.2.3 (2023-03-15 ucrt)
    ## * using platform: x86_64-w64-mingw32 (64-bit)
    ## * using session charset: UTF-8
    ## * using options '--no-manual --as-cran'
    ## * checking for file 'styles.cmac/DESCRIPTION' ... OK
    ## * checking extension type ... Package
    ## * this is package 'styles.cmac' version '0.1.0'
    ## * package encoding: UTF-8
    ## * checking package namespace information ... OK
    ## * checking package dependencies ... OK
    ## * checking if this is a source package ... OK
    ## * checking if there is a namespace ... OK
    ## * checking for executable files ... OK
    ## * checking for hidden files and directories ... OK
    ## * checking for portable file names ... OK
    ## * checking serialization versions ... OK
    ## * checking whether package 'styles.cmac' can be installed ... OK
    ## * checking installed package size ... OK
    ## * checking package directory ... OK
    ## * checking for future file timestamps ... OK
    ## * checking 'build' directory ... OK
    ## * checking DESCRIPTION meta-information ... OK
    ## * checking top-level files ... NOTE
    ## Non-standard files/directories found at top level:
    ##   'README.qmd' 'README_files' 'dev'
    ## * checking for left-over files ... OK
    ## * checking index information ... OK
    ## * checking package subdirectories ... OK
    ## * checking R files for non-ASCII characters ... OK
    ## * checking R files for syntax errors ... OK
    ## * checking whether the package can be loaded ... OK
    ## * checking whether the package can be loaded with stated dependencies ... OK
    ## * checking whether the package can be unloaded cleanly ... OK
    ## * checking whether the namespace can be loaded with stated dependencies ... OK
    ## * checking whether the namespace can be unloaded cleanly ... OK
    ## * checking loading without being on the library search path ... OK
    ## * checking dependencies in R code ... OK
    ## * checking S3 generic/method consistency ... OK
    ## * checking replacement functions ... OK
    ## * checking foreign function calls ... OK
    ## * checking R code for possible problems ... OK
    ## * checking Rd files ... OK
    ## * checking Rd metadata ... OK
    ## * checking Rd line widths ... OK
    ## * checking Rd cross-references ... OK
    ## * checking for missing documentation entries ... OK
    ## * checking for code/documentation mismatches ... OK
    ## * checking Rd \usage sections ... OK
    ## * checking Rd contents ... OK
    ## * checking for unstated dependencies in examples ... OK
    ## * checking installed files from 'inst/doc' ... OK
    ## * checking files in 'vignettes' ... OK
    ## * checking examples ... OK
    ## * checking for unstated dependencies in vignettes ... OK
    ## * checking package vignettes in 'inst/doc' ... OK
    ## * checking re-building of vignette outputs ... OK
    ## * checking for non-standard things in the check directory ... OK
    ## * checking for detritus in the temp directory ... OK
    ## * DONE
    ## 
    ## Status: 1 NOTE
    ## See
    ##   'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpeaTHvv/styles.cmac.Rcheck/00check.log'
    ## for details.

    ## ── R CMD check results ────────────────────────────────── styles.cmac 0.1.0 ────
    ## Duration: 1m 1.8s
    ## 
    ## ❯ checking top-level files ... NOTE
    ##   Non-standard files/directories found at top level:
    ##     'README.qmd' 'README_files' 'dev'
    ## 
    ## 0 errors ✔ | 0 warnings ✔ | 1 note ✖

``` r
# Build the package
devtools::build()
```

    ## * checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ... OK
    ## * preparing 'styles.cmac':
    ## * checking DESCRIPTION meta-information ... OK
    ## * installing the package to build vignettes
    ## * creating vignettes ... OK
    ## * checking for LF line-endings in source and make files and shell scripts
    ## * checking for empty or unneeded directories
    ## Omitted 'LazyData' from DESCRIPTION
    ## * building 'styles.cmac_0.1.0.tar.gz'
    ## 

    ## [1] "C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac_0.1.0.tar.gz"

``` r
# install the package and build the vignette
devtools::install(build_vignettes = TRUE, upgrade = 'never')
```

    ## * checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ... OK
    ## * preparing 'styles.cmac':
    ## * checking DESCRIPTION meta-information ... OK
    ## * installing the package to build vignettes
    ## * creating vignettes ... OK
    ## * checking for LF line-endings in source and make files and shell scripts
    ## * checking for empty or unneeded directories
    ## Omitted 'LazyData' from DESCRIPTION
    ## * building 'styles.cmac_0.1.0.tar.gz'
    ## 
    ## Running "C:/PROGRA~1/R/R-42~1.3/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\DANIEL~1.CAR\AppData\Local\Temp\RtmpeaTHvv/styles.cmac_0.1.0.tar.gz" \
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
