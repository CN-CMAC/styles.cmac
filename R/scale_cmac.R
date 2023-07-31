#' Function that returns palettes or individual colors
#' This is done separately just to reduce noise in the file
#' Mainly, this just either displays the names of the colors or not when returing
#' It also allows you to return 1 or all of the colors
#'
#' @param aesthetic Color aesthetic in 'fill', 'color', 'base', 'text','border','background', or 'grayedOut'
#' @param ... single or vector of colors
#' @param displayNames TRUE if you want to see the names of each color. Default FALSE.
#'
#' @return hex codes of a subsetted CMAC palette
#'
#' @export scale_cmac
#'
#' @examples
#' library(styles.cmac)
#'
#' # Single valued colors: Basic elements
#' scale_cmac('text') # Text (a dark gray)
#'
#' # Palettes: Used in scale fill or scale color below
#' scale_cmac('color', displayNames = TRUE) # All accent colors (line colors)
#' scale_cmac('fill',  displayNames = TRUE) # All main colors (fills)
#' scale_cmac('fill', 3)                    # 3 fills
#' scale_cmac('fill', 'red', displayNames = TRUE) # Just a red fill
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_color_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}



scale_cmac <- function(aesthetic = NULL, ..., displayNames = FALSE) {

  # Overrride for text colors
  textName      = 'text'
  textColorName = 'gray7'

  colors <- c(...) # get colors from function params

  # Define a default TEXT Color
  getTextCol <- function() { return( getPalette('gray', textColorName, displayNames = displayNames ) ) }


  # RETURN A PALETTE -------------------------------------------------------------

  # Possible options for palettes:
  paletteOptions <- c('fill', 'color', 'gray', 'blue', textName)

  # If NO aesthetic given ------------------------------------------------------
  if ( is.null(aesthetic) ) {
    stop(paste('You need to define a `aesthetic`, e.g. `aesthetic = "fill"`. Use from this list:\n ',
                  toString(paletteOptions) ) )

  # If NOT given a credible aesthetic ------------------------------------------
  } else if ( !(aesthetic %in% paletteOptions) ) {
    stop(paste('Incorect aesthetic type. Choose from:', toString(paletteOptions) ) )

  # Else, you are given a credible aesthetic -----------------------------------
  } else {

    # The single values color return functions:
    if (aesthetic == textName) { return(getTextCol()) }

    # Else return a subsetted palette
    else return( getPalette(aesthetic, colors, displayNames = displayNames) )
  }
}
