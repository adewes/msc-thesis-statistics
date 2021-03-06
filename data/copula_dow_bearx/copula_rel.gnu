load "../common.gnu";
set out "copula_rel.eps";
unset key;
set xlabel "Quantil - Dow Jones";
set ylabel "Quantil - BEARX";
set size 1.0,1.0;
set multiplot;
set size 0.5,0.5;
set label "(a)" at screen 0.0,0.5;
set label "(b)" at screen 0.5,0.5;
set label "(c)" at screen 0.0,0.0;
set label "(d)" at screen 0.5,0.0;
set origin 0.0,0.5;
plot "contour_1.tsv" w l t "";
set origin 0.5,0.5;
plot "contour_10.tsv" w l t "";
set origin 0.0,0.0;
plot "contour_20.tsv" w l t "";
set origin 0.5,0.0;
plot "contour_36.tsv" w l t "";