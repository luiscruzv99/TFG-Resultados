set output "tiempos_generales.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lt rgb "green" lw 1 pt 5

set style histogram rowstacked

set title "Tiempos de ejecución totales" font ", 32"
set ylabel "Tiempo (seg)" font ", 28"
set xlabel "Dispositivos" font ", 28"
set style fill solid 0.6 
set boxwidth 0.5
set xtics ("1 GPU" 1, "1 GPU Dist" 2, "2 GPUs" 3) font ", 26"
set yrange [:7500]
set xrange [0:4]

plot "tiempos_generales.csv" using 2 title "Tiempo de entrenamiento" with histogram ls 2,\
      ""           using 3 title "Tiempo de validación" with histogram ls 1,\
      ""           using 4 title "Tiempo de test" with histogram ls 3
