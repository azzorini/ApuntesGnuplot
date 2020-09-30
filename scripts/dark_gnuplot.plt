set terminal png
set output "oscuro.png"

set object 1 rectangle from screen 0,0 to screen 1,1 behind fc "black"
set border lc "white"
unset key

plot x lw 2 lc "red"
