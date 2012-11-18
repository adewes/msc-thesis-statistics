load "../common.gnu";
set out "copula.eps";
f="best_4.tsv";
g="best_9.tsv";
c="copula.tsv"
unset surface;
set contour;
set cntrparam levels incr 0,0.3,10;
set dgrid3d 100,100;
set table "contour_31.tsv";
splot "copula_31.tsv" u 1:2:6 w l;
unset table;
unset key;
set xlabel "Quantil - Fannie Mae";
set ylabel "Quantil - Freddie Mac";
plot "copula.tsv" u 1:2 pt 4 lc 9,"contour_31.tsv" w l lw 2 lc -1 lt 2;
