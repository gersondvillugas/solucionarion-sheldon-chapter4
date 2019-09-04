  rm(list = ls())
  U<-runif(1,0,1)
  generarpoison <- function(l) {
    i<-0
    p<-exp(-l)
    F<-p
    while(U>=F){
     P<-(l*p)/(i+1)
     F=F+P
     i<-i+1
    }
    return(i)
  }
  generarpoison(2)
  
        Poisson_TI=function(lambda){
          u=runif(1,0,1)
          i=0; p=exp(-lambda);F=p
          while (u >= F){
            p=((lambda*p)/(i+1))
            F=F+p
            i=i+1
          }
          return(i)
        }
        Poisson_TI(2)
