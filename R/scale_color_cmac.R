#' CMAC ggplot Color Scale
#'
#' @return ggplot color scale
#'
#' @param overrideWithFill TRUE if you want to use the fill palette for the color mapping. (Default FALSE)
#'
#' @export scale_color_cmac
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}
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



# Create the function
scale_color_cmac <- function(overrideWithFill = FALSE)  {

  # Use fill color by default
  if ( !(overrideWithFill) ) {
    return( scale_color_manual(values = scale_cmac('color')) )
  }

  # If you would rather use the accent color, then return that
  else {
    return( scale_color_manual(values = scale_cmac('fill')) )
  }
}
