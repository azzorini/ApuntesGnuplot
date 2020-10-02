set terminal epslatex
set output "EspiralArquimedes.tex"

set polar
unset key
unset raxis
unset rtics
set border polar

set samples 1000

set xrange [-8:8]
set yrange [-8:8]
set trange [0:14*pi]

plot t/4 lw 6 lc "dark-red"
