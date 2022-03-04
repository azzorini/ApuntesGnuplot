set terminal png
set output "rad_blackbody.png"

# Constantes necesarias (en el SI)
h = 6.626070150e-34
c = 299792458
k = 1.3806488e-23
b = 2.8977729e-3

# Temperatura del cuerpo negro (K)
T = 6000

L(x) = 2*h*c**2/(x*1e-9)**5/(exp(h*c/(x*1e-9)/k/T)-1) # x en nm

unset key

set xrange [100:1300]
set xlabel "Longitud de onda (nm)"
set ylabel "Radiancia (W/sr m^3)"
set title sprintf("Radiación de un cuerpo negro T=%.0fK", T)

set tics out # Usamos esto para aplicar cosas a ambos ejes
set xtics rotate 100, 300, 1300 offset 0.5, 0

maximo = b/T*1e9 # Máximo en nm
set xtics add (sprintf("%.0f", maximo) maximo)

# Ejercicio lector: Añadir tic personalizado en el eje y con el valor del máximo

set mxtics
set mytics

set grid

plot L(x) lc "dark-red" lw 2
