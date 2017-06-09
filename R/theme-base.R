#' The default font size is set to 14
#' The default font family is set to Helvetica
#' @inheritParams ggplot2::theme_grey
#' @param base_size \code{integer} basic font size
#' @param base_family \code{string} basic font family
#'
#' @family themes seqrise base
#' @export

theme_base <- function(base_size = 14, base_family = 'Helvetica'){
	legend_font_size <- base_size - 3
	base <- theme(
				legend.title = element_text(size = base_size, family = base_family),
				legend.text = element_text(size = legend_font_size, family = base_family),
				legend.key = element_rect(fill='transparent'),
				axis.title.x = element_text(size = base_size, margin = margin(6,0,0,0), family = base_family),
				axis.title.y = element_text(size = base_size, margin = margin(0,6,0,0), family = base_family),
				axis.text.x = element_text(size = base_size, family = base_family),
				axis.text.y = element_text(size = base_size, family = base_family),
				axis.ticks = element_line(size = 0.5, color = 'black'),
				panel.background = element_rect(fill = 'white'),
				plot.margin=unit(c(0.1, 0.1, 0.1, 0.1), 'inches')
			)
	base
}
