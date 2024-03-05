#' @title       Get Times New Roman Family
#' @description Gets the times new roman family equivielent across systems
#' @return      The function returns a font family as a string.
#'
#' @importFrom grDevices windowsFonts
#'
#' @export getTimesNewRomanFamily
#'
#' @examples
#' getTimesNewRomanFamily()


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
    windowsFonts(Times = grDevices::windowsFont(cmacFont))

  # Else use linux font
  } else {
    cmacFont = "FreeSerif"  # font to be loaded
    newFont  = cmacFont     # simplified name for objects
  }

  # return the font
  return(newFont)
}
