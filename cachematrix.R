## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	 #generate a null variable to later store the inverse is
	i <- null
	
	#create a function in the function which can set/reset the matrix
	set <- function(z){
				x <<- z
				i <<= NULL
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
