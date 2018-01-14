## The Goal within this code is to develope two functions namely makeCacheMatrix and cacheSolve.
## They should cache the inverse of a matrix to lighten the workload.

## The puspose of makeCacheMatrix is to store a martix and a cached value of the inverse of the matrix
## The steps will be the following: 1. set the matrix, 2. get the matrix, 3. set the cache, 4. get the cache.

makeCacheMatrix <- function(x = matrix()) {
        
        # initially nothing is cached so set it to NULL
        cache <- NULL
        
        # Step 1. Storing
        setMatrix <- function(nValue) {
                x <<- nValue
                # since the matrix is assigned a new value, rewrite the cache
                cache <<- NULL
        }
        # Step 2. Returning
        getMatrix <- function() {
                x
        }
        # Step 3. Caching
        cacheInverse <- function(solve) {
                cache <<- solve
        }
        # Step 4. Get cached Value
        getInverse <- function() {
                cache
        }
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# The following function calculates the inverse of a matrix created with makeCacheMatrix
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(yValue, ...) {
        # get the cached value
        inverse <- yValue$getInverse()
        # if a cached value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # otherwise get the matrix, caclulate the inverse and store it in the cache
        data <- y$getMatrix()
        inverse <- solve(data)
        yValue$cacheInverse(inverse)
        
        # return wanted result 
        inverse
}