reset 
#set term wxt persist
set term pngcairo enhanced size 800,700
set output "10a.png"
unset key

plot "histograma_edad.dat"
unset output
