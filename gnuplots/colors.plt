# Convert functions
# =================

#pick the red color value out from a rgb 255 based
#Note: Arguments are string to avoid octal interpretation of leading 0.
red(rgb255)=(strlen(rgb255)==9)? int(substr(rgb255,1,3)) : 1/0

#pick the green color value out from a rgb 255 based
green(rgb255)=(strlen(rgb255)==9)? int(substr(rgb255,4,6)) : 1/0

#pick the blue color value out from a rgb 255 based
blue(rgb255)=(strlen(rgb255)==9)? int(substr(rgb255,7,9)) : 1/0

#convert integer to hex. To reverse just use the leading 0x 
dec2hex(dec)=gprintf("%02X",dec)

#convert rgb (255 based) color value to its hex string
# e.g.: rgb2hex(color)
rgbint2hex(color)='#'.\
               dec2hex(red(color)).\
               dec2hex(green(color)).\
               dec2hex(blue(color))

#convert rgb (1 based) color value to its hex string
rgb2hex(c1,c2,c3)='#'.\
               dec2hex(c1*255).\
               dec2hex(c2*255).\
               dec2hex(c3*255)

# Linealy separated gray colors. 1<i<n (i=n black, i=0 white)
grises(n,i)=rgb2hex(1./n*(n-i),1./n*(n-i),1./n*(n-i))

# log gray scale
loggrises(n,i)=rgb2hex(log(1./n*(n-i)+1)/log(2.),log(1./n*(n-i)+1)/log(2.),log(1./n*(n-i)+1)/log(2.))
 
# gamma correction for gray scale, a value lower than 1 weigth more the whites. (e.g. 0.45)
gamagris(n,i,g)=rgb2hex((1./n*(n-i))**g,(1./n*(n-i))**g,(1./n*(n-i))**g)
 
# Mixing colors
# gnuplot function to mix rgb colors like in latex xcolor package
# The manual explain the rule, but also in this post
# http://tex.stackexchange.com/questions/34909/understanding-xcolor-color-mixing-model
# Argument is an rgb(1) color and output an hex....?

mix2(c1,p,c2)= '#'.\
               dec2hex(real("0x".substr(c1,2,3))*p+real("0x".substr(c2,2,3))*(1.-p)).\
               dec2hex(real("0x".substr(c1,4,5))*p+real("0x".substr(c2,4,5))*(1.-p)).\
               dec2hex(real("0x".substr(c1,6,7))*p+real("0x".substr(c2,6,7))*(1.-p))
# mix2(c1,p,c2)= <<16+\
#                <<8+\
#                
 
# Use as mixb(@Czub51,0.9). Note @ is necesary and there is not warning for that
mixw(c1,p)= mix2(c1,p,"#FFFFFF")
mixb(c1,p)= mix2(c1,p,"#000000")


# This is a mix of two colors with gamma correction
gamamix2(c1,p,c2,g)= '"#'.\
               dec2hex(real("0x".substr(c1,2,3))*p**g+real("0x".substr(c2,2,3))*(1.-p**g)).\
               dec2hex(real("0x".substr(c1,4,5))*p**g+real("0x".substr(c2,4,5))*(1.-p**g)).\
               dec2hex(real("0x".substr(c1,6,7))*p**g+real("0x".substr(c2,6,7))*(1.-p**g)).'"'


# Add transparency to a color in #FFFFFF format
# a=0 to 255 or 0x00 to 0xff
transp(c,a) = sprintf("0x%.2x%s",a,c[2:])*1
                   

# Colors palettes 
# ===============

# There is an interestin post here
# http://cresspahl.blogspot.com/2012/03/expanded-control-of-octaves-colormap.html

# Graysecure lines
# LSgsl5_1='w l lt 1 lc rgb "#004C4C"' #Teal oscuro
# LSgsl5_2='w l lt 2 lc rgb "#80AFAF"' #Teal claro
# LSgsl5_3='w l lt 3 lc rgb "#604060"' #Violeta
# LSgsl5_4='w l lt 1 lc rgb "#DF809F"' #Rosa
# LSgsl5_5='w l lt 2 lc rgb "#BF0040"' #Magenta

# # CRAYONBOW Palette  (http://colrd.com/palette/)
# RCbow7_1='"#f6300a"' # red     
# RCbow7_2='"#d11b7e"' # magenta 
# RCbow7_3='"#7425b1"' # violet  
# RCbow7_4='"#0a62da"' # blue    
# RCbow7_5='"#00c000"' # green   
# RCbow7_6='"#f6ef2a"' # yellow  
# RCbow7_7='"#fa6c0c"' # orange (to near to red) 
#               
 
# # Blulagon Palette (olrd.com/palette/23519/)
# RCblagon5_1 ='"#ea573d"' # rojo
# RCblagon5_2 ='"#fbc063"' # amarillo
# RCblagon5_3 ='"#64b0bc"' # celeste
# RCblagon5_4 ='"#446699"' # azul
# RCblagon5_5 ='"#555577"' # violeta
                
# if (exists(C)) print C," = ", @C
 
# PALETTE_TROVE5_E2='2 "#e4bf80",\
#                    4 "#e2975d",\
#                    8 "#c94a53",\
#                    16 "#a34974",\
#                    32 "#65387d"'
# 
# PALETTE_TROVE5_LN='-5 "#e4bf80",\
#                    -4 "#e2975d",\
#                    -3 "#c94a53",\
#                    -2 "#a34974",\
#                    -1 "#65387d"'
#   
# PALETTE_TROVE5_E2N='-32 "#e4bf80",\
#                     -16 "#e2975d",\
#                     -8  "#c94a53",\
#                     -4  "#a34974",\
#                     -2  "#65387d"'
#   
# 
# PALETTE_BG6_LN='-6 "#543005",\
#                 -5 "#8c510a",\
#                 -4 "#bf812d",\
#                 -3 "#dfc27d",\
#                 -2 "#f6e8c3",\
#                 -1 "#f5f5f5"
# 
# PALETTE_RG6_LN='-6 "#f5f5f5",\
#                 -5 "#c7eae5",\
#                 -4 "#80cdc1",\
#                 -3 "#35978f",\
#                 -2 "#01665e",\
#                 -1 "#003c30"
#                                   
#      
#  
# PALETTE_GNBU09_LN='-9  "#f7fcf0",\
#                    -8  "#e0f3db",\
#                    -7  "#ccebc5",\
#                    -6  "#a8ddb5",\
#                    -5  "#7bccc4",\
#                    -4  "#4eb3d3",\
#                    -3  "#2b8cbe",\
#                    -2  "#0868ac",\
#                    -1  "#084081"'
#   
# PALETTE_GNBU09_E2N='-256 "#f7fcf0",\
#                    -128 "#e0f3db",\
#                    -64 "#ccebc5",\
#                    -32 "#a8ddb5",\
#                    -16 "#7bccc4",\
#                    -8  "#4eb3d3",\
#                    -1  "#084081"'                       
# 
# PALETTE_GNBU09='1 "#f7fcf0",\
#                 2 "#e0f3db",\
#                 3 "#ccebc5",\
#                 4 "#a8ddb5",\
#                 5 "#7bccc4",\
#                 6 "#4eb3d3",\
#                 7 "#084081"'                       
# 
# PALETTE_GNBU09_LOW='0  "#f7fcf0",\
#                     12 "#e0f3db",\
#                     13 "#ccebc5",\
#                     14 "#a8ddb5",\
#                     15 "#7bccc4",\
#                     20 "#4eb3d3",\
#                     28 "#084081"'                       

MATLAB='defined (0  0.0 0.0 0.5, \
                 1  0.0 0.0 1.0, \
                 2  0.0 0.5 1.0, \
                 3  0.0 1.0 1.0, \
                 4  0.5 1.0 0.5, \
                 5  1.0 1.0 0.0, \
                 6  1.0 0.5 0.0, \
                 7  1.0 0.0 0.0, \
                 8  0.5 0.0 0.0 )'
 
# pm3d

PAL_TRADITIONAL = 'rgb 7,5,15'
PAL_GRV         = 'rgb 3,11,6'
PAL_OCEAN       = 'rgb 23,28,3'
PAL_HOT         = 'rgb 21,22,23'
PAL_COLORONGRAY = 'rgb 30,31,32'
PAL_RAINBOW     = 'rgb 33,13,10'
PAL_AFMHOT      = 'rgb 34,35,36'

PAL_TEST=sprintf('\
set pm3d map                                                                                 ;\
set multiplot layout 3,3                                                                     ;\
se title "Palettes according to help palette rgbformulae"                                    ;\
set xrange [0:1]; set xtics 0.2 scale 1.5 nomirror; set mxtics 2                             ;\
unset colorbox; unset key; set tics out; unset ytics                                         ;\
g(x)=x                                                                                       ;\
set palette @PAL_TRADITIONAL; set title "traditional pm3d\n(black-blue-red-yellow)"; splot g(x)  ;\
set palette @PAL_GRV        ; set title "green-red-violet"; splot g(x)                           ;\
set palette @PAL_OCEAN      ; set title "ocean (green-blue-white)\ntry also other permutations"; splot g(x)     ;\
set palette @PAL_HOT        ; set title "hot (black-red-yellow-white)"; splot g(x)                              ;\
set palette @PAL_COLORONGRAY; set title "color printable on gray\n(black-blue-violet-yellow-white)"; splot g(x) ;\
set palette @PAL_RAINBOW    ; set title "rainbow (blue-green-yellow-red)"; splot g(x)                           ;\
set palette @MATHLAB        ; set title "MATLAB                         )"; splot g(x)                          ;\
set palette model HSV                                                                                       ;\
set palette rgb 3,2,2; set title "HSV model\n(red-yellow-green-cyan-blue-magenta-red)"; splot g(x)          ;\
set pal gray; set title "gray palette"; splot g(x)                                                          ;\
unset multiplot                                                                                             ;\
')
# set palette @PAL_AFMHOT     ; set title "AFM hot (black-red-yellow-white)"; splot g(x)                          ;\

# PAL_TEST=sprintf('\
# set pm3d map                                                                                 ;\
# set multiplot layout 3,3 \                                                                   ;\
# title "Palettes according to help palette rgbformulae"                                       ;\
# set xrange [0:1]; set xtics 0.2 scale 1.5 nomirror; set mxtics 2                             ;\
# unset colorbox; unset key; set tics out; unset ytics                                         ;\
# g(x)=x                                                                                       ;\
# Set palette @PAL_TRADITIONAL; set title "traditional pm3d\n(black-blue-red-yellow)"; splot g(x)  ;\
# set palette @PAL_GRV        ; set title "green-red-violet"; splot g(x)                           ;\
# set palette @PAL_OCEAN      ; set title "ocean (green-blue-white)\ntry also other permutations"; splot g(x)     ;\
# set palette @PAL_HOT        ; set title "hot (black-red-yellow-white)"; splot g(x)                              ;\
# set palette @PAL_COLORONGRAY; set title "color printable on gray\n(black-blue-violet-yellow-white)"; splot g(x) ;\
# set palette @PAL_RAINBOW    ; set title "rainbow (blue-green-yellow-red)"; splot g(x)                           ;\
# set palette @PAL_AFMHOT     ; set title "AFM hot (black-red-yellow-white)"; splot g(x)                          ;\
# set palette @MATHLAB        ; set title "AFM hot (black-red-yellow-white)"; splot g(x)                          ;\
# set palette model HSV                                                                                       ;\
# set palette rgb 3,2,2; set title "HSV model\n(red-yellow-green-cyan-blue-magenta-red)"; splot g(x)          ;\
# set pal gray; set title "gray palette"; splot g(x)                                                          ;\
# unset multiplot                                                                                             ;\
# ')

 
