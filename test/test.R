setwd("C:/Users/azm/Dropbox/CurrentProjects/Wollongong/pkgs/waveslim/test")
library(devtools)
load_all("..")
data(dau)
x <- dau[64:192,]
#x <- dau
wf = "la8"
J=3
boundary="periodic"
X <- dwt.2d(x,wf,J)


# m <- dim(x)[1]
# storage.mode(m) <- "integer"
# n <- dim(x)[2]
# storage.mode(n) <- "integer"
# dict <- wave.filter(wf)
# L <- dict$length
# storage.mode(L) <- "integer"
# h <- dict$hpf
# storage.mode(h) <- "double"
# g <- dict$lpf
# storage.mode(g) <- "double"
# z <- matrix(0, m/2, n/2)
# storage.mode(z) <- "double"
# x.wt <- vector("list", 3 * J + 1)
# x.names <- NULL
# for (j in 1:J) {
#   out <- .C("two_D_dwt", 
#             X = as.double(x), 
#             M = as.integer(m), 
#             N = as.integer(n), 
#             L = as.integer(L), 
#             h = as.double(h), 
#             g = as.double(g), 
#             LL = z, 
#             LH = z, 
#             HL = z, 
#             HH = z)[7:10]
#   if (j < J) {
#     index <- (3 * j - 2):(3 * j)
#     x.wt[index] <- out[-1]
#     x.names <- c(x.names, sapply(names(out)[-1], paste, 
#                                  j, sep = ""))
#     x <- out[[1]]
#     m <- dim(x)[1]
#     storage.mode(m) <- "integer"
#     n <- dim(x)[2]
#     storage.mode(n) <- "integer"
#     z <- matrix(0, m/2, n/2)
#     storage.mode(z) <- "double"
#   }
#   else {
#     index <- (3 * j):(3 * (j + 1)) - 2
#     x.wt[index] <- out[c(2:4, 1)]
#     x.names <- c(x.names, sapply(names(out)[c(2:4, 1)], 
#                                  paste, j, sep = ""))
#   }
# }
# names(x.wt) <- x.names
# attr(x.wt, "J") <- J
# attr(x.wt, "wavelet") <- wf
# attr(x.wt, "boundary") <- boundary
# attr(x.wt, "class") <- "dwt.2d"
# x.wt
