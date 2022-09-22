# HISTOGRAMA 1D
#
# Use in  in this way:
# 
# xmax=pi
# xmin=-pi
# xn=150
#
# load 'hitograms'
#
# plot 'data' u (xbin($1)):2 smooth unique
 
dx=(xmax-xmin)*1./(xn-1)
xicell(x)=floor((x-xmin)/dx)
xbin(x) = dx*(xicell(x)+0.5) + xmin

# STYLE DEFAULT
#
set boxwidth dx*0.9
set style fill solid 0.5
 
