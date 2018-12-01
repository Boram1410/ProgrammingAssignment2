## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix())
{ 
  inverse <- NULL
  input_matrix <- NULL
  
  set <- function(x){input_matrix <<- x}
  get <- function() {x}
  
  setinverse <- function(input){ inverse <<- input}
  getinverse <- function() {inverse}
  
  list(set = set, get = get, setinverse= setinverse , getinverse = getinverse)
}


cacheSolve <- function(x, ...){
  
  if(!is.null(x$getinverse())){
    print('cached inverse matrix')
    return =(x$getinverse())
  }
  
  else{
    return(x$setinverse(solve(x$get(),...)))
  }
}