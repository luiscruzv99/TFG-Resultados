set output "energias_medias.png"
set datafile separator ','
set terminal png size 1200,1600 font 'SegoeUI,20'

bm = 0.15
lm = 0.13
rm = 0.97
gap = 0.02
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

set style histogram rowstacked

set format y "%2.1t x 10^{%L}"

set xlabel "Experimento" font ", 28"
set style fill solid 0.6 border lt -1
set boxwidth 0.5
set xtics ("Solo CPU" 1, "1 GPU" 2, "1 GPU dist" 3, "2 GPUs" 4) font ", 26"
set xrange [0.5:4.5]
set yrange [0:2000000]
unset key
set ytics 500000

plot "energias.csv" using 2 title "CPUs (core0, core6)" with histogram ls 2,\
      ""           using 3 title "GPU1" with histogram ls 1,\
      ""           using 4 title "GPU2" with histogram ls 3

unset xtics
unset ylabel
unset xlabel
set title "Consumos energéticos medios" font ", 32"
set label "Energía (J)" at screen 0.03, bm + 0.5 * (size * kk + gap) offset -0.4,-strlen("Energía (J)")/3.5 rotate by 90 font ", 28"

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
set key
set ytics 10000000
set yrange [5000000:10000000]
replot
