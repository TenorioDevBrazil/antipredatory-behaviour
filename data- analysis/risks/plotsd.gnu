#!/usr/bin/gnuplot

reset

set term tikz
#set term png size 670,500

set xtics font ", 14"
set ytics font ", 14"

set xr[-0.4:8.0] 
#set yr[0.0:0.6] ##deve ser por aqui

# define axis
set style line 11 lc rgb '#2f4f4f' lt 1
#set border 3 back ls 11
#set tics nomirror

#set key bottom left Left reverse samplen 1 at -10,0.6

# define grid
#set style line 12 lc rgb '#2f4f4f' lt 0 lw 1
#set grid back ls 12

# color line definitions
set style line 1 lc rgb '#db5461' lt 0 lw 4.0 pt 7 ps 1.0 #  green      (species 1)
set style line 2 lc rgb '#431c7d' lt 0 lw 4.0 pt 7 ps 1.0 #  red	(species 2)
set style line 3 lc rgb '#b1d5f0' lt 0 lw 4.0 pt 7 ps 1.0 #  orange     (species 3)
set style line 4 lc rgb '#000066' lt 1 lw 4.0 pt 5 ps 1.0 #  dark blue  (species 4)
set style line 5 lc rgb '#FF9100' lt 1 lw 4.0 pt 5 ps 1.0 #  cyan	(species 5)
set style line 6 lc rgb 'grey' lt 1 lw 4.0 pt 5 ps 1.0 #  black	(empty space)

    


	outname = sprintf("s-risk.tex")

	set out outname

set size 2.8, 2.0

################################# Start multiplot (2x2 layout) ##################

set multiplot layout 1,2 rowsfirst

### GRAPH a - risks ###

set xtics 0.5
set xl '$\kappa$' font ",16" offset 0,-1.0,0
set yl'$\zeta_i\,(\%)$' font ", 19" offset -2.5,0,0
#set yl'$\rho_i$' font ", 19" offset -1.5,0,0

set label 1 '\bf{a}' at graph 0.025, 0.85 font ',25'

set origin 0, 0
set size 1.437, 1.0
set key at 6.5,9.5 font ",14"


plot 'statistics2.dat' u 1:(($5)*100):11 with errorbars ls 1 t'1',\
     'statistics2.dat' u 1:(($6)*100):12 with errorbars ls 2 t'2',\
     'statistics2.dat' u 1:(($7)*100):13 with errorbars ls 3 t'3',\
     'statistics2.dat' u 1:(($5)*100) with lp ls 1 notitle,\
     'statistics2.dat' u 1:(($6)*100) with lp ls 2 notitle,\
     'statistics2.dat' u 1:(($7)*100) with lp ls 3 notitle
     
### GRAPH b - densities)### 
set xtics 0.5
set xl '$\kappa$' font ",16" offset 0,-1.0,0
set yl'$\rho_i$' font ", 19" offset -1.5,0,0

set label 1 '\bf{b}' at graph 0.025, 0.85 font ',25'

set origin 0, 1
set size 1.437, 1.0
set key at 7,0.25 font ",14"

k"


plot 'statistics2.dat' u 1:2:8 with errorbars ls 1 t'1',\
     'statistics2.dat' u 1:3:9 with errorbars ls 2 t'2',\
     'statistics2.dat' u 1:4:10 with errorbars ls 3 t'3',\
     'statistics2.dat' u 1:2 with lp ls 1 notitle,\
     'statistics2.dat' u 1:3 with lp ls 2 notitle,\
     'statistics2.dat' u 1:4 with lp ls 3 notitle	



unset multiplot

### End multiplot
