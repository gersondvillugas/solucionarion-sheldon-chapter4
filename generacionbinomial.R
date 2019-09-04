bino<-function(n,p){
  U=runif(1,0,1)
  c=(p/(1-p))#p: prob éxito
  i=0
  pr=(1-p)^n
  F=pr
  while (U>=F) {
    pr=((c*(n-i))/(i+1))*pr
    F=F+pr
    i=i+1
  }
  print(i)
}
bino(10,0.3)
  
binomialTransfInv=function(n,p){
  u=runif(1,0,1)
  c=(p/(1-p)); #p: prob éxito
  i=0; pr=(1-p)^n; F=pr
  while (u >= F){
    pr=((c*(n-i))/(i+1))*pr 
    F=F+pr
    i=i+1
  }   
  return(i)
}
binomialTransfInv(10,0.3)