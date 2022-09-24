#set term "wxt" persist size 600,600
set term pngcairo enhanced size 600,600
set output "horror.png"

unset key
set dummy t

set title "Distancia recorrida"
set xlabel "tiempo [s]"
set ylabel "Distancia [cm]"

set xrange [0.0:10.0]
set yrange [10.0:90.0]

#adivinamos valores iniciales
v=1
v0=1
x(t)= v*t+v0

fit x(t) "distancia_tiempo_errores.dat" using 3:1 via v,v0
plot "distancia_tiempo_errores.dat" using 3:1 , x(t) #with yyerrorbars
unset output
