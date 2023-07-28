#' @title       Create a CMAC Theme for ggplot
#' @description This function creates a custom theme for ggplot with several theme modifications
#' @return      The function returns a ggplot theme
#'
#' @importFrom grDevices windowsFonts windowsFont
#' @importFrom ggplot2 theme element_text element_blank element_line element_rect margin coord_cartesian theme_set unit
#'
#' @export
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



# Define the function 'theme_cmac' to customize themes for ggplots
theme_cmac <- function() {

  # Define text and border colors
  textCol = scale_cmac('text')
  borderCol = scale_cmac('gray', 'gray4')

  # Specify font settings
  cmacFont = "Times New Roman"  # font to be loaded
  newFont  = "Times"            # simplified name for objects

  # Load and create "Times" font using Times New Roman
  windowsFonts(Times = windowsFont(cmacFont))
  windowsFonts(TimesLight = windowsFont(cmacFont))

  # Create a ggplot object for Times New Roman with default 12 pt font
  FONT_FAMILY = newFont
  font.TimesNewRoman = theme(text = element_text(family = FONT_FAMILY, size = 12))

  # Left align title and caption
  alignment.left = theme(
    plot.caption = element_text(hjust = 0, face = "italic"),   # default is hjust=1
    plot.title.position = "plot",
    plot.caption.position = "plot"
  )

  # Define a minimal theme for the plot
  baseTheme = theme(

    # Remove the outer grid
    panel.border = element_blank(),  # remove borders
    axis.line = element_line(color = borderCol),  # add back the full border
    axis.ticks = element_line(color = borderCol)  # ensure ticks are visible

  ) + theme(

    # Add x and y axis grid only
    axis.line.y = element_line(color = borderCol, size = 0.5),  # keep left border
    axis.line.x = element_line(color = borderCol, size = 0.5),  # keep bottom border
    axis.ticks.length = unit(0.15, "cm"),  # adjust size as needed
    axis.ticks.y = element_line(color = borderCol),
    axis.ticks.x = element_line(color = borderCol),

    # Set panel background
    panel.background = element_rect(
      fill = scale_cmac('gray', 'white'),
      color = scale_cmac('gray', 'white')
    ),

    # Y-axis color
    panel.grid.major.y = element_line(color = "grey97")

  ) + theme(

    # Format text-related elements and margins
    text = element_text(size = 11),  # global font size

    # Main Title
    plot.title = element_text(color = textCol, size = 16, hjust = 0),
    plot.subtitle = element_text(color = textCol, size = 13, hjust = 0),

    # Axis Titles
    axis.text = element_text(color = textCol, size = 11),
    axis.title = element_text(color = textCol, size = 12),

    # Facet Titles
    strip.text = element_text(color = textCol, size = 12),
    strip.background = element_rect(fill = "#EAEAEA", color = borderCol, size = 0.40),

    # Caption Font
    plot.caption = element_text(color = textCol, size = 8.5, hjust = 1),

    # Legend
    legend.background = element_rect(fill = "grey99", color = "grey85", size = 0.40),
    legend.text = element_text(color = textCol),
    legend.position = "top",
    legend.title = element_blank(),

    # Margin
    plot.margin = margin(t = 20, b = 20, r = 20, l = 20, unit = "pt")
  )

  # Avoid clipping of the plot
  coord_cartesian(clip = 'off')

  # Combine all the defined theme elements
  theme_CMAC = baseTheme + font.TimesNewRoman + alignment.left

  # Set the created theme as active
  theme_set(theme_CMAC)

  # Return the created theme
  return(theme_CMAC)
}
