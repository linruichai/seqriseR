###  scale_color_gradient2_seqrise 
###  scale_fill_gradient2_seqrise

library('ggplot2')
library('seqriseR')

df <- data.frame(
		x = runif(100),
		y = runif(100),
		z1 = rnorm(100),
		z2 = abs(rnorm(100))
	)
p <- ggplot(df, aes(x, y)) + geom_point(aes(colour = z2))

p + scale_color_gradient2_seqrise()
p + scale_color_gradient2_seqrise('Blue-White-Red')
p + scale_color_gradient2_seqrise('Green-Black-Red')
p + scale_color_gradient2_seqrise('Yellow-Orange-Red')
