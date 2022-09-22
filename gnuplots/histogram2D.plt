
# 2D Histogram 
# ============
# 
# La idea es primero llevarlo a 1D mediante el grillado del espacio,
# luego hacerle un smooth y finalmente volverlo a 2D y graficar.
#
# Use in this way:
#
# ymax=pi
# ymin=-pi
# yn=150
# 
# xmax=pi
# xmin=-pi
# xn=150
#
# load 'histogram2D'
#
# set table 'data-heatmap.dat'
# plot 'scatter data' u (cell(\$1,\$3)):5 smooth unique
# unset table
#  
# plot 'data-heatmap.dat' u (xcell(\$1)):(ycell(\$1)):2 w p pt 5 ps 0.05 lc palette notit
  
dx=(xmax-xmin)*1./xn
xicell(x,xmin,dx)=floor((x-xmin)/dx)
xbin(x,xmin,dx) = dx*(xicell(x,xmin,dx)+0.5) + xmin
    
dy=(ymax-ymin)*1./yn
icell(x,min,dx)=floor((x-min)/dx)
cell(x,y)=icell(x,xmin,dx)+icell(y,ymin,dy)*xn
xcell(i)=int(i)%int(xn)*dx+xmin
ycell(i)=floor(i/xn)*dy+ymin

# STYLE DEFAULT
#
set boxwidth dx*0.9
set style fill solid 0.5
 
