set output "precisiones.png"
set datafile separator ','
set terminal png size 1920,1080 font 'SegoeUI,20'



set multiplot layout 1, 2 ;


set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5

set title "Evolución de las precisiones" font ",32"
set xlabel "Épocas" font ", 28"
set ylabel "Precisión (%)" font ", 28"
set yrange [0:1]
set xtics 25
set rmargin at screen 0.42

plot "R_Hibrido/Precisiones.csv" using 1 title 'Híbrido' with lines ls 1,\
     "R_1GPU/Precisiones.csv" using 1 title 'GPU' with lines ls 2

unset yrange
unset xlabel

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5

set title "Tiempos de entrenamiento totales" font ",32"
set ylabel "Tiempo de entrenamiento (seg)" font ", 28"
set xlabel "Tipo de entrenamiento" font ", 28"
set xtics ("Híbrido" 1, "GPU" 2) font ", 26"
set xrange[0:3]
set yrange[0:]
set style fill solid 0.6 border lt -1
set boxwidth 0.5
unset key
unset rmargin
set lmargin at screen 0.58

plot "R_Hibrido/General.csv" using 1:2 with boxes ls 1,\
     "R_1GPU/General.csv" using 1:2 with boxes ls 2

unset multiplot
