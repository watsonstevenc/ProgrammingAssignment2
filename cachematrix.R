## These two functions (makeCacheMatrix and cacheSolve) take a matrix, compute the inverse, and cache it
## Coding by Steven Watson 01-23-2015
## I know it's not pretty, I really don't understand the scoping...


makeCacheMatrix <- function(x = matrix())  ## this function computes the matrix inverse
{
solve(x) ##computes the inverse of x  
}


cacheSolve <- function(x, ...)  ## this function computes the matrix inverse if not done or pulls in the cached value 
{
    if(!is.null(makeCacheMatrix(x)))  ## if the makeCacheMatrix is not null...
    {
        message("getting cached data") ## print this message
        return(solve(x))  ## and return the inverse
    }
    solve(x) ## otherwise, calculate and return the inverse
}
    


