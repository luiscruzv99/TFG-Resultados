set output "tiempos_148x112.png"
set datafile separator ','
set terminal png size 1080,1080 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lt rgb "green" lw 1 pt 5
set style line 4 lt rgb "orange" lw 1 pt 5
set style line 5 lt rgb "purple" lw 1 pt 5
set style line 6 lt rgb "cyan" lw 1 pt 5

set title "Tiempos de entrenamiento totales" font ", 32"
set ylabel "Tiempo de entrenamiento (seg)" font ", 28"
set xlabel "Tamaño de batch" font ", 28"
set style fill solid 0.6 border lt -1
set boxwidth 0.5
set xtics ("72" 1, "96" 2, "128" 3, "160" 4, "192" 5, "256" 6) font ", 28"
set yrange [1000:]
set xrange [0:7]
unset key
plot "148x112.csv" using 1:2 with boxes ls 1,\
      ""           using 3:4 with boxes ls 2,\
      ""           using 5:6 with boxes ls 3,\
      ""           using 7:8 with boxes ls 4,\
      ""           using 9:10 with boxes ls 5,\
      ""           using 11:12 with boxes ls 6
