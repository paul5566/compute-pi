reset
set ylabel 'Time(sec)'
set xlabel 'N'
set style fill solid
set title 'wall clock time - using clock\_gettime()'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set logscale x 2
set datafile separator ","

plot [64:35000][0:] 'result_clock_gettime.csv' using 1:2 w l lw 1 title 'Baseline', \
'' using 1:3 w l lw 1 title 'OpenMP with 2 threads', \
'' using 1:4 w l lw 1 title 'Avx', \
'' using 1:5 w l lw 1 title 'Avx Unroll', \
'' using 1:6 w l lw 1 title 'Leibniz', \
'' using 1:8 w l lw 1 title 'Monte Carlo Pi', 

