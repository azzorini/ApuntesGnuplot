set terminal png
set output "AjusteExponencial.png"

set xrange [-0.5:10]
set yrange [0.5:4.5]

f(x) = A*exp(-B*x) + C

fit f(x) "data5.dat" via A, B, C

plot "data5.dat" w xyerr t "Datos", f(x) t "Ajuste"

