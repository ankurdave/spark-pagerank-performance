#!/usr/bin/gnuplot

set terminal pdfcairo enhanced color solid font "Bitstream Charter,7" rounded size 6,4
set output "results-28nodes.pdf"
set xtics rotate by -20
set xtics nomirror
set ytics nomirror
set style data histogram
set style histogram errorbars lw 2
set yrange [0:]
set ylabel "Time per iteration (seconds)"

plot "results-28nodes.dat" using 2:3:xtic(1) title "iterations", "results-28nodes-iter1.dat" using 2:3 title "initialization"