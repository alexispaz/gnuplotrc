# Dark theme to be used with something like:
# set terminal cairolatex header '\\color{white}'
# set border lc rgb "white"
# set grid lc rgb "#EEEEEE"

array C[10]
 
C[1]='#FFFFFF' # white
C[2]='#007EFF' # blue
C[3]='#ED3221' # red    
C[4]='#FECE23' # yellow 
C[5]='#35AE0E' # green  
C[6]=mix2('#ED3221',.5,'#FECE23') # orange
C[7]=mix2('#00CAFF',.5,'#ED3221') # violete
C[8]='#10EFEF' # celeste
C[9]='#FF8281' # pink
C[10]=mix2('#000000',.3,"#FFFFFF") # gray

load "colors/update.plt"                

