load "../common.gnu";
set out "copula.eps";
f="best_4.tsv";
g="best_9.tsv";
c="copula.tsv"
unset surface;
set contour;
set cntrparam levels 200;
#set logscale z;
#set dgrid3d 100,100;
#set table "copula_c.tsv";
#splot "copula_15.tsv" u 1:2:6 w l;
#unset table;
unset key;
set xlabel "Quantil - X";
set ylabel "Quantil - Y";
plot "copula.tsv" u 1:2 pt 4 lc 9,"contour_30.tsv" w l lw 2 lc -1 lt 2,"contour_real.tsv" w l ls 1;
