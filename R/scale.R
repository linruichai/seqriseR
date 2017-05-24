#' Color Palettes based on Seqrise (discrete)
#'
#' @export
#' @param palette Palette name.
#'
#' @family colour seqrise
seqrise_color_pal <- function(palette = "seqrise9") {
  palettelist <- seqriseR_data$seqrise$colors
  if (!palette %in% c(names(palettelist), "seqrise9", "seqrise9light")){
    stop(sprintf("%s is not a valid palette name", palette))
  }
  if (palette == "seqrise9") {
    types <- palettelist[["seqrise18"]][seq(1, 18, by = 2)]
  } else if (palette == "seqrise9light") {
    types <- palettelist[["seqrise18"]][seq(2, 18, by = 2)]
  }else {
    types <- palettelist[[palette]]
  }

  function(n) {
    unname(types)[seq_len(n)]
  }
}

#' Seqrise color scales.
#'
#' @inheritParams ggplot2::scale_colour_hue
#' @inheritParams seqrise_color_pal
#' @family colour seqrise
#' @rdname scale_color_seqrise
#' @export
#' @seealso \code{\link{seqrise_color_pal}} for references.
scale_colour_seqrise <- function(palette = "seqrise9", ...) {
  discrete_scale("colour", "seqrise", seqrise_color_pal(palette), ...)
}

#' @export
#' @rdname scale_color_seqrise
scale_fill_seqrise <- function(palette = "seqrise9", ...) {
  discrete_scale("fill", "seqrise", seqrise_color_pal(palette), ...)
}

#' @export
#' @rdname scale_color_seqrise
scale_color_seqrise <- scale_colour_seqrise


#' Seqrise sequential colour gradient palettes (continuous)
#'
#' @param palette Palette name. See \code{seqriseR_data$seqrise$sequential}.
#' @param space Colour space in which to calculate gradient.
#' @family colour seqrise
#'
#' @export
seqrise_seq_gradient_pal <- function(palette = "Blue", space = "rgb") {
  pal <- seqriseR_data[["seqrise"]][["sequential"]][[palette]]
  div_gradient_pal(low = pal["low"], mid = pal["mid"], high = pal["high"],space=space)
}


#' Seqrise sequential colour scale (continuous)
#'
#' @export
#' @inheritParams seqrise_seq_gradient_pal
#' @inheritParams ggplot2::scale_colour_hue
#' @param guide Type of legend. Use \code{'colourbar'} for continuous
#'   colour bar, or \code{'legend'} for discrete colour legend.
#' @family colour seqrise
#' @rdname scale_colour_gradient_seqrise
scale_colour_gradient_seqrise <- function(palette = "Blue",
                                          ...,
                                          space = "Lab",
                                          na.value = "grey50",
                                          guide = "colourbar") {
  continuous_scale("colour", "seqrise",
                   seqrise_seq_gradient_pal(palette, space),
                   na.value = na.value,
                   guide = guide,
                   ...)
}

#' @export
#' @rdname scale_colour_gradient_seqrise
scale_fill_gradient_seqrise <- function(palette = "Blue",
                                        ..., space = "Lab",
                                        na.value = "grey50",
                                        guide = "colourbar") {
  continuous_scale("fill", "seqrise",
                   seqrise_seq_gradient_pal(palette, space),
                   na.value = na.value,
                   guide = guide,
                   ...)
}

#' @export
#' @rdname scale_colour_gradient_seqrise
scale_color_gradient_seqrise <- scale_colour_gradient_seqrise

#' @export
#' @rdname scale_colour_gradient_seqrise
scale_color_continuous_seqrise <- scale_colour_gradient_seqrise

#' @export
#' @rdname scale_colour_gradient_seqrise
scale_fill_continuous_seqrise <- scale_fill_gradient_seqrise


#' Seqrise diverging colour gradient palettes (continuous)
#'
#' @param palette Palette name. See \code{seqriseR_data$seqrise$divergent}.
#' @param space Colour space in which to calculate gradient.
#' @family colour seqrise
#'
#' @export
seqrise_div_gradient_pal <- function(palette = "Blue-White-Red", space = "rgb") {
  pal <- seqriseR_data[["seqrise"]][["diverging"]][[palette]]
  div_gradient_pal(low = pal["low"], mid = pal["mid"], high = pal["high"],
                   space = space)
}

#' Seqrise diverging colour scales (continuous)
#'
#' @inheritParams seqrise_div_gradient_pal
#' @inheritParams ggplot2::scale_colour_hue
#' @param guide Type of legend. Use \code{'colourbar'} for continuous
#'   colour bar, or \code{'legend'} for discrete colour legend.
#' @family colour seqrise
#' @export
#' @rdname scale_colour_gradient2_seqrise
scale_colour_gradient2_seqrise <- function(palette = "Blue-White-Red",
                                           ..., space = "rgb",
                                           na.value = "grey50",
                                           guide = "colourbar") {
  continuous_scale("colour", "seqrise2",
                   seqrise_div_gradient_pal(palette, space),
                   na.value = na.value,
                   guide = guide,
                   ...)
}

#' @export
#' @rdname scale_colour_gradient2_seqrise
scale_fill_gradient2_seqrise <- function(palette = "Blue-White-Red",
                                         ...,
                                         space = "rgb",
                                         na.value = "grey50",
                                         guide = "colourbar") {
  continuous_scale("fill", "seqrise2",
                   seqrise_div_gradient_pal(palette, space),
                   na.value = na.value,
                   guide = guide,
                   ...)
}

#' @export
#' @rdname scale_colour_gradient2_seqrise
scale_color_gradient2_seqrise <- scale_colour_gradient2_seqrise
