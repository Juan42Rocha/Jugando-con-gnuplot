reset
set term wxt persist size 800,600 enhanced
#set term pngcairo enhanced size 800,600
#set output "14.png"

set title "Aquiles yla Tortuga \n (Zenon de Elea)"
set xrange [0:120]
set yrange [0:3]

set mxtics 5

set grid mxtics xtics

set arrow from 4,1 to 52,2 nohead
set arrow from 8,1 to 54,2 nohead
set arrow from 12,1 to 56,2 nohead
set arrow from 16,1 to 58,2 nohead
set arrow from 20,1 to 60,2 nohead
set arrow from 24,1 to 62,2 nohead
set arrow from 28,1 to 64,2 nohead
set arrow from 32,1 to 66,2 nohead
set arrow from 36,1 to 68,2 nohead
set arrow from 40,1 to 70,2 nohead
set arrow from 44,1 to 72,2 nohead
set arrow from 48,1 to 74,2 nohead
set arrow from 52,1 to 76,2 nohead
set arrow from 56,1 to 78,2 nohead
set arrow from 60,1 to 80,2 nohead
set arrow from 64,1 to 82,2 nohead
set arrow from 68,1 to 84,2 nohead
set arrow from 72,1 to 86,2 nohead
set arrow from 76,1 to 88,2 nohead
set arrow from 80,1 to 90,2 nohead
set arrow from 84,1 to 92,2 nohead
set arrow from 88,1 to 94,2 nohead
set arrow from 92,1 to 96,2 nohead
set arrow from 96,1 to 98,2 nohead
set arrow from 100,1 to 100,2 nohead
set arrow from 104,1 to 102,2 nohead
set arrow from 108,1 to 104,2 nohead
set arrow from 112,1 to 106,2 nohead
set arrow from 116,1 to 108,2 nohead
set arrow from 120,1 to 110,2 nohead

plot "Aquiles_luthier.dat" u 3:(1.0) w p pt 6\
t "Aquiles pies ligeros", "" u 2:(2.0) w p pt 6 t "La tortuga tramposza"
#unset output
