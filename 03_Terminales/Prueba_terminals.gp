#Prueba_terminales.gp

#Uso de terminales para considerar la resolución de la curva

reset
#Definimos una función cualquiera y un muestreo apropiado
f(x)=abs(x)*exp(-.8*x*x)+0.25
set sample 1001

set term png size 200,200
set output "Prueba_png.png"
plot f(x)
unset output
pause -1 "Se genero un archivo png. [ENTER]"

set term pngcairo size 200,200
set output "Pueba_pngcairo.png"
plot f(x)
unset output
pause -1 "Se generó un archivo png usando librerias cairo. [ENTER]"

set term gif size 200,200
set output "Prueba_gif.gif"
plot f(x)
unset output
pause -1 "Se generó un archivo gif. [ENTER]"

set term epslatex size 3.0,3.0 standalone
#Usar standalone para poder compilar en latex y ver, posteriormente
#volver a graficar sin standalone
set output "pruba_epslatex.tex"
#se crean en realidad dos archivos: uno con extensión .tex, que es latex
#otro con extensión .eps
plot f(x)
unset output
pause -1 "se generaron dos archivos: .tex y .eps. [ENTER]"

set term jpeg size 200,200
set output "Prueba_jpeg.jpg"
plot f(x)
unset output
pause -1 "Se generó un archivo jpg. [ENTER]

set terminal pdfcairo size 3.0,3.0
set output "Prueba_pdfcairo.pdf"
plot f(x)
unset output
pause -1 "Se generó un archivo utilizando las bibliotecas cairo. [ENTER]"
