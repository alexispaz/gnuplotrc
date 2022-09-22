
# Rounded box
# ===========

# Usage:
# set table $rbox
# plot '+' u 1:\
#  (f_low(-10,-10,10,10,1,2,$1)):\
#  (f_up(-10,-10,10,10,1,2,$1)) w table
# unset table

#Variables:
##(a,b) is the low left vertex of the rectangle
##(c,d) is the up right vertex of the rectangle
##rx is the radius along x-axis
##ry is the radius along y-axis
##x is the independent variable of the curve
f_low(a,b,c,d,rx,ry,x)=a<x && x<a+rx ? \
     -ry*sqrt(1-((x-a-rx)/rx)**2)+b+ry : \
     a+rx<x && x<c-rx ? b :c-rx<x && x<c ?\
     -ry*sqrt(1-((x-c+rx)/rx)**2)+b+ry : 1/0
#The low curve of a round corner rectangle
f_up(a,b,c,d,rx,ry,x)=a<x && x<a+rx ?\
     ry*sqrt(1-((x-a-rx)/rx)**2)+d-ry : \
     a+rx<x && x<c-rx ? d :c-rx<x && x<c ?\
     ry*sqrt(1-((x-c+rx)/rx)**2)+d-ry : 1/0
#The up curve of a round corner rectangle

                     
