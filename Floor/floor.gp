#floor(x) es una función cuyo valor no es el entero mas grande que sue argumento

reset

# set term "wxt" persist
set term pngcairo enhanced 
set output "floor.png"

 
 set xrange [-5:5]
 set yrange [-10:10]
 
 set xtics 1
 set ytics 1
 
 set grid
 set samples 1001
  
 plot floor(x) lc rgb "#000200", ceil(x) lc rgb "#0000cc", abs(x), sgn(x)
unset output
