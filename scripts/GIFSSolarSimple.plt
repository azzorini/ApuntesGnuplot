set term gif animate delay 2
set output "sistemasolar.gif"

stats 'SistemaSolar.txt' u 17:18 nooutput

limX = (STATS_max_x > abs(STATS_min_x) ? STATS_max_x : abs(STATS_min_x))
limY = (STATS_max_y > abs(STATS_min_y) ? STATS_max_y : abs(STATS_min_y))
lim = (limX > limY ? limX : limY) + 1

set xr [-lim:lim]
set yr [-lim:lim]

do for [i=0:STATS_records-1] {
    set title sprintf("Tiempo: %.1f",i*0.2)
    plot 'SistemaSolar.txt' u 1:2 every ::i::i w p ls 1 title "Sol", '' u 3:4 every ::i::i w p ls 2 title "Mercurio", '' u 5:6 every ::i::i w p ls 3 title "Venus", '' u 7:8 every ::i::i w p ls 4 title "Tierra", '' u 9:10 every ::i::i w p ls 5 title "Marte", '' u 11:12 every ::i::i w p ls 6 title "Jupiter", '' u 13:14 every ::i::i w p ls 7 title "Saturno", '' u 15:16 every ::i::i w p ls 8 title "Urano", '' u 17:18 every ::i::i w p ls 9 title "Neptuno"
}
