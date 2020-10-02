set term gif animate delay 2
set output "sistemasolar.gif"

array nombres[9] = ["Sol",  "Mercurio",  "Venus",  "Tierra",  "Marte",  "Júpiter",  "Saturno",  "Urano",  "Neptuno"]
array colores[9] = ["yellow", "dark-grey", "light-goldenrod", "light-blue", "dark-red", "orange-red", "orange", "blue", "dark-blue"]

stats 'SistemaSolar.txt' u 17:18 nooutput

limX = (STATS_max_x > abs(STATS_min_x) ? STATS_max_x : abs(STATS_min_x))
limY = (STATS_max_y > abs(STATS_min_y) ? STATS_max_y : abs(STATS_min_y))
lim = (limX > limY ? limX : limY) + 1

set xr [-lim:lim]
set yr [-lim:lim]

do for [i=0:STATS_records-1] {
    set title sprintf("Tiempo: %.1f",i*0.2)
    plot for [j = 1 : 9] 'SistemaSolar.txt' u 2*j-1:2*j every ::i::i w p pt 7 lc rgb colores[j] t nombres[j]
}
