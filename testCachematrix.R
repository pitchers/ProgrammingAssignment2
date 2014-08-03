
source("cachematrix.R")

mmm <- matrix(c(1, 2, 2, 6), nrow=2)
print(mmm)

myMatrix <- makeCacheMatrix(mmm)

print(myMatrix$getInverse())

inverse <- cacheSolve(myMatrix)
print(inverse)

inverse <- cacheSolve(myMatrix)
print(inverse)
