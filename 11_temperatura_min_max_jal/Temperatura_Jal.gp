#temperatura_Min_Max_jal.gp
reset
set term wxt persist size 1400,600 enhanced font "Times 22"
#set term pngcairo enhanced size 1400,600
#set output "11_1.png"
set key box at 2015,12

set title "Temperatura promedio anual"
set xlabel "Tiempo [años]"
set ylabel "Temperatura Mínima [{/symbol \260}c]"
set y2label "Temperatura Máxima [{/symbol \260}c]"

set xrange [1970:2015]
set yrange [10:15]
set y2range [25:30]

set xtics 5 nomirror
set ytics 1 nomirror 
set y2tics 1 nomirror
set mxtics 5
set mytics 5
set my2tics 5

set grid x
set grid y 
set grid y2

#set datafile separator ","
#unsar  este comando cuadno los datos no contengan espacios entre columnas

M1=1 ;B1=1
M2=1 ;B1=1

r1(x) = M1*x+B1 #Modelar temp Min 
r2(x) = M2*x+B2 #Modelar temp Max

fit r1(x) "Temperatura_Min_Max_jal.dat" u 1:2 via M1,B1
fit r2(x) "Temperatura_Min_Max_jal.dat" u 1:3 via M2,B2

plot "Temperatura_Min_Max_jal.dat" u 1:2 w lp lc rgb "#0000cc" axis x1y1 t "Temperatura Minima" ,\
"" u 1:3 w lp lc rgb "#cc0000" axis x1y2 t "Temperatura Máxima" ,\
r1(x) lw 2 lc rgb "#000099" axis x1y1 t "Ajuste temp. Mínima" , \
r2(x) lw 2 lc rgb "#990000" axis x1y2 t "Ajuste temp. Máxima" 
#unset output
