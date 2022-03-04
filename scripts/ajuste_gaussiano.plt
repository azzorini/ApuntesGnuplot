set terminal png
set output "AjusteGaussiano.png"

set xrange [-1.5:9.5]
set yrange [0:1.2]

g(x) = A*exp(-(x-m)**2/2/s2)

A = 1
m = 3
s2 = 2

fit g(x) "gauss2.dat" via A, m, s2

plot "gauss2.dat" w yerr t "Datos", g(x) t "Ajuste"

