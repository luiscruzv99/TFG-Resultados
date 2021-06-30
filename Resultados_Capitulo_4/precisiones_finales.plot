set output "precisiones_finales_var.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 1 pt 5
set style line 2 lt rgb "blue" lw 1 pt 5
set style line 3 lc rgb "black" lw 1 pt 5

set title "Precisiones finales" font ", 32"
set ylabel "Precisión(%)" font ", 28"
set xlabel "Experimentos" font ", 28"
set style fill solid 0.6 border lt -1
set xtics ("1 GPU" 0, "1 GPU Dist" 1, "2 GPUs" 2) font ", 26"
set yrange [0:]
set xrange [-1:3]
unset key
set style histogram errorbars gap 1 lw 3

plot 'precisiones_finales.csv' using 2:3:4 with histogram ls 1
