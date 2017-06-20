## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function (x=matrix()){
  m<-NULL #sets the value of m to NULL 
  y<-NULL #sets the value of y to NULL 
  setmatrix <- function(y){ #set the value of the matrix
    x<<-y ## caches the inputted matrix 
    m<<-NULL # sets the value of m to NULL
    
  }
  getmatrix <- function() x #gets 
  setinverse<-function(solve) m<<- solve # sets the inverse of the matrix to cache
  getinverse<-function() m #gets the inverse matrix
  
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse) # creates a list to house the four functions 
}



cacheSolve<- function (x,...){
  m<- x$getinverse() #if an inverse has already been calculated this gets it
  if (!is.null(m)){ # checks to see if matrix already has values 
    message("getting cached data") #announces that the values are obtained from cache
    return(m) #gets the values from cache
  }
  data <- x$getmatrix() # if m is not in cache it gets the matrix
  m <- solve(data) # solves for the inverse of the matrix
  x$setinverse(m) # caches the inverse
  m #prints the inverse 
}
