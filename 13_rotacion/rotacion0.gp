#rotacion0.gp

set angles degree
#angulo de giro
theta=45.

#concdiciones iniciales
x0=1
y0=0

print x0,y0

#srot y yrot, son las nuevas coordenadas giradas
xrot=x0*cos(theta)-y0*sin(theta)
yrot=x0*sin(theta)+y0*cos(theta)
x0=xrot
y0=yrot

print x0,y0
print "hola mundo"

#srot y yrot, son las nuevas coordenadas giradas
xrot=x0*cos(theta)-y0*sin(theta)
yrot=x0*sin(theta)+y0*cos(theta)
x0=xrot
y0=yrot

print x0,y0
