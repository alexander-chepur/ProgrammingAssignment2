## This script implements matrix inversion functions with ability to cache 
## results in order to prevent time consumption if recomputing of results
## is required. Function assumes that the arguments are square invertible 
## matrix.
##
## makeCacheMatrix: This function creates a special "matrix" object that 
##                  can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" 
##                  returned by makeCacheMatrix above. If the inverse 
##                  has already been calculated (and the matrix has not 
##                  changed), then the cachesolve retrieves the inverse 
##                  from the cache.


## makeCacheMatrix creates a special list 
## containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of the matrix
## get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) i <<- solve
        getsolve <- function() i
        list(set= set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## The following function calculates the inverse of martix in the special list
## created with the above function. It first checks to see if the inverse matrix
## has already been calculated. If so, it gets the inverse from the cache and 
## skips the computation. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
