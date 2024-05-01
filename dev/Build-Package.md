Check and Build Package
================
Daniel Carpenter
2024-05-01

Do this every time you make a major change

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
library(pkgdown)
```

    ## 
    ## Attaching package: 'pkgdown'

    ## The following object is masked from 'package:devtools':
    ## 
    ##     build_site

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
devtools::build_readme()
```

    ## ℹ Installing styles.cmac in temporary library
    ## ℹ Building
    ##   'C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac/README.Rmd'

``` r
pkgdown::build_site()
```

    ## -- Installing package into temporary library -----------------------------------

    ## Warning: package 'styles.cmac' is in use and will not be installed

    ## == Building pkgdown site =======================================================
    ## Reading from: 'C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac'
    ## Writing to:   'C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac/docs'
    ## -- Initialising site -----------------------------------------------------------
    ## -- Building home ---------------------------------------------------------------
    ## Reading 'LICENSE.md'
    ## Writing '404.html'
    ## -- Building function reference -------------------------------------------------
    ## Reading 'man/getPalette.Rd'
    ## Reading 'man/getTimesNewRomanFamily.Rd'
    ## Reading 'man/kDollarsFormat.Rd'
    ## Reading 'man/offsetPalette.Rd'
    ## Reading 'man/scale_cmac.Rd'
    ## Reading 'man/scale_color_cmac.Rd'
    ## Reading 'man/scale_fill_cmac.Rd'
    ## Reading 'man/subsetAndFormatPalette.Rd'
    ## Reading 'man/theme_cmac.Rd'
    ## -- Building articles -----------------------------------------------------------
    ## Reading 'vignettes/intro-to-package.Rmd'
    ## Reading 'vignettes/simulate-palette.Rmd'
    ## Writing 'sitemap.xml'
    ## -- Building search index -------------------------------------------------------
    ## == DONE ========================================================================

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
    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (436ms)
    ##       ─  preparing 'styles.cmac': (11.3s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (31s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (4.8s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_1.3.2.tar.gz'
    ##      
    ## ══ Checking ════════════════════════════════════════════════════════════════════
    ## Setting env vars:
    ## • _R_CHECK_CRAN_INCOMING_REMOTE_: FALSE
    ## • _R_CHECK_CRAN_INCOMING_       : FALSE
    ## • _R_CHECK_FORCE_SUGGESTS_      : FALSE
    ## • NOT_CRAN                      : true
    ## ── R CMD check ─────────────────────────────────────────────────────────────────
    ##       ─  using log directory 'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpqQNQxe/styles.cmac.Rcheck' (466ms)
    ## ─  using R version 4.2.3 (2023-03-15 ucrt)
    ## ─  using platform: x86_64-w64-mingw32 (64-bit)
    ## ─  using session charset: UTF-8
    ##       ─  using options '--no-manual --as-cran' (586ms)
    ##   ✔  checking for file 'styles.cmac/DESCRIPTION'
    ## ─  checking extension type ... Package
    ## ─  this is package 'styles.cmac' version '1.3.2'
    ## ─  package encoding: UTF-8
    ## ✔  checking package namespace information
    ##    checking package dependencies ...     checking package dependencies ...   ✔  checking package dependencies (9.8s)
    ##    checking if this is a source package ...  ✔  checking if this is a source package
    ## ✔  checking if there is a namespace
    ##          checking for executable files ...     checking for executable files ...   ✔  checking for executable files (3.1s)
    ##    checking for hidden files and directories ...  ✔  checking for hidden files and directories
    ##    checking for portable file names ...  ✔  checking for portable file names
    ## ✔  checking serialization versions
    ##      checking whether package 'styles.cmac' can be installed ...     checking whether package 'styles.cmac' can be installed ... [14s]     checking whether package 'styles.cmac' can be installed ... [14s]   ─  checking whether package 'styles.cmac' can be installed ... [14s] OK (14.2s)
    ##    checking installed package size ...     checking installed package size ...   ✔  checking installed package size (1.1s)
    ##       ✔  checking package directory (606ms)
    ##      checking for future file timestamps ...     checking for future file timestamps ...   ✔  checking for future file timestamps (647ms)
    ##    checking 'build' directory ...  ✔  checking 'build' directory
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information (383ms)
    ## N  checking top-level files
    ##      Non-standard file/directory found at top level:
    ##      'dev'
    ## ✔  checking for left-over files
    ##    checking index information ...     checking index information ...   ✔  checking index information (345ms)
    ##    checking package subdirectories ...     checking package subdirectories ...   ✔  checking package subdirectories (363ms)
    ##    checking R files for non-ASCII characters ...     checking R files for non-ASCII characters ...   ✔  checking R files for non-ASCII characters
    ##    checking R files for syntax errors ...     checking R files for syntax errors ...   ✔  checking R files for syntax errors
    ##    checking whether the package can be loaded ...     checking whether the package can be loaded ...   ✔  checking whether the package can be loaded (2.1s)
    ##    checking whether the package can be loaded with stated dependencies ...     checking whether the package can be loaded with stated dependencies ...   ✔  checking whether the package can be loaded with stated dependencies (1.9s)
    ##    checking whether the package can be unloaded cleanly ...     checking whether the package can be unloaded cleanly ...   ✔  checking whether the package can be unloaded cleanly (2s)
    ##    checking whether the namespace can be loaded with stated dependencies ...     checking whether the namespace can be loaded with stated dependencies ...   ✔  checking whether the namespace can be loaded with stated dependencies (1.9s)
    ##    checking whether the namespace can be unloaded cleanly ...     checking whether the namespace can be unloaded cleanly ...   ✔  checking whether the namespace can be unloaded cleanly (2.1s)
    ##    checking loading without being on the library search path ...     checking loading without being on the library search path ...   ✔  checking loading without being on the library search path (3.2s)
    ##    checking dependencies in R code ...     checking dependencies in R code ...   N  checking dependencies in R code (2.1s)
    ##    Namespaces in Imports field not imported from:
    ##      'cowplot' 'tidyverse'
    ##      All declared Imports should be used.
    ##    checking S3 generic/method consistency ...     checking S3 generic/method consistency ...   ✔  checking S3 generic/method consistency (2.5s)
    ##    checking replacement functions ...     checking replacement functions ...   ✔  checking replacement functions (1.9s)
    ##    checking foreign function calls ...     checking foreign function calls ...   ✔  checking foreign function calls (2s)
    ##    checking R code for possible problems ...     checking R code for possible problems ... [12s]  ─  checking R code for possible problems ... [12s] NOTE (11.5s)
    ##    theme_cmac: no visible global function definition for 'alpha'
    ##    Undefined global functions or variables:
    ##      alpha
    ##    checking Rd files ...     checking Rd files ...   ✔  checking Rd files (540ms)
    ##    checking Rd metadata ...     checking Rd metadata ...   ✔  checking Rd metadata
    ##    checking Rd line widths ...     checking Rd line widths ...   ✔  checking Rd line widths
    ##    checking Rd cross-references ...     checking Rd cross-references ...   ✔  checking Rd cross-references (450ms)
    ##    checking for missing documentation entries ...     checking for missing documentation entries ...   ✔  checking for missing documentation entries (2.1s)
    ##    checking for code/documentation mismatches ...     checking for code/documentation mismatches ...   ✔  checking for code/documentation mismatches (6s)
    ##    checking Rd \usage sections ...     checking Rd \usage sections ...   ✔  checking Rd \usage sections (3s)
    ##    checking Rd contents ...     checking Rd contents ...   ✔  checking Rd contents
    ##    checking for unstated dependencies in examples ...     checking for unstated dependencies in examples ...   ✔  checking for unstated dependencies in examples (346ms)
    ##      checking installed files from 'inst/doc' ...     checking installed files from 'inst/doc' ...   ✔  checking installed files from 'inst/doc'
    ##    checking files in 'vignettes' ...     checking files in 'vignettes' ...   ✔  checking files in 'vignettes'
    ##      checking examples ...     checking examples ...   ✔  checking examples (6.6s)
    ##          checking for unstated dependencies in vignettes ...     checking for unstated dependencies in vignettes ...   ✔  checking for unstated dependencies in vignettes (364ms)
    ##    checking package vignettes in 'inst/doc' ...     checking package vignettes in 'inst/doc' ...   ✔  checking package vignettes in 'inst/doc'
    ##          checking re-building of vignette outputs ...     checking re-building of vignette outputs ... [27s]     checking re-building of vignette outputs ... [27s]   ─  checking re-building of vignette outputs ... [27s] OK (27s)
    ##    checking for non-standard things in the check directory ...  ✔  checking for non-standard things in the check directory
    ## ✔  checking for detritus in the temp directory
    ##    
    ##    See
    ##      'C:/Users/daniel.carpenter/AppData/Local/Temp/RtmpqQNQxe/styles.cmac.Rcheck/00check.log'
    ##    for details.
    ##    
    ##    
    ## 

    ## ── R CMD check results ────────────────────────────────── styles.cmac 1.3.2 ────
    ## Duration: 1m 55.6s
    ## 
    ## ❯ checking top-level files ... NOTE
    ##   Non-standard file/directory found at top level:
    ##     'dev'
    ## 
    ## ❯ checking dependencies in R code ... NOTE
    ##   Namespaces in Imports field not imported from:
    ##     'cowplot' 'tidyverse'
    ##     All declared Imports should be used.
    ## 
    ## ❯ checking R code for possible problems ... [12s] NOTE
    ##   theme_cmac: no visible global function definition for 'alpha'
    ##   Undefined global functions or variables:
    ##     alpha
    ## 
    ## 0 errors ✔ | 0 warnings ✔ | 3 notes ✖

``` r
# Build the package
devtools::build()
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (454ms)
    ##       ─  preparing 'styles.cmac': (9.1s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (29.9s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (4.4s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_1.3.2.tar.gz'
    ##      
    ## 

    ## [1] "C:/Users/daniel.carpenter/Documents/GitHub/FPA-GitHub/CN-CMAC/styles.cmac_1.3.2.tar.gz"

``` r
# install the package and build the vignette
devtools::install(build_vignettes = TRUE, upgrade = 'never')
```

    ##          checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...     checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' ...   ✔  checking for file 'C:\Users\daniel.carpenter\Documents\GitHub\FPA-GitHub\CN-CMAC\styles.cmac/DESCRIPTION' (418ms)
    ##       ─  preparing 'styles.cmac': (8.4s)
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  installing the package to build vignettes
    ##          creating vignettes ...     creating vignettes ...   ✔  creating vignettes (30.3s)
    ##       ─  checking for LF line-endings in source and make files and shell scripts (4.6s)
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'styles.cmac_1.3.2.tar.gz'
    ##      
    ## Running "C:/PROGRA~1/R/R-42~1.3/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\DANIEL~1.CAR\AppData\Local\Temp\RtmpqQNQxe/styles.cmac_1.3.2.tar.gz" \
    ##   --install-tests 
    ## * installing to library 'C:/Users/daniel.carpenter/AppData/Local/R/win-library/4.2'
    ## * installing *source* package 'styles.cmac' ...
    ## ** using staged installation
    ## ** R
    ## ** inst
    ## ** byte-compile and prepare package for lazy loading
    ## ** help
    ## *** installing help indices
    ## *** copying figures
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
