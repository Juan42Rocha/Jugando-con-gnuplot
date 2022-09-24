#pulso

reset

set term  gif animate
set output "pulso.gif"

TITULO=""

xmin=-2
xmax=2
ymin=-2
ymax=2

load "00.gp"

f(x)= x<=1 ? 1-x**2*cos(2*pi*x):1/0
g(x)=x<= -1 ? 1/0 :  f(x)

set samples 1001

n=50
dx=(xmax-xmin)/n
do for[i=0:n-1]{                                                                                                                                                            
	p=xmin+i*dx
	plot g(x-p)
}

unset output
