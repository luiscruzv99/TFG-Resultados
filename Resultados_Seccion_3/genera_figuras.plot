set output "precisiones.png"
set datafile separator ','
set terminal png size 1920,1080 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5

set multiplot layout 1, 2 ;

set title "Evolución de las precisiones";
set xlabel "Iteraciones"
set ylabel "Precision (%)"
set yrange [0:1]
set rmargin at screen 0.42

plot "R_Hibrido/Precisiones.csv" using 1 title 'Hibrido' with lines ls 1,\
     "R_1GPU/Precisiones.csv" using 1 title 'GPU' with lines ls 2

unset yrange
unset xlabel

set title "Tiempos de entrenamiento totales";
set ylabel "Tiempo de entrenamiento (seg)"
set xtics ("Hibrido" 1, "GPU" 2)
set xrange[0:3]
set yrange[0:]
set style fill solid
set boxwidth 0.5
unset key
unset rmargin
set lmargin at screen 0.58

plot "R_Hibrido/General.csv" using 1:2 with boxes ls 1,\
     "R_1GPU/General.csv" using 1:2 with boxes ls 2

unset multiplot
