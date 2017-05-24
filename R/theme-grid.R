#' The default font size is set to 14
#' The default font family is set to Helvetica
#' @inheritParams ggplot2::theme_grey
#' @param base_size \code{integer} basic font size
#' @param base_family \code{string} basic font family
#'
#' @family themes seqrise grid
#' @export

theme_seqrise_grid <- function(base_size = 14, base_family = 'Helvetica'){
	font_size <- base_size
	font_family <- base_family
	grid <- theme_base(base_size = font_size, base_family = font_family) + 
				theme(
					panel.border=element_rect(fill = 'transparent', color = 'black', size = 0.5),
					panel.grid.major=element_line(size = 0.25,linetype = 3,color = 'grey70'),
					panel.grid.minor=element_line(size = 0.25,linetype = 3,color = 'grey70'),
					panel.grid=element_line(size = 0.25,color = 'grey70',linetype = 3),
				)
	grid
}
				
