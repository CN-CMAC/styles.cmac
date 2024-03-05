#' CMAC ggplot Fill Scale
#'
#' @return ggplot fill scale
#'
#' @param overrideWithAccent TRUE if you want to use the color palette for the fill mapping. (Default FALSE)
#' @param colorOffset Offsets the ordering of the palette. E.g., colorOffset = 2 would move the first two colors to the end of the palette, starting at the 3rd color.
#' @param reverseOrder TRUE reverses the default order of the palette. Default FALSE. Applied after colorOffset.
#' @param ... Additional parameters passed to either scale_color_manual or scale_fill_manual functions, such as guide = 'none'
#'
#' @export scale_fill_cmac
#'
#' @importFrom ggplot2 scale_fill_manual
#'
#' @examples
#' library(ggplot2)
#' library(styles.cmac)
#'
#' # Create basic ggplot object
#' ggplotObject <- ggplot(mtcars, aes(y=mpg, x=as.factor(cyl), fill=as.factor(cyl))) +
#'
#'     # Note that gray border used for demonstration. Please use scale_color_cmac()
#'     # as much as possible
#'     geom_boxplot(size = 0.8, color = scale_cmac('gray', 'gray3'))
#'
#' # Add the fill color
#' ggplotObject + scale_fill_cmac()
#'
#' # Add the accent color
#' ggplotObject + scale_fill_cmac(overrideWithAccent = TRUE)
#'
#' # Add the fill color and turn off legend with optional parameter
#' ggplotObject + scale_fill_cmac(guide = 'none')
#'
#' # Offset the colors by 1
#' ggplotObject + scale_fill_cmac(colorOffset = 1)
#'
#' # reverse the order of the palette
#' ggplotObject + scale_fill_cmac(reverseOrder = TRUE)
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_cmac}}
#' @seealso \code{\link{scale_color_cmac}}



# Create the function
scale_fill_cmac <- function(overrideWithAccent = FALSE,
                            colorOffset        = 0,
                            reverseOrder       = FALSE,
                            ...)  {

  # Use fill color by default
  if ( !(overrideWithAccent) ) {
    return( scale_fill_manual(values = scale_cmac('fill',
                                                  colorOffset = colorOffset,
                                                  reverseOrder = reverseOrder),
                              ...) )
  }

  # If you would rather use the accent color, then return that
  else {
    return( scale_fill_manual(values = scale_cmac('color',
                                                  colorOffset = colorOffset,
                                                  reverseOrder = reverseOrder),
                              ...) )
  }
}
