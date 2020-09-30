set terminal png
set output "LogEsc.png"

set logscale y
set yr [1:1e5]

plot exp(x)
