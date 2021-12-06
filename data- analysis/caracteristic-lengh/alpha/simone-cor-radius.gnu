#!/usr/bin/gnuplot

reset

Nx= 200
Ny= 200
Nf= 100
Ng= 4000

############## plot densities #################

set term tikz
#set term png size 640, 360 enhanced font 'Arial, 9'

set xtics font ", 15"
set ytics font ", 15"

set xl'$r$' font ", 25" offset 0,-1.25,0
set yl'$l_i$' font ", 24" offset -3.1,0,0

#set xl'$\Large \textit{r}$'
#set yl'$\Large C(\textit{r})$' offset -1.5,0,0

set xr[-0.25:7.75]
set yr[3:15.5]

g(x)=0.15

# define axis
set style line 11 lc rgb '#2f4f4f' lt 1
#set border 3 back ls 11
set tics nomirror


# color line definitions
set style line 13 lc rgb '#80471c' lt -1 lw 3.5 pt 7 ps 1
set style line 1 lc rgb 'black' lt 0 lw 2.5 pt 7 ps 1
set style line 2 lc rgb '#431c7d' lt -1 lw 4.5 pt 7 ps 1
set style line 3 lc rgb '#db5461' lt -1 lw 4.5 pt 7 ps 1
set style line 4 lc rgb '#ff3333' lt -1 lw 2.5 pt 7 ps 1
set style line 5 lc rgb '#213FFF' lt -1 lw 3.5 pt 7 ps 1
set style line 6 lc rgb '#3399ff' lt -1 lw 2.5 pt 7 ps 1
set style line 7 lc rgb '#b1d5f0' lt -1 lw 4.5 pt 7 ps 1
set style line 8 lc rgb '#9e9e9e' lt 0 lw 3.5 pt 7 ps 1
set style line 9 lc rgb '#F72331' lt -1 lw 3.5 pt 7 ps 1
set style line 10 lc rgb '#30B700' lt -1 lw 3.5 pt 7 ps 1
set style line 11 lc rgb '#FEDD00' lt 0 lw 3 pt 7 ps 1
set style line 12 lc rgb '#30B700' lt 0 lw 3 pt 7 ps 1



	outname = sprintf("cp3.tex")

	set out outname

set size 1.6, 1.3


set xr[-0.3:7.2]
set xtics 1
set ytics 1 
set key bottom at 6.9, 4.0
#plot 'alpha-cor-simone.dat' u (1-$1):2 with lp ls 3 t'1',\
#	 'alpha-cor-simone.dat' u (1-$1):3 with lp ls 2 t'2',\
#     'alpha-cor-simone.dat' u (1-$1):4 with lp ls 7 t'3'

#plot 'kappa-cor-simone.dat' u 1:2 with lp ls 3 t'1',\
#	 'kappa-cor-simone.dat' u 1:3 with lp ls 2 t'2',\
#     'kappa-cor-simone.dat' u 1:4 with lp ls 7 t'3'
set ytics 1 
plot 'radius-cor-simone.dat' u 1:2 with lp ls 3 t'1',\
	 'radius-cor-simone.dat' u 1:3 with lp ls 2 t'2',\
     'radius-cor-simone.dat' u 1:4 with lp ls 7 t'3'




#plot 'coexistence-probability.dat' u 1:2:3 with yerrorbars ls 9


