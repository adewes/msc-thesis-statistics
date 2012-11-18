load "../common.gnu";
set out "copula.eps";
f="best_4.tsv";
g="best_9.tsv";
c="copula.tsv"
unset surface;
set contour;
set cntrparam levels 200;
set logscale z;
set dgrid3d 100,100;
set table "contour_36.tsv";
splot "copula_36.tsv" u 1:2:6 w l;
unset table;
unset key;
set xlabel "Quantil - Dow Jones";
set ylabel "Quantil - BEARX";
plot "copula.tsv" u 1:2 pt 4 lc 9,"contour_36.tsv" w l lw 2 lc -1 lt 2;
