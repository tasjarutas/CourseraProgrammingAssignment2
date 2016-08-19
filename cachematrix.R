## Put comments here that give an overall description of what your
## functions do
##First, makeCacheMatrix create a matrix and cache its inverse.
##Then, compute the inverse matrix but if it has not changed, just return the matrix from cache
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  
  # create the matrix in the working environment
  set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  
  # get the value of the matrix
  get <- function() x
  # invert the matrix and store in cache
  setMatrix <- function(solve) cache <<- solve
  # get the inverted matrix from cache
  getMatrix <- function() cache
  
  # return the created functions to the working environment
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
}



## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  cache <- x$getMatrix()
  if(!is.null(cache)){
    message("Getting cache data")
    return (cache)
  }
  matrix <- x$get()
  cache<-solve(matrix, ...)
  x$setMatrix(cache)
  return (cache)
}
