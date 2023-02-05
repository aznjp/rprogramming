## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeVector <- function(x = numeric()) {
#   m <- NULL
#   set <- function(y) {
#     x <<- y
#     m <<- NULL
#   }
#   get <- function() x
#   setmean <- function(mean) m <<- mean
#   getmean <- function() m
#   list(set = set, get = get,
#        setmean = setmean,
#        getmean = getmean)
# }

# In this previous example we utilize the four functions within the makeVector function
# this is to make a list with the following 
# 1. Set the value of the vector
# 2. Get the value of the vector
# 3. Then set the value of the mean of said vector
# 4. Lastly, get the value of the mean from said vector


# in the final set you then add those to a giant list with each item as its own column


# cachemean <- function(x, ...) {
#   m <- x$getmean()
#   if(!is.null(m)) {
#     message("getting cached data")
#     return(m)
#   }
#   data <- x$get()
#   m <- mean(data, ...)
#   x$setmean(m)
#   m
# }

# in this function you will then take the argument of x and looks if getmean has already been calculated
# now if the item is not null or !is.null(m) then it will skip this and return the matrix

# otherwise it will grab the data of the matrix and then add them to the setmean column of said list

makeCacheMatrix <- function(x = matrix()) {
      inverseMatrix <- NULL
      set <- function(y) {
        x <<- y
        inverseMatrix <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) inverseMatrix <<- inverse
      getinverse <- function() inverseMatrix
      list(set = set, 
           get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}

# Now if we follow the same functionality with utilizing the inverse function rather than the mean function
# we can accomplish our goal which is to utilize closures (<<- operator) to make a mutable state in R


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
  
      inverseMatrix <- x$getinverse()
      if (!is.null(inverseMatrix)) {
        message("getting cached data")
        return(i)
      }
      data <- x$get()
      inverseMatrix <- solve(data, ...)
      x$setinverse(inverseMatrix)
      inverseMatrix
}

# This is a test matrix we will utilize with these formulas
# NOTE: This must have an inverse matrix for this to be able to run
A <- matrix(c(1,2,-1,2,1,2,-1,2,1),3,3)


inverseA <- makeCacheMatrix(A)
# this will make a list item which is cached and then put said matrix into the list with each functionality
# i.e set the matrix in set, then get the matrix in get, and so forth with the set inverse function and getting result of said inverse in get inverse item

cacheSolve(inverseA) 
# this should get grab the inverse if it is already calculated otherwise it will calculate it and spit out the results for you
