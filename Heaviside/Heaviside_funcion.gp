#Heaviside function
#set term "wxt" persist
set term pngcairo enhanced
set output "heavi.png"


xmin=-2
xmax=5
ymin=-1
ymax=-2*(ymin)

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

plot H(x-1)*H(b-x)
#plot H(-x)*H(x+1)

#plot H(x-1)*H(-x+3)
#plot pulso(x+2)
unset output
