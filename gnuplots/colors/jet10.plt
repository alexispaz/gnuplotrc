# Jet palette
#
# Using jet(x) function in octave you can find the colors for N colors

array C[9]

C[1] ='#000080'  # dark blue         
C[2] ='#0000ff'  # blue     
C[3] ='#0080ff'  #          
C[4] ='#00ffff'  #          
C[5] ='#80ff80'  # yellow         
C[6] ='#ffff00'  #          
C[7] ='#ff8000'  #          
C[8] ='#ff0000'  # red      
C[9] ='#800000'  # dark red 

# C[1] =rgb2hex(0.00,0.00,0.67) # blue
# C[2] =rgb2hex(0.00,0.00,1.00)
# C[3] =rgb2hex(0.00,0.33,1.00)
# C[4] =rgb2hex(0.00,0.67,1.00)
# C[5] =rgb2hex(0.00,1.00,1.00)
# C[6] =rgb2hex(0.33,1.00,0.67)
# C[7] =rgb2hex(0.67,1.00,0.33)
# C[8] =rgb2hex(1.00,1.00,0.00)
# C[9] =rgb2hex(1.00,0.67,0.00)
# C[10]=rgb2hex(1.00,0.33,0.00) # green

# palette
set palette defined (0  0.0 0.0 0.5, \
                     1  0.0 0.0 1.0, \
                     2  0.0 0.5 1.0, \
                     3  0.0 1.0 1.0, \
                     4  0.5 1.0 0.5, \
                     5  1.0 1.0 0.0, \
                     6  1.0 0.5 0.0, \
                     7  1.0 0.0 0.0, \
                     8  0.5 0.0 0.0 )

load "colors/update.plt"                

