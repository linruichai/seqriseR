library('ggplot2')
library('seqriseR')

p <- ggplot(diamonds, aes(x = clarity, fill = cut)) + geom_bar() + scale_fill_seqrise('seqrise9') + scale_y_continuous(expand=c(0,0))

p + theme_seqrise_classic()
p + theme_seqrise_classic(base_size = 16, base_family = 'Helvetica')
p + theme_seqrise_classic() +
	 theme(legend.title = element_blank(),
			legend.position = c(0.9,0.9),
			axis.text.x = element_text(angle = 45, hjust = 1),
	)
