#histograma.gp

reset
#set term wxt persist enhanced
set term pngcairo enhanced size 800,600
set output "10.png"
set boxwidth 1
bw=1

bin(x,width) = width * floor(x/width)+ bw/2.0
set xrange[0:*]
set yrange[0:*]

plot "calif_2013b_fisica.dat" using (bin($4,bw)):(1) smooth freq with boxes
unset output
