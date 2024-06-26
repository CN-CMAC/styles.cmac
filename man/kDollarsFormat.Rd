% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kDollarsFormat.R
\name{kDollarsFormat}
\alias{kDollarsFormat}
\title{Converts value to scaled format.
For example, 10^6 returns "$1 MM" in millions format.}
\usage{
kDollarsFormat(x, scaleUnit = "MM", useDollarSign = TRUE, roundToDigit = 1)
}
\arguments{
\item{x}{A numeric value or vector.}

\item{scaleUnit}{Default 'MM', the desired scaling to calculate. Thousands = 'K', Millions = 'M' (or 'MM'), Billions = 'B', Trillions = 'T'.}

\item{useDollarSign}{Default TRUE if you want to add a dollar sign to the suffix. False to omit '$'.}

\item{roundToDigit}{Digits to round to after the value has been scaled.}
}
\value{
Formatted number
}
\description{
Converts value to scaled format.
For example, 10^6 returns "$1 MM" in millions format.
}
\examples{
library(ggplot2)
library(styles.cmac)

kDollarsFormat(1000, scaleUnit = 'K')
kDollarsFormat(1000000, scaleUnit = 'M')
kDollarsFormat(1000000, scaleUnit = 'MM')
kDollarsFormat(1000000000, scaleUnit = 'B')
kDollarsFormat(1500000000000, scaleUnit = 'T')
kDollarsFormat(1000000, scaleUnit = 'M', useDollarSign = FALSE)

# Examples within ggplot
df <- mtcars
df$mpg <- df$mpg*1000000

# Create simple ggplot, no data shown by default
gg <- df |>
  ggplot(aes(y=mpg, x=wt)) +
  theme_cmac()

# Text labels millions dollars
gg + geom_text(aes(label = kDollarsFormat(mpg)))

# y-axis format in millions of dollars
gg + scale_y_continuous(labels = kDollarsFormat)

# y-axis format in *thousands* of dollars
gg + scale_y_continuous(labels = ~kDollarsFormat(., scaleUnit = 'K'))

# y-axis format with no decimals
gg + scale_y_continuous(labels = ~kDollarsFormat(., roundToDigit = 0))

# y-axis format with no dollar sign
gg + scale_y_continuous(labels = ~kDollarsFormat(., useDollarSign = FALSE))

}
\seealso{
\code{\link{theme_cmac}}

\code{\link{scale_color_cmac}}

\code{\link{scale_fill_cmac}}
}
