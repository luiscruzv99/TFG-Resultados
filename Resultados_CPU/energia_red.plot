set output "energias_1_gpu_red.png"
set datafile separator ' '
set terminal png size 1920,1080 font 'SegoeUI,20'
set key autotitle columnhead

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lt rgb "green" lw 1 pt 5
set style line 4 lt rgb "orange" lw 1 pt 5
set style line 5 lt rgb "cyan" lw 1 pt 5
set style line 6 lt rgb "purple" lw 1 pt 5


set title "Consumo (W)";
set xlabel "Iteraciones"
set ylabel "Consumo (W)"
set xrange [1400: 3200]

plot "energia.dat" using 1 with lines ls 1,\
     "" using 2 with lines ls 2,\
     "" using 3 with lines ls 3,\
     "" using 4 with lines ls 4,\
     "" using 5 with lines ls 5,\
     "" using 6 with lines ls 6
