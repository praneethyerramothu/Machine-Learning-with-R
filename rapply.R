i<-0
vec <- c()

f1<- function(){
  
  vec <- rep(NA,501)
  j<- 0
  while(i<=1000){
    q<-i+i
    i<-i+2
    vec[j] <- q
    j <- j+1
  }
  print(vec)
}
f1()

a<-seq(2,1000,by=2)
b<-list(a)
c<-rapply(b,function(x) x+x)
c
microbenchmark(vec,c)

ggplot2::autoplot(microbenchmark(vec,c))
