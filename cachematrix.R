## Calculate the inverse of a matrix, and cache it in case it is needed again

## Return a matrix that can cache its own inverse
makeCacheMatrix <- function(x = matrix()) {
  matrix = x
  inverse <- NULL
  
  set <- function (aMatrix) {
    matrix <<- aMatrix
    inverse <<- NULL
  }
  get <- function () { return (matrix) }
  setInverse <- function (anInverse) {
    inverse <<- anInverse
  }
  getInverse <- function () { return (inverse) }
  this = list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
  return (this)
}

## Return a matrix that is the inverse of 'x', using the cached value if present
cacheSolve <- function(x, ...) {
  
  inverse <- x$getInverse()
  if (!is.null(inverse)) {
    message("getting cached data")
    return (inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setInverse(inverse)
  return (inverse)
}
