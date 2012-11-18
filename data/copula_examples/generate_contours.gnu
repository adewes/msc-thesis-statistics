load "../common.gnu";
unset surface;
set contour;
set cntrparam levels incr 0,0.04,10;
set dgrid3d 100,100;

#set table "contour_normal_rho=0.7.tsv";
#splot "normal_density_rho=0.7.tsv" u 1:2:6 w l;
#unset table;

#set table "contour_normal_rho=0.9.tsv";
#splot "normal_density_rho=0.9.tsv" u 1:2:6 w l;
#unset table;

#set table "contour_clayton_theta=1.tsv";
#splot "clayton_density_theta=1.tsv" u 1:2:6 w l;
#unset table;

#set table "contour_clayton_theta=2.2.tsv";
#splot "clayton_density_theta=2.2.tsv" u 1:2:6 w l;
#unset table;

#set table "contour_gumbel_theta=0.5.tsv";
#splot "gumbel_density_theta=0.5.tsv" u 1:2:6 w l;
#unset table;

set table "contour_frank_theta=1.tsv";
splot "frank_density_theta=1.tsv" u 1:2:6 w l;
unset table;
