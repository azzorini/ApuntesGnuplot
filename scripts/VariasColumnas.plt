set terminal png
set output "VariasColummnas.png"


unset key
set xrange [0:5]
set yrange [0:10]

plot "data2.dat" u 1:2, "" u 1:3
