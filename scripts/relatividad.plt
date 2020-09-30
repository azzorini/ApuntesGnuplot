set terminal png
set output "relatividad.png"

set key top left box spacing 2
set title "Relatividad galileana frente a relatividad especial"
set xlabel "Velocidad relativa [m/s]"
set ylabel "Dilatación temporal [s]"
c = 3e8
set xrange [0:c]
set yrange [0:7]
factor_relativista(x) = 1/sqrt(1-(x/c)**2)
plot 1 title "R. Galileana", factor_relativista(x) t "R. Especial"
