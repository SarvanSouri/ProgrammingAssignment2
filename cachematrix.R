## The below function is an optimised version of getting an inverse of a matrix. 
## It has two functions one of which creates a cache of the inverse and returns the same 
## when the matrix is unchanged.

## makeCacheMatrix function does the 4 following functions
##  set the value of the matrix
##  get the value of the matrix
##  set the value of the inverse
##  get the value of the inverse

makeCacheMatrix <- function(x = matrix()) { i <- NULL
set <- function(y) {
  x <<- y
  i <<- NULL
}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}


## The following function calculates the inverse of the above "matrix".It first checks to see 
## if inverse is already caluclated and if so returns the already cached value of inverse
## else it gives us the inverse and sets the value of inverse in the Cache

cacheSolve <- function(x, ...) { i <- x$getinverse()
if(!is.null(i)) {
  message("getting cached data")
  return(i)
}
data <- x$get()
i <- solve(data)
x$setinverse(i)
        
}
