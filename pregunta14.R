rm(list = ls())
k<-100
x<-rep(0,k)
for (i in 1:k) {
  u1<-runif(1,0,1)
  u2<-runif(1,0,1)
  if (u1<0.55) {
    x[i]<-(2*floor(u2*5))+5
  }
  else{
    x[i]<-(2*floor(u2*5))+6
  }
  
}

xx<-table(x)
plot(xx)
#m<-2*(floor(5*u2))+5