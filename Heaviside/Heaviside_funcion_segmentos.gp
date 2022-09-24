#Heaviside function fragmentada
set term gif animate 
set output "pulso.gif"

xmin=-2
xmax=5
ymin=-1
ymax=1.5

TITULO="Funcion de Heaviside"

load "00.gp"

set tics scale 0.7
set samples 1001

#Funcion de heaviside
H(x)=(1.0+sgn(x))/2.0

#Funcion cajon (Boxcar), donde a>b y b-a=longitud de la caja
a=2;b=4 #en este caso la caja tiene longitud 2
B(x)=H(x-a)*H(b-x)

#Un cuanto de energia
pulso(x)=B(x)*sin(30*x)*exp(-5*(x-3)**2)

n=100.
dx=(xmax - xmin)/n #paso
do for[i=0:n-1]{
	p= xmin+i*dx
	plot pulso(x+p)+pulso(x-p)
}

unset output
