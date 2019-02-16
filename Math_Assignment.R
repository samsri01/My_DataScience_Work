ant

g = D(1 - e^(-lambda*x) ~ x)
g

h = D((x-a)/(b-a) ~ x)
h

i = D(((x-a)^2)/((b-a)*(c-a)) ~ x)
i

j = D(1-(((b-x)^2)/((b-a)*(c-a))) ~ x)
j

function1 <- function(x)
{
  3*(x^3)
}
integrate(function1,lower=0,upper = 10)


function2 <- function(x)
{
  x*(lambda *(e^(-lambda*x)))
}
k=antiD(x*(lambda *(e^(-lambda*x))) ~ x)
k
function3 <- function(x)
{
   1/(b-a) * x^0
}
integrate(function3,lower=0,upper = 0.5)

#

A <- diag(5)
A

A <- matrix(c(1,2,3,3,3,1,4,6,8),3,3, byrow = TRUE )
A
I <- diag(3)
I
library(matlib)

gaussianElimination(A,I,verbose = TRUE)
inv(A)

det(A)
library(matrixcalc)

lu.decomposition(A)

luA <- lu.decomposition(A)
luA

A %*% inv(A)