load "../../data/common.gnu";
set out "copulas.eps";
set size 1,1;
set multiplot;
set size 0.33,0.33;
unset xlabel;
unset ylabel;
unset xtics;
unset ytics;

set label "Bank of America" at screen 0.1+0.0,0.33*3-0.16;
set label "Freddie Mac" at screen 0.1+0.33*1,0.33*3-0.16*3;
set label "Fannie Mae" at screen 0.1+0.33*2,0.33*3-0.16*5;

#plot "copula_fa_ms.tsv" w p t "";

plot "copula_fa_ba.tsv" w p t "";

set origin 0.33,0.0;
plot "copula_fm_fa.tsv" u 2:1 w p t "";

#set origin 0.0,0.33;
#plot "copula_fm_ms.tsv" u 1:2 w p t "";

set origin 0.0,0.33;
plot "copula_fm_ba.tsv" u 1:2 w p t "";
set origin 0.66,0.33;
plot "copula_fm_fa.tsv" u 1:2 w p t "";

#set origin 0.0,0.33*2;
#plot "copula_ms_ba.tsv" u 2:1 w p t "";

set origin 0.33*1,0.33*2;
plot "copula_fm_ba.tsv" u 2:1 w p t "";
set origin 0.33*2,0.33*2;
plot "copula_fa_ba.tsv" u 2:1 w p t "";

#set origin 0.33*1,0.33*3;
#plot "copula_ms_ba.tsv" u 1:2 w p t "";

#set origin 0.33*2,0.33*3;
#plot "copula_fm_ms.tsv" u 2:1 w p t "";

#set origin 0.33*3,0.33*3;
#plot "copula_fa_ms.tsv" u 2:1 w p t "";
