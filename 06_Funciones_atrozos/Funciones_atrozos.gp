#funciones a trozos
reset

 #set term "wxt" persist
 set term pngcairo enhanced size 800,800
 set output "6.png"
 set xrange [-5:5]
 set yrange [-5:2]
 
 set xtics 1
 set ytics 1
 
 set grid
 set samples 1001
 
 f(x)= x<=1 ? x**2:-x+2
 t(x)=x<=-1 ? x+2:f(x)
 
 plot t(x)
unset output
