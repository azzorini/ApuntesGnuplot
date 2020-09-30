set terminal png
set output "ajustelineal.png"

set key top left
f(x) = m*x + n
fit f(x) "data3.dat" via m, n
plot "data3.dat" w xyerr t "Datos", f(x) t "Ajuste"
