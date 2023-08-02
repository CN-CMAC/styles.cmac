CMAC Brand in ggplot2 - Installation and Examples
================
Daniel Carpenter

- <a href="#styles.cmac" id="toc-styles.cmac"><span
  class="toc-section-number">1</span> <code>styles.cmac</code></a>
  - <a href="#overview" id="toc-overview"><span
    class="toc-section-number">1.1</span> Overview</a>
  - <a href="#installation-of-package"
    id="toc-installation-of-package"><span
    class="toc-section-number">1.2</span> Installation of Package</a>
  - <a href="#viewing-the-vignette" id="toc-viewing-the-vignette"><span
    class="toc-section-number">1.3</span> Viewing the Vignette</a>
  - <a href="#examples" id="toc-examples"><span
    class="toc-section-number">1.4</span> Examples</a>
    - <a href="#create-a-basic-plot-structure"
      id="toc-create-a-basic-plot-structure"><span
      class="toc-section-number">1.4.1</span> Create a basic plot
      structure</a>
    - <a href="#use-multiple-colors" id="toc-use-multiple-colors"><span
      class="toc-section-number">1.4.2</span> Use Multiple Colors</a>
    - <a href="#use-only-1-color" id="toc-use-only-1-color"><span
      class="toc-section-number">1.4.3</span> Use only <code>1</code>
      Color</a>
    - <a href="#how-to-use-times-new-roman"
      id="toc-how-to-use-times-new-roman"><span
      class="toc-section-number">1.4.4</span> How to use Times New Roman</a>
  - <a href="#colors-deep-dive" id="toc-colors-deep-dive"><span
    class="toc-section-number">1.5</span> Colors Deep Dive</a>
    - <a href="#what-colors-are-available"
      id="toc-what-colors-are-available"><span
      class="toc-section-number">1.5.1</span> What Colors are Available?</a>
    - <a href="#how-to-get-1-color" id="toc-how-to-get-1-color"><span
      class="toc-section-number">1.5.2</span> How to get <code>1</code>
      color?</a>
    - <a href="#how-to-get-1-colors" id="toc-how-to-get-1-colors"><span
      class="toc-section-number">1.5.3</span> How to get <code>&gt;1</code>
      colors</a>

# `styles.cmac`

<!-- badges: start -->
<!-- badges: end -->

## Overview

> - CMAC Brand in `ggplot2`
> - Package that streamlines color palette usage, adapated from the
>   [Tableau 10
>   Palette](https://www.tableau.com/blog/colors-upgrade-tableau-10-56782)
> - See colorblind statistics for the [fill
>   palette](https://davidmathlogic.com/colorblind/#%23BECDE0-%23FFD597-%23F6B7B4-%23BEE0D2-%23E4C6DC-%23BDDBE1-%23F7E5B3-%23DCDADA-%23FCC8DA-%23E5CFC5)
>   and the [color (*line*)
>   palette](https://davidmathlogic.com/colorblind/#%236388B4-%23E68900-%23EB4B43-%2354AC88-%23B07AA1-%233C9DAA-%23C5A952-%238A807E-%23D16D91-%23945430)
> - ***PLEASE SEE THE PACKAGE <u>VIGNETTE</u> FOR MORE DETAILED
>   EXAMPLES***

<br>

## Installation of Package

You can install the development version of styles.cmac from
[GitHub](https://github.com/) with:

``` r
# Install devtools if not installed (for GitHub Package)
if (!require("devtools")) install.packages("devtools")

devtools::install_github("CN-CMAC/styles.cmac", build_vignettes = TRUE)
```

## Viewing the Vignette

To see in-depth documentation of the package, please uncomment and issue
the following commands.

``` r
# See what vignettes are available
browseVignettes('styles.cmac')
```

## Examples

``` r
library(styles.cmac)
```

### Create a basic plot structure

> Plot that does *NOT* include CMAC Styles

``` r
library(ggplot2)

basePlot <- ggplot(data = mtcars,
               aes(x     = wt,
                   shape = as.factor(cyl),
                   color = as.factor(cyl),
                   y     = mpg
                   )
               ) +
          geom_point(size = 5)
basePlot # Display
```

![](README_files/figure-commonmark/unnamed-chunk-4-1.png)

### Use Multiple Colors

#### Default Color Palette

> Using CMAC Style

``` r
basePlot +
  
  # Use the CMAC color palette
  scale_color_cmac() +
  
  # Get the CMAC ggplot theme
  theme_cmac()
```

![](README_files/figure-commonmark/unnamed-chunk-5-1.png)

#### Override Color with Fill

> Using CMAC Style

``` r
basePlot +
  
  # Use the CMAC Fill palette (override)
  scale_color_cmac(overrideWithFill = TRUE) +  
  
  # Get the CMAC ggplot theme
  theme_cmac()
```

![](README_files/figure-commonmark/unnamed-chunk-6-1.png)

### Use only `1` Color

> Using CMAC Style

``` r
basePlot + 
  
  # Use only a single color (note using line palette)
  geom_point(color = scale_cmac('blue', 'blue2'),
             size  = 5) +
  
  # Get the CMAC ggplot theme
  theme_cmac()
```

![](README_files/figure-commonmark/unnamed-chunk-7-1.png)

### How to use Times New Roman

> Use this setting for ***non-website*** reporting.

``` r
basePlot +
  
  # Use the CMAC color palette
  scale_color_cmac() +
  
  # Get the CMAC ggplot theme
  theme_cmac(inTimesNewRoman = TRUE)
```

![](README_files/figure-commonmark/unnamed-chunk-8-1.png)

## Colors Deep Dive

### What Colors are Available?

- Notice `displayNames = TRUE`, which show you what hex codes are
  associated with the color names.

- Default is `displayNames = FALSE` for best functionality with plotting

#### Fill colors

``` r
scale_cmac('fill', displayNames = TRUE)
```

         blue    orange       red     green    purple     blue1    yellow      gray 
    "#BECDE0" "#FFD597" "#F6B7B4" "#BEE0D2" "#E4C6DC" "#BDDBE1" "#F7E5B3" "#DCDADA" 
         pink       tan 
    "#FCC8DA" "#E5CFC5" 

#### Line colors

``` r
scale_cmac('color', displayNames = TRUE)
```

         blue    orange       red     green    purple     blue1    yellow      gray 
    "#6388B4" "#E68900" "#EB4B43" "#54AC88" "#B07AA1" "#3C9DAA" "#C5A952" "#8A807E" 
         pink       tan 
    "#D16D91" "#945430" 

#### Blue and Gray colors, like the background of slide decks

``` r
scale_cmac('blue', displayNames = TRUE)
```

        blue1     blue2     blue3     blue4 
    "#183C5C" "#1F4E79" "#91AACB" "#BECDE0" 

``` r
scale_cmac('gray', displayNames = TRUE)
```

        white    gray10     gray9     gray8     gray7     gray6     gray5     gray4 
    "#FFFFFF" "#FAFAFA" "#F1F1F1" "#EAEAEA" "#D9D9D9" "#CFCECE" "#A6A6A6" "#646464" 
        gray3     gray2     gray1 
    "#444444" "#363636" "#222222" 

#### Text, Grays, and Blues

- Common colors that you might need

``` r
scale_cmac('text') # Text (dark gray) 
```

    [1] "#646464"

``` r
scale_cmac('blue') # Grays that are in the brand
```

    [1] "#183C5C" "#1F4E79" "#91AACB" "#BECDE0"

``` r
scale_cmac('gray') # Blues that are in the brand
```

     [1] "#FFFFFF" "#FAFAFA" "#F1F1F1" "#EAEAEA" "#D9D9D9" "#CFCECE" "#A6A6A6"
     [8] "#646464" "#444444" "#363636" "#222222"

### How to get `1` color?

``` r
# Single color from the fill palette
scale_cmac('fill', 'red')
```

    [1] "#F6B7B4"

``` r
# Single color from the base palette
scale_cmac('gray', 'gray3')
```

    [1] "#444444"

``` r
# Single color from the base palette
scale_cmac('blue', 'blue2')
```

    [1] "#1F4E79"

### How to get `>1` colors

``` r
# Get the first 3 colors in the line palette
scale_cmac('color', 3)
```

    [1] "#6388B4" "#E68900" "#EB4B43"

``` r
# Get the last 3 colors in the fill palette
scale_cmac('color')[6:8]
```

    [1] "#3C9DAA" "#C5A952" "#8A807E"

``` r
# Or access specific colors all at once
scale_cmac('color', 'blue', 'orange', 'green', 'yellow')
```

    [1] "#6388B4" "#E68900" "#54AC88" "#C5A952"
