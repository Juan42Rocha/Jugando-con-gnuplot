# Temperatura_Min_Max_Jal.gp
reset
#set term wxt persist size 1400,600 enhanced font "Times New Roman"
set term pngcairo enhanced size 1400,600
set output "11_2.png"
set key box at 2000,18

set title "Temperatura promedio anual"
set xlabel "Tiempo [años]"
set ylabel "Temperatura [{/Symbol\260}C]


set xrange [1970:2015]
set yrange [10:30]

set xtics 5 nomirror
set ytics 1 nomirror

set grid x
set grid y

# set datafile separator ","
# usar este comando cuando los datos no contengan espacios entre columnas

plot "Temperatura_Min_Max_Jal.dat" u 1:2 t "Temperatura Mínima",\
"" u 1:2 t "Splines Cubicos" smooth csplines,\
"" u 1:3 t "Temperatura Máxima",\
"" u 1:3 t "Unique" smooth unique,\
"" u 1:(($2+$3)/2.) t "Temperatura Media",\
"" u 1:(($2+$3)/2.) t "Bezier" smooth bezier
# Signo $ se utiliza para especificar que se quieren hacer operaciones con los valores de las columnas,
# no con el número especificado
unset output
