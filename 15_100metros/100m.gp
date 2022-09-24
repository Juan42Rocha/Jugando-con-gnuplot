#set term wxt persist enhanced size 800,600
set term pngcairo size 800,600
set output "mult2.png"

set multiplot layout 2,2 title "Carl Lewis vs Usain Bolt" font "Times New Roman,18"

set xlabel "Tiempo [s]"
set ylabel "Desplazamiento [m]"
set key at 5,80
plot "100m_carl_lewis.dat" u 1:2 w lp t "Carl Lewis", "100m_usain_bolt.dat"\
	u 1:2 w lp t "Usain Bolt"

set ylabel "Rapidez [ms^{-1}]"
set key at 8,8
plot "100m_carl_lewis.dat" u 1:3 w lp t "Carl Lewis", "100m_usain_bolt.dat"\
	u 1:3 w lp t "Usain Bolt"

set ylabel "Aceleración [ms^{-2}]"
set key at 8,4
plot "100m_carl_lewis.dat" u 1:4 w lp t "Carl Lewis", "100m_usain_bolt.dat"\
	u 1:4 w lp t "Usain Bolt"

set ylabel "Potencia [HP]"
plot "100m_carl_lewis.dat" u 1:($5/745.7) w lp t "Carl Lewis", "100m_usain_bolt.dat"\
	u 1:($5/745.7) w lp t "Usain Bolt"
	
	unset multiplot
unset output
