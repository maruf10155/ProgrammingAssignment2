
## Creating a list
makeCacheMatrix=function(x=matrix()){
 inverse=NULL     
 set=function(y){
   x<<-y       ## set the value of matrix         
   inverse<<-NULL
 }
 get=function()x ##get the value of matrix
 setinverse=function(inverse) inverse<<-inverse ##set inverse of matrix
 getinverse=function() inverse ##get inverse of matrix
 list(set=set,get=get,setinverse=setinverse,
      getinverse=getinverse) ## create a list of functions
}



## this function gives inverse of matrix or gives a cached data

cacheSolve=function(x,...){
  inv=x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat=x$get()
  inv=solve(mat,...)
  x$setinverse(inv)
  makwCinv
}
