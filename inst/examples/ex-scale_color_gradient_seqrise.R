###   scale_color_gradient_seqrise scale_color_continuous_seqrise 
###   scale_fill_continuous_seqrise

library('ggplot2')
library('seqriseR')
library('reshape2')

df <- data.frame(
		x = runif(100),
		y = runif(100),
		z1 = rnorm(100),
		z2 = abs(rnorm(100))
	)

p1 <- ggplot(df, aes(x, y)) + geom_point(aes(colour = z2))
p1 + scale_color_gradient_seqrise("Blue")

mat = matrix(rnorm(96),8)
m = melt(mat)
p2 <- ggplot(m, aes(x=Var1, y=Var2, fill=value)) + geom_tile(color="white", size=0.1) + xlab('X-labels') + ylab("Y-labels")
p2 + scale_fill_gradient_seqrise('Blue')
