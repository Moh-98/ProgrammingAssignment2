## Functions to cache the inverse of a matrix


## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y) {
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) n <<- inverse
  getinv <- function() n
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)

}


## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  
  n <- x$getinv()
  matr <- x$get()
  n <- solve(matr, ...)
  x$setinv(n)
  n
  ## Return a matrix that is the inverse of 'x'
}

