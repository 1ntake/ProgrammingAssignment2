## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i_x <- NULL
    set <- function(y) {
      x <<- y
      i_x <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) i_x <<- inverse
    getInverse <- function() i_x
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
   

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i_x <- x$getInverse()
  if (!is.null(i_x)) {
    message("getting cached inverse matrix")
    return(i_x)
  } else {
    i_x <- solve(x$get())
    x$setInverse(i_x)
    return(i_x)
}
