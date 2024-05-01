#' CMAC ggplot Color Scale
#'
#' @return ggplot color scale
#'
#' @param overrideWithFill TRUE if you want to use the fill palette for the color mapping. (Default FALSE)
#' @param colorOffset Offsets the ordering of the palette. E.g., colorOffset = 2 would move the first two colors to the end of the palette, starting at the 3rd color.
#' @param reverseOrder Logical, TRUE reverses the default order of the palette. Default FALSE. Applied after colorOffset.
#' @param darkenPaletteForTextGeoms Logical, if TRUE then the palette will be darkened slightly.
#' @param useColorBlindPalette Logical, if TRUE uses color blind friendly palette instead of CMAC style.
#' @param colorBlindPaletteName Name of colorblind friendly palette. Use `cols4all::c4a_palettes()` for available palettes.
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
#' # Darken text when over filled layers
#' ggplot(mtcars, aes(y=mpg, x=wt, color=as.factor(cyl))) +
#'   geom_point(aes(fill = as.factor(cyl)),
#'              size = 10,
#'              pch = 21,
#'              color = 'transparent',
#'              alpha = 0.9
#'   ) +
#'   geom_text(aes(label = round(mpg, 0))) +
#'   scale_fill_cmac() +
#'
#'   # KEY - darken the text so that it is easier to view
#'   # Over fill
#'   scale_color_cmac(darkenPaletteForTextGeoms = TRUE) +
#'   theme_cmac()
#'
#' # reverse the order of the palette
#' ggplotObject + scale_color_cmac(reverseOrder = TRUE)
#'
#' # Use color blind friendly palette
#' ggplotObject + scale_color_cmac(useColorBlindPalette = TRUE)
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}



# Create the function
scale_color_cmac <- function(overrideWithFill      = FALSE,
                             colorOffset           = 0,
                             reverseOrder          = FALSE,
                             darkenPaletteForTextGeoms = FALSE,
                             useColorBlindPalette  = FALSE,
                             colorBlindPaletteName = 'safe',
                             ...
                             )  {

  # Use fill color by default
  if ( !(overrideWithFill) ) {
    return( scale_color_manual(values = scale_cmac('color',
                                                   colorOffset           = colorOffset,
                                                   reverseOrder          = reverseOrder,
                                                   darkenPaletteForTextGeoms = darkenPaletteForTextGeoms,
                                                   useColorBlindPalette  = useColorBlindPalette,
                                                   colorBlindPaletteName = colorBlindPaletteName
                                                   ),
                               ...) )
  }

  # If you would rather use the accent color, then return that
  else {
    return( scale_color_manual(values = scale_cmac('fill',
                                                   colorOffset           = colorOffset,
                                                   reverseOrder          = reverseOrder,
                                                   darkenPaletteForTextGeoms = darkenPaletteForTextGeoms,
                                                   useColorBlindPalette  = useColorBlindPalette,
                                                   colorBlindPaletteName = colorBlindPaletteName
                                                   ),
                               ...) )
  }
}
