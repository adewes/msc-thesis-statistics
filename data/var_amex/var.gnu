load "../common.gnu";
set out "var.eps";
f="best_1.tsv";
g="best_12.tsv"
set ytics 0.05;
var_vc=14;
var_hs=15;
var_hs_ewma=22;
var_hs_garch=24;
var_vc_garch=16;
var_vc_ewma=18;
var_vc_garch_t=28;
var_hs_garch_t=29;
set yrange [-0.06:0.12];
set xrange [6300:7200];
set xlabel "{/It t}";
set ylabel "({/It p_{t}-p_{t-1}})/{/It p_{t-1}}"
plot f u 1:2 w l t "{/It x_t}",f u 1:8 w l t "GP",f u 1:var_hs w l t "HS",f u 1:var_vc_garch_t w l t "VC-GARCH-t",f u 1:var_hs_garch w l t "HS-GARCH";