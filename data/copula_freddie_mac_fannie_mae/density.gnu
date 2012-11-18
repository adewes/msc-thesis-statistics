load "../common.gnu";
set out "density.eps";
f="best_4.tsv";
g="best_9.tsv";
c="copula.tsv"
unset surface;
set contour;
set cntrparam levels 200;
set logscale z;
set dgrid3d 100,100;
unset key;
set xrange [-0.3:0.3];
set yrange [-0.3:0.3];
set xlabel "{/It x_t} - Fannie Mae";
set ylabel "{/It x_t} - Freddie Mac";
plot "copula.tsv" u 3:4 pt 4 lc 0;
