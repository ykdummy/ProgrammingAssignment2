## This is an excersize on Coursera R programming course, W3 assignment submitted for Peer Review
## The following function is a modification of makeVector example code to 
## develop code objects/tools for caching the inversematrix

## The following object contains of within-object-defined functions to read/write "Inverse" [..$inv] attribute

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  setinv <- function(inv_val) inv <<- inv_val #in order not to confuse var/attr names 
  getinv <- function() inv
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## The following code implments Inverse matrix calculations

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
   matrix_data <- x$get()
   inv <- solve(matrix_data)
   x$setinv(inv)
   inv
}
