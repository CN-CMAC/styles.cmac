#' CMAC ggplot Color Scale
#'
#' @return ggplot color scale
#'
#' @param overrideWithFill TRUE if you want to use the fill palette for the color mapping. (Default FALSE)
#' @param colorOffset Offsets the ordering of the palette. E.g., colorOffset = 2 would move the first two colors to the end of the palette, starting at the 3rd color.
#' @param reverseOrder TRUE reverses the default order of the palette. Default FALSE. Applied after colorOffset.
#' @param ... Additional parameters passed to either scale_color_manual or scale_fill_manual functions, such as guide = 'none'
#'
#' @export scale_color_cmac
#'
#' @importFrom ggplot2 scale_color_manual
#'
#' @examples
#' library(ggplot2)
#' library(styles.cmac)
#'
#' # Create basic ggplot object
#' ggplotObject <- ggplot(mtcars, aes(y=mpg, x=wt, color=as.factor(cyl))) +
#'     geom_point(size = 3, alpha = 0.5)
#'
#' # Add the color
#' ggplotObject + scale_color_cmac()
#'
#' # Add the fill
#' ggplotObject + scale_color_cmac(overrideWithFill = TRUE)
#'
#' # Add the color with no legend using an optional parameter
#' ggplotObject + scale_color_cmac(guide = 'none')
#'
#' # Offset the colors by 1
#' ggplotObject + scale_color_cmac(colorOffset = 1)
#'
#' # reverse the order of the palette
#' ggplotObject + scale_color_cmac(reverseOrder = TRUE)
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}



# Create the function
scale_color_cmac <- function(overrideWithFill = FALSE,
                             colorOffset    = 0,
                             reverseOrder     = FALSE,
                             ...
                             )  {

  # Use fill color by default
  if ( !(overrideWithFill) ) {
    return( scale_color_manual(values = scale_cmac('color',
                                                   colorOffset = colorOffset,
                                                   reverseOrder = reverseOrder
                                                   ),
                               ...) )
  }

  # If you would rather use the accent color, then return that
  else {
    return( scale_color_manual(values = scale_cmac('fill',
                                                   colorOffset = colorOffset,
                                                   reverseOrder = reverseOrder
                                                   ),
                               ...) )
  }
}
