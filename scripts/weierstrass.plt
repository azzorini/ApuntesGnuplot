set terminal png
set output "grap_weierstrass.png"

unset key

set xrange [-2:2]
set yrange [-2:2]
set samples 1000

# Parámetros función
a = 0.5
b = 3

# Número de sumandos a tomar
N = 500

# Función de weierstrass que recibe cuatro parámetros:
#     x: Variable independiente
#     wa: Primer parámetro
#     wb: Segundo parámetro
#     n: Número de sumandos a tomar
weie(x, wa, wb, n) = sum [i=0:n] wa**i*cos(wb**i*pi*x)

plot weie(x, a, b, N) lc "dark-red" lw 2
