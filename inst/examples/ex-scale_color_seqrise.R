### scale_color_seqrise

library("ggplot2")
library('seqriseR')

p <- ggplot(mtcars) + geom_point(aes(x = wt, y = mpg, colour=factor(gear))) + facet_wrap(~am)

p + scale_color_seqrise()
p + scale_color_seqrise('seqrise9')
p + scale_color_seqrise('seqrise9light')
p + scale_color_seqrise('seqrise18')
