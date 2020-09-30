set terminal png
set output "ErrorSombreado.png"

plot "gauss1.dat" u 1:($2-$3):($2+$3) w filledcurves fs solid 0.25 fc "dark-red" t "Zona error", "" w l lw 2 lc "dark-green" t "Datos"
