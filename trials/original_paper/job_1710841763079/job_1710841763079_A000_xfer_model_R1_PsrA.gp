
set output "job_1710841763079_A000_xfer_model_R1_PsrA.eps"
set terminal postscript eps enhanced color "Helvetica, 35" size 2,2
set logscale x
set logscale y
set lmargin screen 0.0
set rmargin screen 1.0
set tmargin screen 1.0
set bmargin screen 0.0
set size ratio 1.0
set border linewidth 2
set tics scale 2
set mxtics 10
set mytics 10
set key bottom left
set key samplen -1
set xrange [0.001:1000.0]
set yrange [0.001:1000.0]
set format y "10^{%L}"    
set format x "10^{%L}"    
set format x ""    
set xlabel '1010101010101010'
set arrow from 0.0082,0.001 to 0.0082,1000.0 nohead lw 10 lt 2 lc rgb '#000000'
set arrow from 2.5,0.001 to 2.5,1000.0 nohead lw 10 lt 2 lc rgb '#000000'
ymin = 0.2
ymax = 5.9
K = 0.19
n = 1.8
set dummy x

plot ymin+(ymax-ymin)/(1.0+(x/K)**n) lw 25 lc rgb '#C24B9C' title 'R1PsrA',\
 "<echo '1 2'" using (0.197556859):(2.950000003872063)  with points pt 7 ps 4 lc rgb 'black' notitle,\
 "<echo '1 2'" using (1.197796047):(0.3999999998585956)  with points pt 7 ps 4 lc rgb 'black' notitle
