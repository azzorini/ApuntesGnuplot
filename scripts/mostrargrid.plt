set terminal png
set output "plotGrid.png"

unset key
set mxtics
set mytics

set style line 1 lc "#888888" lw 1.5 dt solid # Necesario para el dashtype

set grid xtics ytics mxtics mytics ls 1, lw 1
plot x lw 2 lc "dark-red"
