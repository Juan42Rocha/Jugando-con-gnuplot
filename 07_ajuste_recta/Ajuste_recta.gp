set term "wxt" persist font "Times" size 800,600
unset key
#set term pngcairo enhanced size 800,700
#set output "7.png"
set xrange [0.0:10.0]
set yrange [.0:10]

#Buscamos un modelo lineal y(x)=m*x+b
y(x)=m*x+b
y1(x)=(0.9346+0.081)*x +(0.3596+0.512)
y2(x)=(0.9346-0.081)*x +(0.3596-0.513)
#Buscamos ajustar las constantes m y b por el comadno fit

#v=1,v0=1,x(t)= v*t+v0

fit y(x) "puntos.dat" using 1:2 via m,b
plot "puntos.dat" using 1:2, y(x),y1(x),y2(x)
#unset output
