set terminal png
set output "vErrores.png"

set key top left
plot "data4.dat" u 1:3:2:4 w xyerr t "y(x)",\
	"" u 1:5:2:6 w xyerr t "z(x)"
