#' CMAC ggplot Fill Scale
#'
#' @return ggplot fill scale
#'
#' @param overrideWithAccent TRUE if you want to use the color palette for the fill mapping. (Default FALSE)
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
#' ggplotObject <- ggplot(mtcars, aes(y=mpg, x=wt, fill=as.factor(cyl))) +
#'     geom_point(size = 3, alpha = 0.5)
#'
#' # Add the fill color
#' ggplotObject + scale_fill_cmac()



# Create the function
scale_fill_cmac <- function(overrideWithAccent = FALSE)  {

  # Use fill color by default
  if ( !(overrideWithAccent) ) {
    return( scale_fill_manual(values = scale_cmac('fill')) )
  }

  # If you would rather use the accent color, then return that
  else {
    return( scale_fill_manual(values = scale_cmac('color')) )
  }
}
