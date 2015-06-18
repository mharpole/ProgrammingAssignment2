## The makeCacheMatrix function generates a special matrix which is able to be 
## recalled by cacheSolve and if the matrix's inverse has not been solved
## cacheSolve will solve it.

## makeCacheMatrix function generates an object which is connected to a matrix.
## additionally a list of functions are not attached to this matrix which allow
## the setting of the matrix value, returning of the matrix value, setting the
## matrix inverse, and returning the matrix inverse.

makeCacheMatrix <- function(x = matrix()) {
	 #generate a null variable to later store the inverse is
	i <- NULL
	
	#create a function in the function which can set/reset the matrix
	set <- function(z){
				x <<- z
				i <<- NULL
		}
	# create a function which returns the cached matrix
	get <- function() x
	
	# create a function which will set the inverse to i
	setinverse <- function(solve) i <<-solve
	
	# create a function which will return the value stored in i(later will have
	#the inverse
	getinverse <- function() i
	
	# create a list of the functions embedded within the main function
	list(set = set, get = get, setinverse = setinverse, 
	getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
