#Estudio de la recta

set terminal "wxt" persist #para que se mantenga la grafica
#set term pngcairo enhanced size 600,600
#set output "1.png"
#decoracion
#http://www.firebirds.com.ar/lugcos/deposito/docs/gnuplot/gnuplot.html  pagina 
set title "Estudio de la recta"
set ylabel "Eje _Y_"
set xlabel "Eje _X_"
set yrange [-60:40]

set size ratio 1

b=-5
m=4
b1=-16

y(x)=m*x+b

y2(x)= (-1)*m*x+b

y3(x)= 3.33333333 #recta horizontal

set arrow at 0,-50 to 0,40 nohead
y4(x)=(-1)*m*x+b-16

y5(x)=x

xcirc=0
set object 1 circle at xcirc,y(xcirc) size 0.2

ycirc=0
set object 2 circle at xcirc,y(xcirc) size 1

plot y(x) linewidth 2 linetype rgb "#000000",y2(x) linewidth 3,y3(x)lw 4 linetype rgb "#646464",y4(x),y5(x)
#unset output
