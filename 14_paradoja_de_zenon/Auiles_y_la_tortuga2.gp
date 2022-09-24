#Aquiles_y_la_tortuga2.gp

reset
set term "gif" animate size 800,600
set output "Aquile_tort.gif"

set title "Aquiles yla Tortuga \n (Zenon de Elea)"
set xrange [0:120]
set yrange [0:31]

set mxtics 5

set grid mxtics xtics
set style fill solid 1.0 border .1
Xaqui0=0  #posición inicial de quieles
Xtort0=50 #posición inicial de la tortuga

vaqui=4 #volocidad de quiles
Vtort=2 #velocidad de la tortuga

N= 30 #numero de calculos

Nivelaqui=1 #segmento de datos de aquiles 
Niveltort=2 #segmento de datos de la tortuga

#funcion a resolver de forma iteratigva
#x=dt*v+x0

do for [I=0:N]{
	set arrow from Xaqui0,1  to  Xtort0,2
	set object circle at Xaqui0,1 size 1 fc rgb "red"
	set object circle at Xtort0,2 size 1 fc rgb "green"
	
	plot 4
	Xaqui0=Xaqui
	Xtort0=Xtort
	}
	
unset output
