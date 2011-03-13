#!/usr/bin/gnuplot

set terminal pdfcairo enhanced color solid font "Bitstream Charter,9" rounded size 5,8
set output "results-28nodes.pdf"
set xtics rotate
set style data histogram
set style histogram errorbars lw 2
set yrange [0:]

plot "results-28nodes.dat" using 2:3:xtic(1) title "iterations", "results-28nodes-iter1.dat" using 2:3 title "initialization"