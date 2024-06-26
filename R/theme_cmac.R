#' @title       Create a CMAC Theme for ggplot
#' @description This function creates a custom theme for ggplot with several theme modifications
#' @return      The function returns a ggplot theme
#'
#' @param inTimesNewRoman TRUE if plot in Times New Roman Font (Default), FALSE uses ggplot main font. Only works on Windows.
#' @param borderMode the theme borderMode, depending on `default` use, `facet` usage, or `borders`.
#' @param ... Additional parameters that can be passed into the theme() function. Added last to theme.
#'
#' @importFrom ggplot2 theme element_text element_blank element_line element_rect margin coord_cartesian theme_set unit
#'
#' @export theme_cmac
#'
#' @examples
#' library(ggplot2)
#' library(styles.cmac)
#'
#' # Create basic ggplot object
#' ggplotObject <- ggplot(mtcars, aes(y=mpg, x=wt, color=as.factor(cyl))) +
#'     geom_point(size = 3, alpha = 0.5) +
#'     scale_color_cmac()
#'
#' # Add the theme
#' ggplotObject + theme_cmac()
#'
#' # Add the theme with additional optional theme parameters
#' ggplotObject + theme_cmac(legend.position = 'right')
#'
#' @seealso \code{\link{scale_cmac}}
#' @seealso \code{\link{scale_color_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}



# Define the function 'theme_cmac' to customize themes for ggplots
theme_cmac <- function(inTimesNewRoman = FALSE, borderMode = 'default', ...) {

  # Define text and border colors
  borderCol     = scale_cmac('gray', 'gray7') # border and gridlines
  backgroundCol = scale_cmac('gray', 'white') # panel background
  legendFill    = "grey99"                    # Legend tile fill
  legendColor   = "grey85"                    # Legend tile border
  facetHeaderFill    = scale_cmac('gray', 'gray8') # Facet (small multiples) header fill
  yAxisGridlineColor = "grey97"                    # Horizontal y axis gridline color

  # borderModel options
  borderModes = list('default' = 'default',
               'borders' = 'borders',
               'facet'   = 'facet'
  )


  # Left align title and caption
  alignment.left = theme(
    plot.caption = element_text(hjust = 0, face = "italic"),   # default is hjust=1
    plot.title.position = "plot",
    plot.caption.position = "plot"
  )

  # Define a minimal theme for the plot (borders theme)
  baseTheme = theme(

    # Set panel background
    panel.background = element_rect(
      fill =  backgroundCol,
      color = backgroundCol
    ),

    # Outer border of plot
    panel.border       = element_rect(fill = NA, color    = borderCol),

    # Y-axis color - horizontal lines on tick marks
    panel.grid.major.y = element_line(color = yAxisGridlineColor),

    # Format text-related elements and margins
    text = element_text(size = 11),  # global font size

    # Main Title
    plot.title        = element_text(color = scale_cmac('text'), size = 16, hjust = 0),
    plot.subtitle     = element_text(color = scale_cmac('text'), size = 13, hjust = 0),

    # Axis Titles
    axis.text         = element_text(color = scale_cmac('text'), size = 11),
    axis.title        = element_text(color = scale_cmac('text'), size = 12),

    # Facet Titles
    strip.text        = element_text(color = scale_cmac('text'), size = 12),
    strip.background  = element_rect(fill = facetHeaderFill, color = borderCol, size = 0.40),

    # Caption Font
    plot.caption      = element_text(color = scale_cmac('text'), size = 8.5, hjust = 1),

    # Legend
    legend.background = element_rect(fill = legendFill, color = legendColor, size = 0.40),
    legend.text       = element_text(color = scale_cmac('text')),
    legend.position   = "top",
    legend.title      = element_blank(),

    # Margin
    plot.margin = margin(t = 20, b = 20, r = 20, l = 20, unit = "pt"),

  )

  # Default theme: Remove the top and right border
  if (borderMode == borderModes['default'] | borderMode == borderModes['facet']) {
    baseTheme = baseTheme +
      theme(

        # Remove the outer grid
        panel.border = element_blank(),  # remove borders
        axis.line    = element_line(color = borderCol, size = 0.5),  # add back the full border
        axis.ticks   = element_line(color = borderCol),  # ensure ticks are visible
        axis.ticks.length = unit(0.10, "cm")

      )

  }

  # Theme for facetting
  if (borderMode == borderModes['facet']) {
    baseTheme = baseTheme +
      theme(
        legend.position    = 'none',
        strip.background   = element_blank(),
        axis.line          = element_blank(),
        axis.ticks.length = unit(4, 'pt'),
        panel.grid         = element_blank(),
        panel.grid.major.y = element_line(color = alpha(scale_cmac('fill', 'gray'), 0.8)),
        panel.spacing.x    = unit(10, "pt")
      )

  }

  # No borderMode found
  if (!(borderMode %in% borderModes) ) {
    warning("Parameter `borderMode` must be one of 'default', 'borders', or 'facet'. Using borderMode = 'default'.")
  }

  # Avoid clipping of the plot
  coord_cartesian(clip = 'off')

  # Combine all the defined theme elements
  theme_CMAC = baseTheme + alignment.left

  # If wanting times new roman then set it
  if (inTimesNewRoman) {

    timesNewRoman <- getTimesNewRomanFamily()

    # Create a ggplot object for Times New Roman with default 12 pt font
    font.TimesNewRoman = theme(text = element_text(family = timesNewRoman, size = 12))

    # Change to times new roman
    theme_CMAC = theme_CMAC + font.TimesNewRoman
  }

  # Anything else passed through parameters added last
  theme_CMAC = theme_CMAC + theme(...)

  # Set the created theme as active
  theme_set(theme_CMAC)

  # Return the created theme
  return(theme_CMAC)
}
