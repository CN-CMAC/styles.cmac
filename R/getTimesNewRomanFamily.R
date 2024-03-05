#' @title       Get Times New Roman Family
#' @description Gets the times new roman family equivielent across systems
#' @return      The function returns a font family as a string.
#'
#' @export getTimesNewRomanFamily
#'
#' @examples
#' getTimesNewRomanFamily()
#'
#' library(ggplot2)
#' library(styles.cmac)
#'
#' # Create basic ggplot object
#' ggplot(mtcars, aes(y=mpg, x=wt, color=as.factor(cyl))) +
#'
#'   geom_point() +
#'
#'   geom_text(aes(label = paste(mpg)),
#'             vjust = 1.2, hjust = -0.2,
#'             size = 3,
#'
#'             # ** IMPORTANT: theme() does not control text labels
#'             # Need to set family to this font!
#'             family = styles.cmac::getTimesNewRomanFamily()
#'   ) +
#'
#'   # This controls all non-label fonts
#'   theme_cmac(inTimesNewRoman = TRUE)


# Create the function
getTimesNewRomanFamily <- function() {

  # Enable times new roman if not on windows
  isWindows  <- function() {

    # get the OS you are on
    sys_info <- Sys.info()
    os_type  <- sys_info['sysname']

    return(os_type == "Windows")
  }

  # If on windows and using times new roman then set it
  if (isWindows()) {
    # Specify font settings
    cmacFont = "Times New Roman"  # font to be loaded
    newFont  = "Times"            # simplified name for objects

    # Load and create "Times" font using Times New Roman
    grDevices::windowsFonts(Times = grDevices::windowsFont(cmacFont))

  # Else use linux font
  } else {
    cmacFont = "FreeSerif"  # font to be loaded
    newFont  = cmacFont     # simplified name for objects
  }

  # return the font
  return(newFont)
}
