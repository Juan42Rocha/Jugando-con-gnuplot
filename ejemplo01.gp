set term "wxt" persist
set samples 301

z(x,y)=cos(3*(x**2+y**2))*exp(-0.4*(x**2+y**2))

splot z(x,y)
