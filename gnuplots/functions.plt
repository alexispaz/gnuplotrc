# Useful functions

# Domain crop
InDomine(x,y,xmin,xmax)=((x>=xmin)?( (x<=xmax)?y:1/0):1/0)
InDomine2D(x,y,xmin,xmax,ymin,ymax,z)=((x>=xmin)?( (x<=xmax)?( (y>=ymin)?( (y<=ymax)?z:1/0 ):1/0):1/0):1/0)

# convert size in pixels
cm2pt(x,dpi)=int(x*dpi/2.54)

min(x,y) = (x < y) ? x : y
max(x,y) = (x > y) ? x : y

# El factorial de un numero
fac(x) = (int(x)==0) ? 1.0 : int(x) * fac(int(x)-1.0)

# Funcion cumulativa de error e inversa
Gauss(x,m,s) = exp(-(x-m)**2/(2*s**2))/(sqrt(2*pi)*s)
# Gauss2D(x,y,mx,my,sx,sy) = exp(-(x-mx)**2/(2*sx**2)-(y-my)**2/(2*sy**2))/(2*pi*sx*sy)
Gauss2D(x,y,a,b,c) = exp(-a*x**2-b*y**2-c*x*y)
Gauss_cdf(x,m,s) = norm((x-m)/s)
Gauss_invcdf(x,m,s) = invnorm(x)*s+m


# Pairing functions
Cantor(a,b) = (a+b)*(a+b+1)*0.5+a

 
# Lennard-Jones potential
LJ(sig,eps,r)=4.*eps*((sig/r)**12-(sig/r)**6)
LJ_rmin(sig)=sig*2.**(1./6.)
dLJ(sig,eps,r)=4*eps*(6*(sig/r)**6-12*(sig/r)**12)/r
   
# Alternative form Lennard-Jones potential
LJrm(rm,eps,r)=eps*((rm/r)**12-2.*(rm/r)**6)
LJ_sigma(rmin)=rmin/2.**(1./6.)
dLJrm(rm,eps,r)=12*eps*((rm/r)**6-(rm/r)**12)/r

# Weeks-Chandler-Andersen potential
WCA(rm,eps,r)=(r<rm?LJrm(rm,eps,r)+eps:0.)
dWCA(rm,eps,r)=(r<rm?dLJrm(rm,eps,r)+eps:0.)

# Finitely extensible nonlinear elastic model potential
FENE(rinfi,k,r) = -.5*k*rinfi**2*ln(1.-r**2/rinfi**2)

# Maxwell-boltzman distribution
MBd(x,eterm)= 2./(sqrt(pi)*eterm**(3./2.))*sqrt(x)*exp(-x/eterm)


# Smoothstep function
sm1(x,r1,r2) =0.5-0.5*sin(pi*(x-(r1+r2)*0.5)/(r2-r1))
 sm2(x,r1,r2)=0.5-0.5*sin(pi*(-x+(r1+r2)*0.5)/(r2-r1))

dsm1(x,r1,r2)=-0.5*cos(pi*(x-(r1+r2)*0.5)/(r2-r1))*pi/(r2-r1)
dsm2(x,r1,r2)=0.5*cos(pi*(-x+(r1+r2)*0.5)/(r2-r1))*pi/(r2-r1)                   

# Kramers rate constants
# There is a confusion between the spring constant k and the frequency w of
# Kramers' euqation. I test the equation with a potential of the form kx^2/(2m),
# and for that numerical simulation I found that should be w=2*pi*k, since
# with Kramers_OD()*4*pi y perfectly fits the results.

Kramers(gama,beta,eb,wr,wb)= 1./wb*(-gama*0.5+sqrt(gama*gama*0.25+wb*wb))*0.5*wr/pi*exp(-beta*eb) 
Kramers_OD(gama,beta,eb,wr,wb)=0.5*wr*wb/(pi*gama)*exp(-beta*eb)



# Double Well

dw_xl(k1,kb,vb)   = -sqrt(2.)*sqrt(k1*vb/(kb**2+k1*kb))
dw_xr(k2,kb,vb,v) = sqrt(2.)*sqrt(k2*vb/(kb**2+k2*kb)-k2*v/(kb**2+k2*kb))
dw_x1(k1,kb,vb)   = -(sqrt(2.)*sqrt(k1)*kb+sqrt(2.)*k1**(3./2.))*sqrt(vb)/(k1*sqrt(kb)*sqrt(kb+k1))
dw_x2(k2,kb,vb,v) = (sqrt(2.)*sqrt(k2)*kb+sqrt(2.)*k2**(3./2.))*sqrt(vb-v)/(k2*sqrt(kb)*sqrt(kb+k2))
doublewell(x,k1,kb,k2,v,vb) = x<dw_xl(k1,kb,vb) ? 0.5*k1*(x-dw_x1(k1,kb,vb))**2 : x<dw_xr(k2,kb,vb,v) ? -0.5*kb*x**2+vb : 0.5*k2*(x-dw_x2(k2,kb,vb,v))**2+v


#Ley de Curie paper con Ceci
#tmp(x,xx,c,jx,a) = (.25*c*xx*.01)/x + (1.0-.01*xx)*(.25*c/x)*(1.0                        \
#   +(jx/x)    * (1519.2     +   533.43*a  - 77.687*a**2 - 153.13*a**3  - 169.91*a**4)  \
#   +(jx/x)**2 * (-215.7     +   100.15*a  + 124.18*a**2 - 127.28*a**3  + 169.16*a**4)  \
#   +(jx/x)**3 * ( 218.14    -   57.494*a  + 10.684*a**2 + 169.44*a**3  + 82.555*a**4)  \
#   +(jx/x)**4 * ( -10.769   +   12.189*a  - 227.21*a**2 + 45.305*a**3  - 79.075*a**4)  \
#   +(jx/x)**5 * ( .094304   +   .26961*a  + 27.093*a**2 + 128.89*a**3  - 21.344*a**4)  \
#   +(jx/x)**6 * (-.00089531 + .0093003*a  - .17427*a**2 + .46488*a**3  - .38915*a**4)  \
# )/(1.0                                                                                \
#   +(jx/x)    * (369.44     + 126.42*a + 13.757*a**2 - 126.75*a**3 +  10.215*a**4)     \
#   +(jx/x)**2 * (179.27     + 254.16*a + 234.59*a**2 + 69.668*a**3 -  154.58*a**4)     \
#   +(jx/x)**3 * (50.271     + 106.25*a - 500.56*a**2 + 114.28*a**3 +  67.521*a**4)     \
#   +(jx/x)**4 * (95.893     - 39.055*a + 548.28*a**2 + 190.2*a**3  +  41.573*a**4)     \
#   +(jx/x)**5 * (-4.1906    + 13.921*a - 234.91*a**2 - 252.49*a**3 -  24.395*a**4)     \
#   +(jx/x)**6 * (-.00059343 - .43284*a + 27.795*a**2 + 117.38*a**3 +  43.919*a**4)     \
# ) 
# 
#
#tmp2(x,S,c,jx,a) = (.25*c*S*.01)/x + (1-.01*S)*(.25*c/x)*(1                   \
#    +(1519.2+533.43*a+(-77.687*a**2)+(-153.13*a**3)+(-169.91*a**4))*(jx/x)        \
#    +(-215.7+100.15*a+124.18*a**2+(-127.28*a**3)+ 169.16*a**4)*((jx/x)**2)        \
#    +(218.14+(-57.494*a)+10.684*a**2+169.44*a**3+82.555*a**4)*(jx/x)**3           \
#    +(-10.769+12.189*a+(-227.21*a**2)+45.305*a**3+(-79.075*a**4))*(jx/x)**4       \
#    +(.094304+.26961*a+27.093*a**2+128.89*a**3+(-21.344*a**4))*(jx/x)**5          \
#    +(-.00089531+.0093003*a+(-.17427*a**2)+.46488*a**3+(-.38915*a**4))*(jx/x)**6  \
#  )/(1                                                                               \
#    +(369.44+126.42*a+13.757*a**2+(-126.75*a**3)+10.215*a**4)*(jx/x)              \
#    +(179.27+254.16*a+234.59*a**2+69.668*a**3+(-154.58*a**4))*((jx/x)**2)         \
#    +(50.271+106.25*a+(-500.56*a**2)+114.28*a**3+67.521*a**4)*(jx/x)**3           \
#    +(95.893+(-39.055*a)+548.28*a**2+190.2*a**3+41.573*a**4)*(jx/x)**4            \
#    +(-4.1906+13.921*a+(-234.91*a**2)+(-252.49*a**3)+(-24.395*a**4))*(jx/x)**5    \
#    +(-.00059343+(-.43284*a)+27.795*a**2+117.38*a**3+43.919*a**4)*(jx/x)**6       \
#  )      


# My useful functions

pes2D_3(x,y)=-Gauss2D(x,y,3,3,1,1)*2*pi-Gauss2D(x,y,-3,-1,sqrt(3./2),sqrt(3./2.))*3*pi-1.3*Gauss2D(x,y,3,-3,sqrt(2),sqrt(2))*4*pi+0.03*(x*x+y*y)
# pes2D_3(x,y)=-exp(-((x-3)**2+(y-3)**2)/2)-exp(-((x+3)**2+(y+1)**2)/3)-1.3*exp(-(x-3)**2-(y+3)**2/4)+0.03*(x*x+y*y)
pes(x)=-0.8*gauss(x,-5,1)-gauss(x,5,2)+0.1*sin(4*x)/x+0.03*sqrt(x**2)-0.2*gauss(x,0,.4)

            
