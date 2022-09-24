# luxometro.gp
reset 
#set term wxt persist size 800,650 enhanced
#enhanced, para representar ecuaciónes mejor presentadas
set term pngcairo enhanced size 800,650
set output "9.png"
set title "Iluminacion"
set xlabel "Distancia [m]" 
set ylabel "Iluminacion [lux]"

#La intenciadad luminica decae con la distancia

I(x)= A / (x**B)

#ajustar parameto(s)

fit I(x) "luxometro.dat" using 1:2 via A,B

set label "{/times=19 \
I(x)=59.7(\261 7)/r^{1.518(\261 0.0454)}" at 0.2,2000

plot "luxometro.dat" u 1:2 , I(x)
unset output
