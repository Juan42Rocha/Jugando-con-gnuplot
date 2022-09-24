#Estudio de la circunferencia

reset
#set terminal "wxt" persist
set term pngcairo size 600,600
set output "3.png"
unset border
unset key

r=5
k=1
h=2

set xzeroaxis lt -1 lw 2
set yzeroaxis lt -1 lw 2
set xrange [-10:10]
set yrange [-10:10]
set size ratio 1
set samples 2001
set xtics axis 1
set ytics axis 1
set grid 

y1(x)=sqrt(r**2 -x**2)
y2(x)=-sqrt(r**2 -x**2)
y3(x)=k+sqrt(r**2 -(x-h)**2)
y4(x)=k-sqrt(r**2 -(x-h)**2)

plot y1(x) lw 2 lt 0.5 lc rgb "#1BB632",y2(x) lw 2 lt 0.5 lc rgb "#1BB632",y3(x)lt rgb "#5FAED1", y4(x)lt rgb "#5FAED1"
unset output
