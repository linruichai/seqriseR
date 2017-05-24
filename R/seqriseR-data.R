#' Palette data for the seqriseR package
#'
#' Data used by the palettes in the seqriseR package.
#'
#' @format A \code{list}.
#' @export
seqriseR_data <- {

    ## x to hold value of list as I create it
    x <- list()

   x$seqrise <- list()
   x$seqrise$colors <-
    list(
        seqrise18 =
        c(blue = "#357EBD",
          blue_light = "#8DB0DF",
		  red = "#D43F3A",
		  red_light = "#FF807D",
		  green = "#5CB85C",
          green_light = "#A8E49C",
          orange = "#EEA236",
          orange_light = "#FFC993",
          purple = "#9632B8",
          purple_light = "#C5ADDB",
		  cyan = "#46B8DA",
		  cyan_light = "#9EDAE5",
          brown = "#A65628",
          brown_light = "#C49C94",
          pink = "#F781BF",
          pink_light = "#F7B6D2",
          gray = "#B8B8B8",
          gray_light = "#D7D7D7"
          )
        ## seqrise9 are odd, seqrise9light are even
        )

    x$seqrise$sequential <-
        list(`Blue` = c(low = "#C9DEEF", mid = "#5597CD", high = "#193A55")
             )

    x$seqrise$diverging <-
        list(`Blue-White-Red` = c(low = "#285B86", mid = "#FFFFFF", high = "#B41414"),
             `Green-Black-Red` = c(low = "#7FC97D", mid = "#000000", high = "#EC5A5A"),
             `Yellow-Orange-Red` = c(low = "#F7FBD5", mid = "#E89331", high = "#D33F6A")
			 )


    ## Return
    x

}
