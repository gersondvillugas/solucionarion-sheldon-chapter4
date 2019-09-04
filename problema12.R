rm(list =ls())
s<-rep(0,10)
for (i in 1:10) {
  s[i]=s[i]+(2^i/factorial(i))
}
pri<-sum(s)

TransfInv=function(pri){
  u=runif(1,0,1)
   #p: prob éxito
  i=0; pr=(1/pri); F=pr
  while (u >= F){
    pr=((2/i)*pr) 
    F=F+pr
    i=i+1
  }   
  return(i)
}
TransfInv(pri)

