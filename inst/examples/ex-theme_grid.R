library('ggplot2')
library('seqriseR')

p <- ggplot(diamonds, aes(x = clarity, fill = cut)) +
		geom_bar() +
		scale_fill_seqrise('seqrise9') 

p + theme_seqrise_grid()
p + theme_seqrise_grid(base_size = 16, base_family = 'Helvetica')
p + theme_seqrise_grid() +
	theme(
		legend.title = element_blank(),
		legend.position = 'top',
		axis.text.x = element_text(angle = 45, hjust = 1)
	)
