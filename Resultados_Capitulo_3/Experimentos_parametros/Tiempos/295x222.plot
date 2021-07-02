set output "tiempos_295x222.png"
set datafile separator ','
set terminal png size 1080,1080 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lt rgb "green" lw 1 pt 5

set title "Tiempos de entrenamiento totales" font ", 32"
set ylabel "Tiempo de entrenamiento (seg)" font ", 28"
set xlabel "Tamaño de batch" font ", 28"
set style fill solid 0.6 border lt -1
set boxwidth 0.5
set xtics ("72" 1, "96" 2, "128" 3) font ", 28"
set yrange [7000:]
set xrange [0:4]
unset key
plot "295x222.csv" using 1:2 with boxes ls 1,\
      ""           using 3:4 with boxes ls 2,\
      ""           using 5:6 with boxes ls 3
