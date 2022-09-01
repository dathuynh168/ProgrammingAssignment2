## This project includes two functions required in Assignment2 
## The first is to create special matrix that the inverse of the matrix can be cached
## The second is to return the value of inverse of special matrix


## This function is to create special matrix and able to
## set another matrix
## get matrix
## set the inverse matrix
## get the inverse matrix
makeCacheMatrix <- function(matrix = matrix()){
        invmatrix <- NULL
        set <- function(nmatrix){
                matrix <<- nmatrix
                
        }
        get <- function() matrix
        setinverse <- function(minverse) invmatrix <<- minverse
        getinverse <- function() invmatrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function is to return the inverse matrix
cacheinverse <- function(x,...){
        m <- x$getinverse()
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        m
}