## These two functions (makeCacheMatrix and cacheSolve) take a matrix, compute the inverse, and cache it
## Coding by Steven Watson 01-23-2015


makeCacheMatrix <- function(x = matrix())  ## this function computes the matrix inverse
{
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}


cacheSolve <- function(x, ...)  ## this function computes the matrix inverse if not done or pulls in the cached value 
{
    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}
    


