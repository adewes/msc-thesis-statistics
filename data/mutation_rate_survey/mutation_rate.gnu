load "../common.gnu";
set out "mutation_rate.eps";
mr_00="stat_mr=0.0.tsv";
mr_05="stat_mr=0.05.tsv";
mr_25="stat_mr=0.25.tsv";
mr_50="stat_mr=0.5.tsv";
mr_80="stat_mr=0.8.tsv";
set key right bottom;
set xrange [:35];
set ylabel "{/Italic f} - Average fitness";
set xlabel "{/Italic n} - Generation";
offset=0.0;
plot mr_00 u 1:($8+offset) w lp t "{/Symbol m}=0.0",mr_05 u 1:($8+offset) w lp t "{/Symbol m}=0.05",mr_25 u 1:($8+offset) w lp t "{/Symbol m}=0.25",mr_50 u 1:($8+offset) w lp t "{/Symbol m}=0.5",mr_80 u 1:($8+offset) w lp t "{/Symbol m}=0.8";