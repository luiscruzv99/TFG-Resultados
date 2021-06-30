set output "tiempos_overview.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

bm = 0.15
lm = 0.13
rm = 0.97
gap = 0.04
size = 0.75
kk = 0.7 # relative height of bottom plot
y1 = 0; y2 = 4000; y3 = 11000; y4 = 14000

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lt rgb "green" lw 1 pt 5

set ytics rotate by 45

set multiplot
set border 1+2+8
set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm
set tmargin at screen bm + size * kk
set style fill solid 0.6 border lt -1
set boxwidth 0.5
set xtics ("295x222" 1, "148x112\n10\%% Val" 2, "148x112\n1\%% Val" 3) font ", 28"
set bmargin at screen 0.07
set yrange [0:4000]
set xrange [0.5:3.5]
unset key
plot "tiempos_overview.csv" using 1:2 with boxes ls 1,\
      ""           using 3:4 with boxes ls 2,\
      ""           using 5:6 with boxes ls 3


unset xtics
unset ylabel
set title "Tiempos de entrenamiento diferentes resoluciones\n(Tamaño de batch = 128)" font ", 32"
set label "Tiempo de entrenamiento (seg)" at screen 0.03, bm + 0.5 * (size * kk + gap) offset 0,-strlen("Tiempo de entrenamiento (seg)")/3.5 rotate by 90 font ", 28"

set arrow from screen lm - gap / 4.0, -0.024 + kk - gap / 4.0 to screen \
lm + gap / 4.0, -0.024 +  kk + gap / 4.0 nohead

set arrow from screen lm - gap / 4.0, -0.024 + kk - gap / 4.0  + gap to screen \
lm + gap / 4.0, -0.024 + kk + gap / 4.0 + gap nohead

set arrow from screen rm - gap / 4.0, -0.024 + kk - gap / 4.0 to screen \
rm + gap / 4.0, -0.024 + kk + gap / 4.0 nohead

set arrow from screen rm - gap / 4.0, -0.024 + kk - gap / 4.0  + gap to screen \
rm + gap / 4.0, -0.024 + kk + gap / 4.0 + gap nohead


set border 2+4+8
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap - 0.1
set ytics 2000
set yrange [11000:14000]
unset xlabel
replot
