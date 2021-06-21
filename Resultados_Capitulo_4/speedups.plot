set output "speedups_cpu.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'

set style line 1 lt rgb "red" lw 3 pt 5
set style line 2 lt rgb "blue" lw 3 pt 5
set style line 3 lt rgb "green" lw 3 pt 5
set style line 4 lt rgb "purple" lw 3 pt 5

set title "Speedups vs CPU";
set ylabel "% Speedup"
set xlabel "Dispositivos"
set xrange[0:5]
set style fill solid
set boxwidth 0.5
unset key
set xtics ("1 GPU" 2, "1 GPU Dist" 3, "2 GPUs" 4, "CPU" 1)
plot "speedups.csv" using 2  with boxes ls 2 ,\
      ""            using 0:($2+20):2 with labels


set output "speedups_gpu.png"
set datafile separator ','
set terminal png size 1200,1200 font 'SegoeUI,20'
set title "Speedups vs GPU";
set ylabel "% Speedup"
set xlabel "Dispositivos"
set xrange[0:5]
set yrange[0:200]
set style fill solid
set boxwidth 0.5
unset key
set xtics ("1 GPU" 2, "1 GPU Dist" 3, "2 GPUs" 4, "CPU" 1)
plot "speedups.csv" using 3  with boxes ls 1 ,\
      ""            using 0:($3+1):3 with labels
