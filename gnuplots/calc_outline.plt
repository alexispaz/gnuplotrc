# Derived from https://stackoverflow.com/a/61123758/1342186
# code by theozh <https://stackoverflow.com/users/7295599/theozh> 
# used under CC BY-SA 4.0. 

# Usage: 
#
# 1- save the data in $Data
#	set table $Data
#	 	plot "myData.dat" u 3:5 w table
#	unset table
#
# 2- run the script
# load 'calc_outline.plt'
#
# 3- plot
# plot $Data u 1:2 w p pt 7 ti "Datapoints",\
#      $Outline u 1:2 w l lc rgb "red" ti "Convex Outline" 

# Angle by dx,dy (range: -90°<= angle < 270°), NaN if dx==dy==0
set angle degrees
Angle(dx,dy) = dx==dx && dy==dy ? dx==0 ? dy==0 ? NaN : sgn(dy)*90 : dx<0 ? 180+atan(dy/dx) : atan(dy/dx) : NaN
# Angle by dx,dy (range: 0°<= angle < 360°), NaN if dx==dy==0
Angle360(dx,dy) = (a_tmp=Angle(dx,dy), a_tmp==a_tmp) ? a_tmp-360*floor(a_tmp/360.) : NaN

# get the coordinates of the bottommost point
# in case of multiple points with bottommost y-coordinate take the one with the rightmost x-coordinate
Init(x,y) = (Bx=column(x),By=column(y))

GetExtremes(x,y) = (By>column(y) ? (Bx=column(x),By=column(y)) : \
                   (By==column(y) && Bx>column(x) ? Bx=column(x) : NaN))

set table $Dummy
    plot $Data u ($0==0?Init(1,2):GetExtremes(1,2)) w table
unset table
print sprintf("Bottommost point: %g,%g:", Bx,By)

# Distance
Dist(x0,y0,x1,y1) = sqrt((x1-x0)**2 + (y1-y0)**2)

# function for getting the next outline point
GetNext(x,y) = (a=Angle360(column(x)-Bx,column(y)-By), aDiff=(a<aTar?a+360-aTar:a-aTar),\
                d=Dist(Bx,column(x),By,column(y)), \
                aMin>aDiff ? (aNext=a, aMin=aDiff,dMax=d,xNext=column(x),yNext=column(y)) : \
                aMin==aDiff ? dMax<d ? (dMax=d, xNext=column(x),yNext=column(y)) : NaN : NaN)

BxStart=Bx;  ByStart=By
set print $Outline append
    print sprintf("% 9g % 9g",BxStart,ByStart)  # add starting point to outline
    aTar=0
    while 1 {  # endless loop
        aMin=360;  dMax=0
        set table $Dummy
            plot  $Data u (GetNext(1,2)) w table
        unset table
        print sprintf("% 9g % 9g",xNext,yNext)
        Bx=xNext;  By=yNext; aTar=aNext
        if (xNext==BxStart && yNext==ByStart) { break } # exit loop
    }
set print

### end of code
