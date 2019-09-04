rm(list = ls())
p<-c(1/3,2/3)
p_cums<-cumsum(p)

genera <- function(n) {
  x<-rep(0,n)
  for (j in 1:n) {
    u<-runif(1,0,1)
    i<-1
    while (u>p_cums[i]) {
      i<-i+1
    }
    x[j]<-i
    
  }
  return(x)
}

x<-genera(1000)
n<-1:length(x)

xx<-table(x)/length(n)
barplot(xx)
z<-cumsum(x)/n
z[length(n)]