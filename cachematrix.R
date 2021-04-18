setwd('C:/Users/ai.raaaa/Documents/Coursera-R')
##
## The x input set as a matrix 
## and then set the solved value as "s" that represent as a null
## then I changes each reference to "mean" as "solve"
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
s <- NULL
set <- function (y) {
   x << - y     
   s << - NULL      
}
get <- function() x 
setsolve <- function(solve) s <<- solve
getsolve <- function() s 
list(set = set, get = get, 
     setsolve = setsolve, 
     getsolve = getsolve) 
}
##
## Same here, replaced "mean" to "solve" and "m" to "s" 
cacheSolve <- functio(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
  message("return a matrix that is the inverse of 'x'")
  return(s) 
 }
 data<- x$get()solve()
 s <- solve(data, ...) 
 x$setsolve(s)
 s
}
