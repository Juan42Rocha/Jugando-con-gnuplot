reset 

set terminal "wxt" persist enhanced size 840, 360 font "Verdana, 10" background "#000000"
#set term pngcairo enhanced size 840,360 font "Verdana, 10" background "#000000"
#set output "5.png"

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#ffffff" behind

#no se pinta el cuadro exterior de la grafica

unset border 
unset xzeroaxis
unset yzeroaxis
unset xtics
unset ytics

f(x)=abs(x/2.0)-0.0913722*x**2.0-3.0+sqrt(1-(abs(abs(x)-2)-1)**2)
g(x)=(2.71852+1.5-0.5*abs(x)-1.35526*sqrt(4-(abs(x)-1)**2))*\
	sqrt(abs(abs(x)-1)/(abs(x)-1))+0.9
h(x)=(-3)*sqrt(1-(x/7)**2)*sqrt(abs(abs(x)-4)/(abs(x)-4))
j(x)=2*sqrt((-abs(abs(x)-1))*abs(3-abs(x))/((abs(x)-1)*\
(3-abs(x))))*(1+abs(abs(x)-3)/(abs(x)-3))*sqrt(1-(x/7)**2)+\
(5+0.97*(abs(x-0.5)+abs(x+0.5))-3*(abs(x-0.75)+abs(x+0.75)))*\
(1+abs(1-abs(x))/(1.0-abs(x)))

#set size square
set samples 99501

unset key

plot f(x) with filledcurves y1=0 lc rgb "#000000",\
	 g(x) with filledcurves y1=0 lc rgb "#000000",\
	 h(x) with filledcurves y1=0 lc rgb "#000000",\
	 j(x) with filledcurves y1=0 lc rgb "#000000"
#unset output
