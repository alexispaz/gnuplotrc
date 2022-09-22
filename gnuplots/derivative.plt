# Derivative functions. 
# Return 1/0 for first point, otherwise delta y or (delta y)/(delta x)
x1=0
x2=0
x3=0
y1=0
y2=0
y3=0
deuler(i,x,y) = (i==0)? (x1=x, y1=y, 1/0) : (x2=x1, x1=x, y2=y1, y1=y, (y1-y2)/(x1-x2))
dtres(i,x,y)  =  (i<2)? (x2=x1, y2=y1, deuler(i,x,y)) : ( x3=x2,x2=x1,x1=x, y3=y2,y2=y1,y1=y, (y1-y3)/(x1-x3))
dcinco(i,x,y) =  (i<4)? (x4=x3, y4=y3,  dtres(i,x,y)) : ( x5=x4,x4=x3,x3=x2,x2=x1,x1=x, y5=y4,y4=y3,y3=y2,y2=y1,y1=y, (-y1+8.*y2-8*y4+y5)/(3*(x1-x5)))

dxeuler(i,x,h) = (i<1)? 1/0            : (x-h*0.5) 
dxtres(i,x,h) =  (i<2)? dxeuler(i,x,h) : (x-h)     
dxcinco(i,x,h) = (i<4)? dxtres(i,x,h)  : (x-2*h)   
                       
# Usar
# Offset for derivatives (half the x spacing)
# dx = 0.25
# plot 'data.dat', '' u (dxeuler($0,$1,$2)):(deuler($0,$1,$2)), '' u (dxtres($0,$1,$2)):(dtres($0,$1,$2))
# con el 5 no esta listo porque me falta algo en el 4

            
