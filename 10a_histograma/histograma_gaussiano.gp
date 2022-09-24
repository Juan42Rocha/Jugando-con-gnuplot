#histograma_gaussiano.gp
reset
set term wxt persist

n= 100 #número de intervalos
max=3 #valor maximo
min=-3 #valor minimo
width = (max-min)/n  #ancho de intervalo

#funcion usada para mapear valores en un invervalo
hist(x,width)= width * floor (x/width) + width/2

set xlabel "x"
set ylabel "Frecuencia"

#contar y graficar

plot "histograma.dat"  using (hist($1,width)):(1.0)  smooth freq with boxes
