set output "tiempos_val_comparacion.png"
set datafile separator ','
set terminal png size 1920,1080 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5

set title "Tiempos medios de entrenamiento y validación para diferentes tamaños de conjuntos de validación";
set ylabel "Tiempo medio (seg)"
set style fill solid
set boxwidth 1
set xtics("Conjunto de validación = 10\%%" 0.125, "Conjunto de validación = 1\%%" 1.125)
plot "Tiempos_conjuntos.csv" using 1 title "Tiempos entrenamiento" with histogram ls 2 ,\
      ""  using 2 title "Tiempos validación" with histogram ls 1
