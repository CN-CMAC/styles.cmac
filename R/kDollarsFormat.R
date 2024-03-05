#' Converts value to scaled format.
#' For example, 10^6 returns "$1 M" in millions format.
#'
#' @return Formatted number
#'
#' @param x A numeric value or vector.
#' @param scaleUnit the desired scaling to calculate. Thousands = 'K', Millions = 'M', Billions = 'B', Trillions = 'T'.
#' @param useDollarSign Default TRUE if you want to add a dollar sign to the suffix. False to omit '$'.
#' @param roundToDigit Digits to round to after the value has been scaled.
#'
#' @export kDollarsFormat
#'
#' @importFrom scales dollar
#' @importFrom utils stack
#'
#' @examples
#' kDollarsFormat(1000, scaleUnit = 'K')
#' kDollarsFormat(1000000, scaleUnit = 'M')
#' kDollarsFormat(1000000000, scaleUnit = 'B')
#' kDollarsFormat(1500000000000, scaleUnit = 'T')
#' kDollarsFormat(1000000, scaleUnit = 'M', useDollarSign = FALSE)
#'
#' @seealso \code{\link{theme_cmac}}
#' @seealso \code{\link{scale_color_cmac}}
#' @seealso \code{\link{scale_fill_cmac}}



# Create the function
kDollarsFormat <- function(x,
                           scaleUnit     = 'M',
                           useDollarSign = TRUE,
                           roundToDigit  = 1
                           ) {
  # Stop if x is not numeric
  if (!is.numeric(x)) stop('`x` must be a number.')

  # List of possible formats
  formatTypes <- list(
    'K' = 3,
    'M' = 6,
    'B' = 9,
    'T' = 12
  )

  # Convert list to data frame
  formatTypesVector <- (formatTypes |> stack())$ind

  # Warn if format not in list
  # Default to million
  if (!(scaleUnit %in% formatTypesVector)) {
    warning(paste0('Scale format given (', scaleUnit, ') not in list: ', paste(formatTypesVector, collapse = ', '), '. Using "M" as default.'))
    scaleUnit = 'M'

  }

  # Get the degree value of the chosen format
  chosenFormatValue <- formatTypes[[scaleUnit]] |> unlist()

  # Round number and scale
  x = round(x / (10^chosenFormatValue), roundToDigit)

  # Create the formatted number
  formattedNumber = dollar(x,
                           prefix = ifelse(useDollarSign, "$", ''), # dollar or not
                           suffix = paste0(' ', trimws(scaleUnit)))  # K/M

  return(formattedNumber)
}
