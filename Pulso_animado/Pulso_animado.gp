#pulso_animado.gp

set term "gif" animate
set output "pulso.gif"

xmin= -2 
xmax= 5
ymin= -2
ymax= 2

TITULO= "Pulso viajero"

set tics scale 0.7

load "00.gp"

f(x)= abs(x) <=pi ? cos(10.*(pi/2.0)*x)*exp(-1.0*(x**2)): 1/0
n=50. #numero de frames
dx= (xmax-xmin)/n
do for [i=0:n-1]{
p=xmin+i*dx
plot f(x+p)+f(x-p)}
unset output
