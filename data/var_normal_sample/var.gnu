load "../common.gnu";
set out "var.eps";
f="best_19.tsv";
g="best_9.tsv"
set size 1.0,0.5;
set multiplot;
set size 0.5,0.5;
var_vc=14;
var_hs=15;
var_hs_ewma=22;
var_hs_garch=24;
var_vc_garch=16;
var_vc_ewma=18;
var_vc_garch_t=28;
var_hs_garch_t=29;
set yrange [6:*];
set xrange [100:1000];
set xlabel "{/It t}";
set ylabel "{/It x_t}"
set xtics 250;
set label "(a)" at screen 0.0,0.0;
set label "(b)" at screen 0.5,0.0;
plot f u 1:2 w p t "",f u 1:8 w l t "GP",f u 1:10 w l t "realer Wert";
set yrange [6:*];
set xrange [100:1000];
f="../var_extreme_sample/best_12.tsv";
g="../var_extreme_sample/best_9.tsv"
set origin 0.5,0.0;
plot f u 1:2 w p t "",f u 1:8 w l t "GP",f u 1:10 w l t "realer Wert";
