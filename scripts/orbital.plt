set terminal pngcairo
set output "l2orbital.png"

unset key
set parametric
set isosamples 30,30

set urange [0:2*pi]
set vrange [-pi/2:pi/2]

set xrange [-0.4:0.4]
set yrange [-0.4:0.4]
set zrange [-0.4:0.4]

fx(u,v) = cos(u)*cos(v)
fy(u,v) = sin(u)*cos(v)
fz(v) = sin(v)

a = 5.0/(16*pi)
g(v) = (3*sin(v)*sin(v)-1)**2

splot a*g(v)*fx(u,v), a*g(v)*fy(u,v), a*g(v)*fz(v) lc "dark-red"
