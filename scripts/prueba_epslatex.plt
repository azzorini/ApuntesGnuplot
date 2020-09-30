set terminal epslatex
set output "latex.tex"

set xr [-6:6]
set yr [0:1.4]

gauss(x,m,sg) = exp(-(x-m)**2/2/sg)

H(x, a) = (x < a ? 0 : 1)

plot (1-H(x,1))*gauss(x,0,2) w filledcurves fc "dark-green" t "$\\int_{-\\infty}^xf(y)dy$", gauss(x,0,2) lw 4 lc "black" t "$f(y)$"
