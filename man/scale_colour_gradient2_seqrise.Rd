% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale.R
\name{scale_colour_gradient2_seqrise}
\alias{scale_colour_gradient2_seqrise}
\alias{scale_fill_gradient2_seqrise}
\alias{scale_color_gradient2_seqrise}
\title{Seqrise diverging colour scales (continuous)}
\usage{
scale_colour_gradient2_seqrise(palette = "Blue-White-Red", ...,
  space = "rgb", na.value = "grey50", guide = "colourbar")

scale_fill_gradient2_seqrise(palette = "Blue-White-Red", ..., space = "rgb",
  na.value = "grey50", guide = "colourbar")

scale_color_gradient2_seqrise(palette = "Blue-White-Red", ...,
  space = "rgb", na.value = "grey50", guide = "colourbar")
}
\arguments{
\item{palette}{Palette name. See \code{seqriseR_data$seqrise$divergent}.}

\item{...}{Other arguments passed on to \code{\link{discrete_scale}}
to control name, limits, breaks, labels and so forth.}

\item{space}{Colour space in which to calculate gradient.}

\item{na.value}{Colour to use for missing values}

\item{guide}{Type of legend. Use \code{'colourbar'} for continuous
colour bar, or \code{'legend'} for discrete colour legend.}
}
\description{
Seqrise diverging colour scales (continuous)
}
\seealso{
Other colour seqrise: \code{\link{scale_colour_gradient_seqrise}},
  \code{\link{scale_colour_seqrise}},
  \code{\link{seqrise_color_pal}},
  \code{\link{seqrise_div_gradient_pal}},
  \code{\link{seqrise_seq_gradient_pal}}
}
