Check and Build Package
================
Daniel Carpenter
2024-03-05

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
    ## Writing 'NAMESPACE'
    ## Writing 'theme_cmac.Rd'

``` r
quarto::quarto_render('README.qmd')
```

    ## 
    ## 
    ## processing file: README.qmd
    ##   |                                                           |                                                   |   0%  |                                                           |..                                                 |   3%                     |                                                           |...                                                |   6% (unnamed-chunk-1)   |                                                           |.....                                              |   9%                     |                                                           |......                                             |  12% (unnamed-chunk-2)   |                                                           |........                                           |  15%                     |                                                           |.........                                          |  18% (unnamed-chunk-3)   |                                                           |...........                                        |  21%                     |                                                           |............                                       |  24% (unnamed-chunk-4)   |                                                           |..............                                     |  27%                     |                                                           |...............                                    |  30% (unnamed-chunk-5)   |                                                           |.................                                  |  33%                     |                                                           |...................                                |  36% (unnamed-chunk-6)   |                                                           |....................                               |  39%                     |                                                           |......................                             |  42% (unnamed-chunk-7)   |                                                           |.......................                            |  45%                     |                                                           |.........................                          |  48% (unnamed-chunk-8)   |                                                           |..........................                         |  52%                     |                                                           |............................                       |  55% (unnamed-chunk-9)   |                                                           |.............................                      |  58%                     |                                                           |...............................                    |  61% (unnamed-chunk-10)  |                                                           |................................                   |  64%                     |                                                           |..................................                 |  67% (unnamed-chunk-11)  |                                                           |....................................               |  70%                     |                                                           |.....................................              |  73% (unnamed-chunk-12)  |                                                           |.......................................            |  76%                     |                                                           |........................................           |  79% (unnamed-chunk-13)  |                                                           |..........................................         |  82%                     |                                                           |...........................................        |  85% (unnamed-chunk-14)  |                                                           |.............................................      |  88%                     |                                                           |..............................................     |  91% (unnamed-chunk-15)  |                                                           |................................................   |  94%                     |                                                           |.................................................  |  97% (unnamed-chunk-16)  |                                                           |...................................................| 100%                                                                                                                                
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
    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (420ms)
    ##       ─  preparing 'styles.cmac': (4.1s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (11.4s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.2s)
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
    ##       ─  using log directory 'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpCiQVS5/styles.cmac.Rcheck' (460ms)
    ## ─  using R version 4.2.3 (2023-03-15 ucrt)
    ## ─  using platform: x86_64-w64-mingw32 (64-bit)
    ## ─  using session charset: UTF-8
    ##       ─  using options '--no-manual --as-cran' (344ms)
    ##   ✔  checking for file 'styles.cmac/DESCRIPTION'
    ## ─  checking extension type ... Package
    ## ─  this is package 'styles.cmac' version '0.1.0'
    ## ─  package encoding: UTF-8
    ## ✔  checking package namespace information
    ##    checking package dependencies ...     checking package dependencies ...   ✔  checking package dependencies (10.4s)
    ##    checking if this is a source package ...  ✔  checking if this is a source package
    ## ✔  checking if there is a namespace
    ##          checking for executable files ...     checking for executable files ...   ✔  checking for executable files (2s)
    ##    checking for hidden files and directories ...  ✔  checking for hidden files and directories
    ##    checking for portable file names ...  ✔  checking for portable file names
    ## ✔  checking serialization versions
    ##      checking whether package 'styles.cmac' can be installed ...     checking whether package 'styles.cmac' can be installed ...   ✔  checking whether package 'styles.cmac' can be installed (7.2s)
    ##    checking installed package size ...     checking installed package size ...   ✔  checking installed package size (900ms)
    ##       ✔  checking package directory (336ms)
    ##      checking for future file timestamps ...     checking for future file timestamps ...   ✔  checking for future file timestamps (369ms)
    ##    checking 'build' directory ...  ✔  checking 'build' directory
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information (371ms)
    ## N  checking top-level files
    ##      Non-standard files/directories found at top level:
    ##      'README.qmd' 'README_files' 'dev'
    ## ✔  checking for left-over files
    ##    checking index information ...     checking index information ...   ✔  checking index information (343ms)
    ##    checking package subdirectories ...     checking package subdirectories ...   ✔  checking package subdirectories (359ms)
    ##    checking R files for non-ASCII characters ...     checking R files for non-ASCII characters ...   ✔  checking R files for non-ASCII characters
    ##    checking R files for syntax errors ...     checking R files for syntax errors ...   ✔  checking R files for syntax errors
    ##    checking whether the package can be loaded ...     checking whether the package can be loaded ...   ✔  checking whether the package can be loaded (1.1s)
    ##    checking whether the package can be loaded with stated dependencies ...     checking whether the package can be loaded with stated dependencies ...   ✔  checking whether the package can be loaded with stated dependencies (893ms)
    ##    checking whether the package can be unloaded cleanly ...     checking whether the package can be unloaded cleanly ...   ✔  checking whether the package can be unloaded cleanly (999ms)
    ##    checking whether the namespace can be loaded with stated dependencies ...     checking whether the namespace can be loaded with stated dependencies ...   ✔  checking whether the namespace can be loaded with stated dependencies (995ms)
    ##    checking whether the namespace can be unloaded cleanly ...     checking whether the namespace can be unloaded cleanly ...   ✔  checking whether the namespace can be unloaded cleanly (1.2s)
    ##    checking loading without being on the library search path ...     checking loading without being on the library search path ...   ✔  checking loading without being on the library search path (1.6s)
    ##    checking dependencies in R code ...     checking dependencies in R code ...   ✔  checking dependencies in R code (996ms)
    ##    checking S3 generic/method consistency ...     checking S3 generic/method consistency ...   ✔  checking S3 generic/method consistency (1.5s)
    ##    checking replacement functions ...     checking replacement functions ...   ✔  checking replacement functions (996ms)
    ##    checking foreign function calls ...     checking foreign function calls ...   ✔  checking foreign function calls (996ms)
    ##    checking R code for possible problems ...     checking R code for possible problems ...   N  checking R code for possible problems (7.6s)
    ##    theme_cmac: no visible global function definition for 'alpha'
    ##    Undefined global functions or variables:
    ##      alpha
    ##    checking Rd files ...     checking Rd files ...   ✔  checking Rd files (452ms)
    ##    checking Rd metadata ...     checking Rd metadata ...   ✔  checking Rd metadata
    ##    checking Rd line widths ...     checking Rd line widths ...   ✔  checking Rd line widths
    ##    checking Rd cross-references ...     checking Rd cross-references ...   ✔  checking Rd cross-references (454ms)
    ##    checking for missing documentation entries ...     checking for missing documentation entries ...   ✔  checking for missing documentation entries (1s)
    ##    checking for code/documentation mismatches ...     checking for code/documentation mismatches ...   ✔  checking for code/documentation mismatches (3s)
    ##    checking Rd \usage sections ...     checking Rd \usage sections ...   ✔  checking Rd \usage sections (1.9s)
    ##    checking Rd contents ...     checking Rd contents ...   ✔  checking Rd contents
    ##    checking for unstated dependencies in examples ...     checking for unstated dependencies in examples ...   ✔  checking for unstated dependencies in examples (345ms)
    ##      checking installed files from 'inst/doc' ...     checking installed files from 'inst/doc' ...   ✔  checking installed files from 'inst/doc'
    ##    checking files in 'vignettes' ...     checking files in 'vignettes' ...   ✔  checking files in 'vignettes'
    ##      checking examples ...     checking examples ...   ✔  checking examples (4.3s)
    ##          checking for unstated dependencies in vignettes ...     checking for unstated dependencies in vignettes ...   ✔  checking for unstated dependencies in vignettes (358ms)
    ##    checking package vignettes in 'inst/doc' ...  ✔  checking package vignettes in 'inst/doc'
    ##      checking re-building of vignette outputs ...     checking re-building of vignette outputs ...   ✔  checking re-building of vignette outputs (7.1s)
    ##    checking for non-standard things in the check directory ...  ✔  checking for non-standard things in the check directory
    ## ✔  checking for detritus in the temp directory
    ##    
    ##    See
    ##      'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpCiQVS5/styles.cmac.Rcheck/00check.log'
    ##    for details.
    ##    
    ##    
    ## 

    ## ── R CMD check results ────────────────────────────────── styles.cmac 0.1.0 ────
    ## Duration: 1m 3.5s
    ## 
    ## ❯ checking top-level files ... NOTE
    ##   Non-standard files/directories found at top level:
    ##     'README.qmd' 'README_files' 'dev'
    ## 
    ## ❯ checking R code for possible problems ... NOTE
    ##   theme_cmac: no visible global function definition for 'alpha'
    ##   Undefined global functions or variables:
    ##     alpha
    ## 
    ## 0 errors ✔ | 0 warnings ✔ | 2 notes ✖

``` r
# Build the package
devtools::build()
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (423ms)
    ##       ─  preparing 'styles.cmac': (4.1s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (11.3s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.2s)
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

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (417ms)
    ##       ─  preparing 'styles.cmac': (4.1s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (11.4s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (2.2s)
    ##   ─  checking for empty or unneeded directories
    ##      Removed empty directory 'styles.cmac/tests/testthat'
    ##    Removed empty directory 'styles.cmac/tests'
    ##    Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_0.1.0.tar.gz'
    ##      
    ## Running "C:/PROGRA~1/R/R-42~1.3/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\DANIEL~1.CAR\AppData\Local\Temp\RtmpCiQVS5/styles.cmac_0.1.0.tar.gz" \
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
