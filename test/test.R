library(waveslim)
data(dau)
x <- dau[64:192,]
#x <- dau
wf = "la8"
J=3
boundary="periodic"
X <- dwt.2d(x,wf,J)
