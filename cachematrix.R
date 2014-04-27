## Reduce time-consuming computation of the inverse of a matrix by caching the 
## result for use, rather than recomputing each time. (Note: assumes matrix is 
## invertible)

## Creates "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}


## Computes inverse of "matrix" object returned by makeCacheMatrix()
## If inverse has been calculated (and matrix not changed), 
## cacheSolve() should retrieve cached inverse value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
