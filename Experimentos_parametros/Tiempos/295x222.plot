set output "tiempos_295x222.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5
set style line 3 lt rgb "green" lw 3 pt 5

set title "Tiempos de entrenamiento totales";
set ylabel "Tiempo de entrenamiento (seg)"
set style fill solid
set boxwidth 0.5
set xtics ("72" 1, "96" 2, "128" 3)
set yrange [7000:]
set xrange [0:4]
unset key
plot "295x222.csv" using 1:2 with boxes ls 1,\
      ""           using 3:4 with boxes ls 2,\
      ""           using 5:6 with boxes ls 3
