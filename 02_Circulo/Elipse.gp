#Estudio de la circunferencia

reset
#set terminal "wxt" persist
set term pngcairo enhanced size 600,500
set output "2.png"
unset border
unset key

set xzeroaxis lt -1 lw 2
set yzeroaxis lt -1 lw 2
set xrange [-2:3]
set yrange [-2:6]
set size ratio 1
set samples 2001
set xtics axis 0.5
set ytics axis 0.5
set grid 

a=1 ; b=3  #a y b son los semi-ejes
h=1 ; k=2  #centro (h,k)

discri(x)=b*sqrt(1-((x-h)/a)**2)
y1(x)=k+ discri(x)
y2(x)=k- discri(x)


plot y1(x)   lc rgb "#1BB632",y2(x)  lc rgb "#1BB632"
unset output
