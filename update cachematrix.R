## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function get the value of a matrix, set and get the inverse of the matrix 
makeCacheMatrix <- function(x = matrix()) {
  m= NULL
  set<- function(y){
    x<<-y
    m= NULL
  }
  get<- function() x
  setinv<- function(solve) m <<- NULL
  getinv<- function() m
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}



## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

