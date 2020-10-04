set term gif animate
set output "onda.gif"
stats "data_ec_onda.txt" u 1:2

N = 1000
a = 0.00434263

set xr [STATS_min_x:STATS_max_x]
set yr [0:STATS_max_y]
unset key

V(x) = (x < 2*N/5 || x > 3*N/5) ? 0 : a

do for [i=0:STATS_blocks-2] {
	plot "data_ec_onda.txt" index i u 1:2 w p pt 7, V(x) lc "black" lw 1.5
}
