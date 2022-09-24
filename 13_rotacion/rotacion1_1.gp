#rotacion_!
set angles degree

#numero de particiones del circulo
N=45.

#angulo de giro
theta=360/N

#condiciones inciales 
x0=1
y0=0
#imprimimos condiciones iniciales
print "0 ", x0,y0
#circulo for  para el calculo automatico
do for[I=1:N]{

	xrot=x0*cos(theta)-y0*sin(theta)
	yrot=x0*sin(theta)+y0*cos(theta)
	
	x0=xrot
	y0=yrot
	
	print I,x0,y0
	
}

print "hola, es todo amigos.",N, "puntos rotados"
