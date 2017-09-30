a<-matrix(1:6,ncol=3)
b<-matrix(7:12,ncol=3)
q<-matrix(mapply(sum,a,b),ncol=3)
q

w<-matrix(1:6,nrow=1)
u<-matrix(7:12,nrow=1)
w
u
add1<-c()
add1<-rep(NA,(length(w)+length(u)))
add<-function(w,u){
       sum1<-c()
       for(i in 1:length(w)){
             sum2<-c(w[i]+u[i])
             sum1[i]<-sum2
         }
       matrix(sum1,ncol=3)
}
add(w,u)

microbenchmark(add(w,u),q)
ggplot2::autoplot(microbenchmark(add(w,u),q))


