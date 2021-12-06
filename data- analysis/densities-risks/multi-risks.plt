#!/usr/bin/gnuplot

reset

set term tikz
#set term png size 670,250

set xtics font ", 14"
set ytics font ", 14"

set xl't\,' font ", 25" offset 0,-2.0,0
#set yl'$\zeta_i$' font ", 19" offset -1.5,0,0


set xr[0:300] 
#set yr[-0.1:0.9]
#set yr[0.5:8]

# define axis
set style line 11 lc rgb '#2f4f4f' lt 1
#set border 3 back ls 11
set tics nomirror

#set key bottom left Left reverse samplen 1 at -10,0.6

# define grid
#set style line 12 lc rgb '#2f4f4f' lt 0 lw 1
#set grid back ls 12

# color line definitions
set style line 1 lc rgb '#db5461' lt 1 lw 4.5 pt 5 ps 1.0 #  green      (species 1)
set style line 2 lc rgb '#431c7d'' lt 1 lw 4.5 pt 5 ps 1.0 #  red	(species 2)
set style line 3 lc rgb '#b1d5f0' lt 1 lw 4.5 pt 5 ps 1.0 #  orange     (species 3)
set style line 4 lc rgb '#949494' lt 1 lw 4.5 pt 5 ps 1.0 #  dark blue  (species 4)
set style line 5 lc rgb '#FF9100' lt 1 lw 4.5 pt 5 ps 1.0 #  cyan	(species 5)
set style line 6 lc rgb '#431c7d' lt 1 lw 4.5 pt 5 ps 1.0 #  black	
#set style line 6 lc rgb 'grey' lt 1 lw 4.5 pt 5 ps 1.0 #  black	(empty space)

   

	outname = sprintf("densities2.tex")

	set out outname

set size 2.8, 2.0







################################# Start multiplot (1x2 layout) ##################


###here begin the densisities ####
### GRAPH a #####
#set xr[0:100] 
#set yr[-5:60]
#set ytics 10
set yl'$\rho_i$' font ", 35" offset -4.5,0,0
#set yl'$\zeta_i\,(\%)$' font ", 21" offset -3.5,0,0
#set label 1 '\bf{a}' at graph 0.1, 0.85 font ',25'

#set label 2 'standard' at graph 0.385, 0.85 font ',15'

#set key bottom right Right samplen 0 at 0.5, 0.5

set origin 0, 1.0
set size 1.6, 1.3

#plot 'densities-simone-fig4.dat' u (($1)):(($5)*100) with lines ls 1 t '1',\
#     'densities-simone-fig4.dat' u (($1)):(($6)*100) with lines ls 6 t '2',\
#     'densities-simone-fig4.dat' u (($1)):(($7)*100) with lines ls 3 t '3'


plot 'densities-simone-fig4.dat' u (($1)):2 with lines ls 1 t '1',\
     'densities-simone-fig4.dat' u (($1)):3 with lines ls 6 t '2',\
     'densities-simone-fig4.dat' u (($1)):4 with lines ls 3 t '3'




### End multiplot


