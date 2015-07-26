## This is an R programming assignment for Coursera "R programming" course
## This R file is aimed at caching inverse of a matrix

## Write a short comment describing this function
m <- matrix(c(2,1,5,3),2,2)
makeCacheMatrix <- function(x = matrix()) {
  cached_inverse <- NULL
  setinverse <- function(inverse) {
    cached_inverse <<- inverse
  }
  list(self=x,cached_inverse=cached_inverse,setinverse=setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$cached_inverse
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$self
  i <- solve(data, ...)
  x$setinverse(i)
  print('x$cached')
  print(x$cached_inverse)
  print('i:')
  i
}
