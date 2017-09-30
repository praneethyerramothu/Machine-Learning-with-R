n<-5

x<-factor(rep_len(1:5,n))
x
      q<-  tapply(1:n,x,function(x) x-1)
 
i<-1         
levels<-c()
levels<-rep(NA,n)
out<-c()
out<-rep(NA,n)
while(i<=n){
levels<-c(i)
out<-i
i<-i+1
}
for(j in 1:n){
  out<-c(out-1)
  print(out)
}

microbenchmark(out,q)
ggplot2::autoplot(microbenchmark(out,q))
