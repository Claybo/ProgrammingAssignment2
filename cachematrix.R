## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The makeCacheMatric function will return a list of functions
## The function will save a matrix and also its inverse.

## set
## get
## set matrix
## get matrix


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
## Set the value of the matrix
  set <- function(y){
  x <<- y
  m <<- NULL
}

## Get the value of the matrix
get <- function() {x}

## Set the inverse of the matrix which is the cached value
setmatrix <- function(solve) {m <<- solve  }

## Get the inverse of the matrix (Cached)
getmatrix <- function() { m }
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}




## Write a short comment describing this function

## The following function calculates the inverse of a "special" 
## matrix created by the function makeCacheMatrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## Get inverse of matrix if it has been stored   
    m <- x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}


