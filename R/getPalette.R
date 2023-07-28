#' @title Get Palette from CSV Files in Directory
#' @description This function reads palette data from CSV files located in a specified directory
#'
#' @param aesthetic The name of the aesthetic
#' @param colors A vector of color names
#' @param displayNames Logical, if TRUE display names of the colors
#' @param fileSuffix A suffix to be added to the file name (default: "-colors")
#' @param fileExtension The extension of the file (default: ".csv")
#' @param directoryOfPalette The directory of the palette data (default: "extdata")
#' @param thisPackageName The name of the package (default: "styles.cmac")
#'
#' @return The function returns a named list representing a color palette
#'
#' @importFrom stats setNames
#' @importFrom utils read.csv



# Create the function
getPalette <- function(aesthetic, colors,
                       displayNames       = FALSE,
                       fileSuffix         = "-colors",
                       fileExtension      = '.csv',
                       directoryOfPalette = "extdata",
                       thisPackageName    = "styles.cmac"
                       ) {

  ## Get the path of the palette
  filename = paste0(aesthetic, fileSuffix, fileExtension)
  filePathOfPalette <- system.file(directoryOfPalette,
                                   filename,
                                   package = thisPackageName)


  ## Read the palette in
  thePalette_base <- as.list(read.csv(filePathOfPalette))

  ## Convert to a named list
  thePalette <- setNames(thePalette_base$hexCode, thePalette_base$color)

  return( subsetAndFormatPalette(colors, thePalette, displayNames) )
}



# #' @examples
# #' thePalette <- readPaletteData(aesthetic  = "accent-colors.csv",
# #'                               directoryOfPalette = "extdata",
# #'                               thisPackageName    = "styles.cmac"
# #'                               )
# #' # Print the palette
# #' thePalette
# #'
# #' # Look at the blue color
# #' thePalette[['blue']]#
