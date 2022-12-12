
# Terminal
# --------
load 'terminal_paper.plt'
eval TERM_SCALE(1.2,1.2)
set output plt.".tex"

# Multiplot
# ---------

# MP_LEFT = .1
# MP_RIGHT = .95
# MP_BOTTOM = .14
# MP_TOP = .9
# MP_xGAP = 0.0
# MP_yGAP = 0.02
# set multiplot layout 1,2 margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing screen MP_xGAP, MP_yGAP

# Lintypes
# --------
set linetype 1 pt 7 ps .4
set linetype 2 pt 7 ps .4
set linetype 3 pt 7 ps .4
set style data lp

# CSV
# ---
set datafile separator comma
set key autotitle columnhead

# Key and grid
# ------------
set grid
# set key at graph 0.6,0.97

# Ranges and tics
# ---------------
# set xrange [-0.35:0]
# set xtics  ('x1' 0.5, 'x2' 1.5)
# set yrange [-0.35:0]
# set ytics  0,0.1,2

# PLOT
# ----

set xlabel 'Distance (\AA)'
# set ylabel '' offset 0,0
set ytics format ""

plot [2:] \
   'rdf-A.csv' t 'A'\
 , 'rdf-B.csv' t 'B'\
 , 'rdf-reax.csv' t 'ReaxFF'\

