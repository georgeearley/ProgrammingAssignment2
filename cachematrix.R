## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The makeCacheMatrix funciton has one call, x (which is a matrix)
# It uses the following as a model:
#  makeVector <- function(x = numeric()) {
#        m <- NULL
#        set <- function(y) {
#                x <<- y
#                m <<- NULL
#        }
#        get <- function() x
#        setmean <- function(mean) m <<- mean
#        getmean <- function() m
#        list(set = set, get = get,
#             setmean = setmean,
#             getmean = getmean)
#       }

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL                               #instead of a mean, we are setting an inverse, so I use the symbol i
        set < function(y) {
                x <<- y                         #i use the double <<- to assign the value to an outside environment
                i <<- NULL
        }
        get <- funciton() x
        setinverse <- function(inverse) i <- inverse
        getinverse <- function() i
        list(set = set, get = get
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
        ## Return a matrix that is the inverse of 'x'
#Using the following as a model:
#  cachemean <- function(x, ...) {
#        m <- x$getmean()
#        if(!is.null(m)) {
#                message("getting cached data")
#                return(m)
#        }
#        data <- x$get()
#        m <- mean(data, ...)
#        x$setmean(m)
#        m
#  }

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        }
        


}
