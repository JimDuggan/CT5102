library(repurrrsive)

gl <- lapply(sw_films,
             function(x)x$director=="George Lucas")

gl_v <- unlist(gl)

gl_list <- sw_films[gl_v]

mn_gl <- sapply(gl_list,function(y)y$title)



