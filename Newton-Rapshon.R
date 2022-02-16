x = 1
f_x = function(x) {5*x^3-2*x^2-5*x+1}
dev = function(x) {15*x^2-4*x-5}
tol = 1e-3
iter = 0
max = 20
x_ii = x
x = x_ii+10*tol
while(abs(x-x_ii) > tol) {
  iter = iter+1
  if(iter > max)
    stop("No hay solución de la función")
  x_ii = x
  x = x-f_x(x)/dev(x)
}
print(paste('Iteraciones: ',iter))
print(paste(x))