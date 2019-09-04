rm(list = ls())
p<-c(0.3,0.2,0.35,0.15)
genera <- function(n,p) {
  x<-rep(0,n)
  pcum<-cumsum(p)
  for (j in 1:n) {
    U<-runif(1,0,1)
    i<-1
    while (U>pcum[i]) {
      i<-i+1
    }
    x[j]<-i
  }
  return(x)
}
x<-genera(100,p)
n<-1:length(x)
#probabilidad
xx<-table(x)/length(n)
barplot(xx)
#experanza
z<-cumsum(x)/n
z[length(n)]

