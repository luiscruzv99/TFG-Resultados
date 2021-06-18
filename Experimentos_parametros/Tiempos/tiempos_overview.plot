set output "tiempos_overview.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5
set style line 3 lt rgb "green" lw 3 pt 5

set title "Tiempos de entrenamiento para diferentes\nresoluciones con tamaño de batch = 128";
set ylabel "Tiempo de entrenamiento (seg)"
set style fill solid
set boxwidth 0.5
set xtics ("295x222" 1, "148x112 10\%% Val" 2, "148x112 1\%% Val" 3)
set yrange [0:6000]
set xrange [0:4]
unset key
plot "tiempos_overview.csv" using 1:2 with boxes ls 1,\
      ""           using 3:4 with boxes ls 2,\
      ""           using 5:6 with boxes ls 3
