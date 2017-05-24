### seqrise_seq_gradient_pal

library('seqriseR')

x <- seq(-1, 1, length = 100)
r <- sqrt(outer(x^2, x^2, '+'))
image(r, col = seqrise_seq_gradient_pal('Blue')(seq(0, 1, length = 12)))
