## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Following the vector example, this function creates a list containing a function to set and get the value of the matrix and get and set the value of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
	x <<- y
	m <<- NULL
	}
	get <- function() x
	setcache <- function(solve) m <<- solve
	getcache <- function() m
	list(set = set, get = get,
		setcache = setcache,
		getcache = getcache)
}


## Write a short comment describing this function
## This function calculates inverse for cached data above

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	m <- x$getcache()
	if(!is.null(m)) {
	message("getting cached matrix")
	return(m)
	}
	data <- x$get()
	m <- solve(data)
	x$setcache(m)
	m
}
