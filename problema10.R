rm(list = ls())
binomialnegativa <- function(n,r,p) {
  x<-rep(0,n)
  for (j in r:n) {
    U<-runif(1,0,1)
    i<-1
   
    pr<-p^r
    F<-pr
    while (U>F) {
      F<-F+pr
      pr<-((j*(j-p))/(j+1-r))*pr
      i<-i+1
    }
    x[j]<-i
  }
  return(x)
}
x<-binomialnegativa(100,1,0.2)

