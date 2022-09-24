#uso_multiplot.gp
#uso de multiplot y funciónes trigonometricas

reset

set terminal "wxt" persist enhanced font "Times" title "Titulo de la ventana"
#set term pngcairo enhanced
#set output "mult.png"

set encoding utf8 # Permite acentos en el títulos

set multiplot layout 2,3 title "Funciones Trigonometricas" font "Times new roman, 18"
	unset border
	unset key
	set xzeroaxis lt -1 lw 1
	set yzeroaxis lt -1 lw 1
	set xtics axis font "Time new roman, 8"
	set ytics axis font "Time new roman, 8"
	
	xmin=-2.2*pi
	xmax=2.2*pi
	ymin=-1.5
	ymax=1.5
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "seno y=sen(x)" font "Times new roman, 12"
	plot sin(x)
	
	xmin=-2.2*pi
	xmax=2.2*pi
	ymin=-1.5
	ymax=1.5
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "Coseno y=cos(x)" font "Times new roman, 12"
	plot cos(x)
	
	xmin=-1.1*pi
	xmax=1.1*pi
	ymin=-2.0
	ymax=2.0
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "Tangente y=tan(x)" font "Times new roman, 12"
	plot tan(x)
	
	xmin=-1.1
	xmax=1.1
	ymin=-pi/2.0
	ymax=pi/2.0
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "Arcocoseno y=arccos(x)" font "Times new roman, 12"
	plot asin(x)
	
	xmin=-1.1
	xmax=1.1
	ymin=0
	ymax=pi
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "Arcocoseno y=arccos(x)" font "Times new roman, 12"
	plot acos(x)
	
	xmin=-1.1*pi
	xmax=1.1*pi
	ymin=-pi/2.0
	ymax=pi/2.0
	set xrange [xmin:xmax]
	set yrange [ymin:ymax]
	set title "Arcotangente y=arctan(x)" font "Times new roman, 12"
	plot atan(x)
	
unset multiplot
#unset output
