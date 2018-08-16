<<<<<<< HEAD
##August 15, 2018
## R Programming Course Week 3 Programming Assignment 
## Write function that calculates the inverse of a matrix or gets the cached value if already calculated

##makeCacheMatrix is a function that is a list of functions that set the value of a matrix, get hte value of the matrix, set the value of the inverse, and get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL 
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse 
	getinverse <- function() m 
	list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## cacheSolve is a function that returns the inverse of a matrix (for inverses that were already calculated, the function gets the inverse matrix from the cached value)

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m)){
		message("getting cached data") 
		return (m) 
	}
	data <- x$get()
	m <- solve(data, ...) 
	x$setinverse(m) 
	m
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
        ## Return a matrix that is the inverse of 'x'
}
