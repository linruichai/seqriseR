#' The default font size is set to 14
#' The default font family is set to Helvetica
#' @inheritParams ggplot2::theme_grey
#' @param base_size \code{integer} basic font size
#' @param base_family \code{string} basic font family
#'
#' @family themes seqrise classic
#' @export

theme_seqrise_classic <- function(base_size = 14, base_family = 'Helvetica'){
	font_size <- base_size
	font_family <- base_family
    classic <- theme_base(base_size = font_size, base_family = font_family) + 
				theme(
					panel.border = element_blank(),
					axis.line = element_line(size = 0.5, colour = 'black')
				)
	classic
}
