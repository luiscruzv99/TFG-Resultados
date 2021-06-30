set output "precisiones_295x222.png"
set datafile separator ','
set terminal png size 1920,1080 font 'knuth,20'
set key autotitle columnhead

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5
set style line 3 lt rgb "green" lw 3 pt 5


set title "Evolución de las precisiones\n(295x222)" font ", 32"
set xlabel "Epocas" font ", 28"
set ylabel "Precisión (%)" font ", 28"
set yrange [0:100]

plot "295x222.csv" using 1 with lines ls 1,\
     "" using 2 with lines ls 2,\
     "" using 3 with lines ls 3
