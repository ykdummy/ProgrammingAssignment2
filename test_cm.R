
#test the code
x<-makeCacheMatrix()

#1
x1<-matrix(1:4,nrow = 2,ncol = 2)
x$set(x1)
print(
  cacheSolve(x)
)

#2
set.seed(1)

x1<-matrix(rnorm(16),nrow = 4,ncol = 4)
x$set(x1)
print(
  cacheSolve(x)
)

#3
set.seed(1)

x1<-diag(rnorm(10))
x$set(x1)
print(
  cacheSolve(x)
)

#4
x1<-matrix(1:6,nrow = 2,ncol = 3)
x$set(x1)
print(
  cacheSolve(x)
)