## Put comments here that give an overall description of what your
## functions do

## Creates matrix object which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  c_matrix <- NULL
  set <- function(y){
    x <<- y
    c_matrix <<- NULL
  }
  get <- function() x
}


## Computes the inverse of matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
  c_matrix <- x$getmatrix()
  ## Return a matrix that is the inverse of 'x'
  solve(x)
}
