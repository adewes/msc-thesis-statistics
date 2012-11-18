load "../common.gnu";
set out "es.eps";
f="best_99.tsv";
#set yrange [0.0:*];
set xrange [1500:2500];
set xlabel "{/It t}";
set ylabel "{/It x_t}";
plot f u 1:2 w p t "",f u 1:8 w l t "VaR" lt 1,f u 1:33 w l t "CVaR","es_matrix.tsv" u 1:2 w p pt 7 t "";