reset
set term wxt persist  size 800,600 #font "Times,18"

set xrange [-1:12]
set yrange [40:130]
set y2range [50:4000]
set xtics 0,1 rotate by 300 font "Times,10"
set ytics 0,5 nomirror
set y2tics 0,5000
set grid x
set grid y 
set grid y2
set title "Comparación de ingresos mínimos vs. precio de la gasolina"
#set xlabel "País"
set ylabel "Prescio gasolina [$/gal]"
set y2label "Ingeso salario mínimo [NMX]"
set datafile separator ";"

plot "Gasolina.dat" u 2:xticlabels(1) w lp t "Costo de gosolina por galón" axis x1y1,\
	"" u 3:xticlabels(1) w lp t "Salario mínimo" axis x1y2
