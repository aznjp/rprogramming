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

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
