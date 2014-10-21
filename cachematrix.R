# Claudio Nacif - Assigmente 2 - Coursera 
# This function calculate the inverse of a specific matrix and
# will save the results to the cache. The porpose of this is 
# to save for the next time we need to calculate the inverse.

# This function creates a Matrix, working as a list containing
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL # Setting m as a null (cache)
    set <- function(y){ # It will assign matrix y into X locally
        x <<- y 
        m <<- NULL # re-initialize
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- funcition() m # returned Cached X
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



# This function calculate the inverse of a matrix created before. Check if inverse
# is already calculated. If yes gets from cache and skip ,if no calculates and cached 
# usim setinverse().

cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'

    m <- x$getinverse()
    if(!is.null(m)) {
        message("Getting Cached Data")
        returm(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}

