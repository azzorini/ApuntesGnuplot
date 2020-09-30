set terminal pngcairo
set output "fourier.png"

unset border
unset tics
unset key

set samples 1000

fourier(k,x) = sin(1.5*k)/k * 2.0/3*cos(k*x)

set multiplot layout 2,2

do for [p = 0 : 3] {
	N = 10**p
	# Mira a ver si tenemos que escribir plural o no.
	plural = (p == 0 ? '' : 's')

	# Lo suyo sería configurar el título para que se mostrara
	# debajo de la gráfica pero eso requiera más ajuste
	# y en este caso disponemos del xlabel.
	set xlabel sprintf("%u término%s de la serie de Fourier", N, plural)
	plot 0.5 + sum [k=1:N] fourier(k,x) lw 2 lc "black"
}

unset multiplot
