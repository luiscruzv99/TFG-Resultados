set output "energias_1_gpu.png"
set datafile separator ' '
set terminal png size 1920,1080 font 'SegoeUI,20'
set key autotitle columnhead

set style line 1 lt rgb "red" lw 2 pt 5
set style line 2 lt rgb "blue" lw 2 pt 5
set style line 3 lt rgb "green" lw 2 pt 5
set style line 4 lt rgb "orange" lw 2 pt 5
set style line 5 lt rgb "cyan" lw 2 pt 5
set style line 6 lt rgb "purple" lw 2 pt 5


set multiplot

set title "Uso de energía" font ", 32"
set xlabel "Mediciones" font ", 28"
set ylabel "Consumo (W)" font ", 28"
set yrange [0:250]

plot "energia1.dat" using 1 with lines ls 1,\
     "" using 2 with lines ls 2,\
     "" using 3 with lines ls 3,\
     "" using 4 with lines ls 4,\
     "" using 5 with lines ls 5,\
     "" using 6 with lines ls 6

unset title
unset xlabel
unset ylabel
unset key

set xrange [4000:4200]
set yrange [90:155]
set xtics rotate by -45
set size 0.5, 0.3
set origin 0.1, 0.6
replot
unset multiplot
