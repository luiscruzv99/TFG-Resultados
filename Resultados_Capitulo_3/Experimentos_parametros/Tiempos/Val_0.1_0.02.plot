set output "tiempos_val_comparacion.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5

set title "Tiempos medios de entrenamiento y validación\npara diferentes tamaños de validación" font ", 32"
set ylabel "Tiempo medio (seg)" font ", 28"
set style fill solid 0.6 border lt -1
set boxwidth 1
set xrange[-0.25:1.5]
set bmargin at screen 0.07
set xtics("Conjunto de\nvalidación = 10\%%" 0.125, "Conjunto de\nvalidación = 1\%%" 1.125) font ", 26"
plot "Tiempos_conjuntos.csv" using 1 title "Tiempo de entrenamiento" with histogram ls 2 ,\
      ""  using 2 title "Tiempo de validación" with histogram ls 1
