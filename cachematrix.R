## Reduce time-consuming computation of the inverse of a matrix by caching the 
## result for use, rather than recomputing each time. (Note: assumes matrix is 
## invertible)

## Creates "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Computes inverse of "matrix" object returned by makeCacheMatrix()
## If inverse has been calculated (and matrix not changed), 
## cacheSolve() should retrieve cached inverse value

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    ## Check for and retrieve cached inverse
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
