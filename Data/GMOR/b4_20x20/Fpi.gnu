set terminal pdfcairo
set size ratio 0.75
set output 'Fpi-L20x20-b4-10000-j1-chi2-pl4-jk20.pdf'

set title "F_{/Symbol p} / j1 / L20x20 / {/Symbol b}=4 / 10000 meas."

set xlabel 'm'
set ylabel 'F_{/Symbol p}'


set key right bottom
f(x) = 0.394518 + 0.040 * x /0.5;

plot [0:0.51][0:0.61] f(x),\
  "masp_b4_20x20_0.txt" u 1:6:7 w yerr pt 7 lc "orange" ps 0.3 lw 0.3 \
     title "quenched hypercube overlap (N_f = 0)", \
  "masp_b4_20x20_2.txt" u 1:6:7 w yerr pt 13 lc "red" ps 0.4 lw 0.3 \
     title "reweighted hypercube overlap (N_f=2)", \
  "masp_b4_20x20_4.txt" u 1:6:7 w yerr pt 13 lc "green" ps 0.4 lw 0.3 \
     title "reweighted hypercube overlap (N_f=4)"



quit
