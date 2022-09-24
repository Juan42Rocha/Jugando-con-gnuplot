#set term wxt persist size 600,600
set term pngcairo enhanced size 600,600
set output "8.png"
unset key

set title "Polinimio"
set xlabel "_X_"
set ylabel "_y_"

a0=1 #valores adivinados iniciales
a1=1
a2=1
a3=1
a4=1
a5=1
f(x)=a0+a1*x+a2*x**2+a3*x**3+a4**x**4+a5*x**5
fit f(x) "Poly.dat" using 1:2 via a0, a1, a2, a3, a4, a5
plot "Poly.dat" using 1:2, f(x)
unset output
