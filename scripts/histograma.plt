set terminal png
set output "histograma.png"

g(x) = A*exp(-(x-m)**2/2/s2)

A = 1
m = 3
s2 = 2

fit g(x) "gauss2.dat" via A, m, s2

unset key

plot "gauss2.dat" u 1:2:3 w boxerr fs solid 1.0 border lc "black" lw 1.5 fc "light-blue", g(x) lw 2 lc "dark-red"
