set output "precisiones_148x112.png"
set datafile separator ','
set terminal png size 1920,1080 font 'SegoeUI,20'
set key autotitle columnhead

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5
set style line 3 lt rgb "green" lw 3 pt 5
set style line 4 lt rgb "orange" lw 3 pt 5
set style line 5 lt rgb "purple" lw 3 pt 5
set style line 6 lt rgb "cyan" lw 3 pt 5


set title "Evolución de las precisiones (148x112)";
set xlabel "Iteraciones"
set ylabel "Precision (%)"
set yrange [0:100]

plot "148x112.csv" using 1 with lines ls 1,\
     "" using 2 with lines ls 2,\
     "" using 3 with lines ls 3,\
     "" using 4 with lines ls 4,\
     "" using 5 with lines ls 5,\
     "" using 6 with lines ls 6
