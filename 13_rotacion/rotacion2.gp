#rotacion_2
set term gif animate size 600,600
set output "rotación.gif"
set size ratio 1
xmin=-2.0
xmax=2.0
ymin=-2.0
ymax=2.0
TITULO="Rtondo un circulo \n usando una matriz de rotación"
load "00.gp"

set angles degree
#numero de particiones del circulo
N=45.

#angulo de giro
theta=360/N

#condiciones inciales 
x0=1
y0=0

#circulo for  para el calculo automatico
do for[I=1:N]{
	set object circle at x0,y0 size 0.01
	set arrow from 0,0 to x0,y0 head size 0.07,20

	xrot=x0*cos(theta)-y0*sin(theta)
	yrot=x0*sin(theta)+y0*cos(theta)
	
	x0=xrot
	y0=yrot
	
	plot 1000
}
unset output
"print "hola, es todo amigos.",N, "puntos rotados"
	q
