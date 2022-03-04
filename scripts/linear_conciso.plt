set terminal png
set output "ajustelineal.png"

set key top left

stats "data3.dat" u 1:2 nooutput

f(x) = m*x + n
set fit quiet
fit f(x) "data3.dat" via m, n

print "Pendiente: m = ", m, " +/- ", m_err, " (", (m_err/m*100), "%)"
print "Ordenada en el origen: n = ", n, " +/- ", n_err, " (", (n_err/n*100), "%)"
print "Coeficiente de correlación r = ", STATS_correlation

plot "data3.dat" w xyerr t "Datos", f(x) t "Ajuste"
