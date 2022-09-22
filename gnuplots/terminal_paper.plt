# TODO: perfect control between the paper and the four axis

# Usage example:
# load 'terminal_paper'
# eval TERM_SCALE(2,1)
# @TERM lw 6
# @TERM header ''
            

TERM_W=3.35 #8.5
TERM_H=2.95 #7.5
TERM='set term cairolatex'

TERM_SCALE(x,y)=sprintf('set term cairolatex size %.2f,%.2f',x*TERM_W,y*TERM_H)

TERM_A4='set term cairolatex size 21cm,29.7cm'          # Full A4 page
TERM_Letter='term cairolatex size 21.59cm,27.94cm'  # Full Letter page
 
HEAD=sprintf("%s\n%s\n%s", \
    '\newcommand{\hl}[1]{\setlength{\fboxsep}{0.75pt}\colorbox{white}{#1}}',\
    '\usepackage[utf8]{inputenc}\usepackage[T1]{fontenc}',\
    '\usepackage{xcolor}',\
    '\usepackage{amsmath}')



set term cairolatex pdf standalone \
	 color \
	 transparent \
	 crop \
	 lw 3.5 rounded dl 1.5 \
	 fontscale 0.7 \
	 size TERM_W,TERM_H \
   header HEAD

# TERM_1y3x='set term cairolatex size 8.5cm,15.5cm'  # 1x3 share axis
# TERM_2y3x='set term cairolatex size 11.5cm,15.5cm' # 2x3 share axis

# TERM_1y2xx='term cairolatex size 8.5cm,13.5cm' # 1x2
#
# TERM_3y2x='term cairolatex size 16.5cm,11.5cm' # 3x2 share axis
#  
# TERM_3y3x='term cairolatex size 18cm,15.5cm' # 3x2 share axis
#
#
# # -----------
#
# TERM_1x2_1x1='set term cairolatex size 8.5cm,11.5cm'  # 1x2 share axis
#
# TERM_2x5_1x1='set term cairolatex size 17cm,20cm'
# TERM_2x2_1x1='set term cairolatex size 17cm,10.4cm'  # 2x2 share axis
# TERM_2x1s_1x1='set term cairolatex size 17cm,9.0cm'   # 2x1 share axis  (old TERM_2y1x)
# TERM_2x1_1x1='set term cairolatex size 17cm,7.5cm'   # 2x1 share axis  (old TERM_2y1x)
# TERM_2x1_2x1='set term cairolatex size 17cm,7.5cm'   # 2x1 share axis  (old TERM_2y1x)
#

# TODO: Function that accepts two argument like ('an','aa') with the meaning of
# (1 row with axis and 1 row without and 2 columns with axis)
