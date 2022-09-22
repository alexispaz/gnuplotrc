# Constantes Matematicas
  pi = 3.141592653589793238462643383279502884197
  pio2=1.57079632679489661923132169163975144209858
  twopi=6.283185307179586476925286766559005768394
  sqrt2=1.41421356237309504880168872420969807856967
  euler=0.5772156649015328606065120900824024310422
  e=2.71828182845904523536028747135266249775724709369995

# Constantes Fisicas Adimensionales
  mu0=4.e-7*pi          # Permeabilidad del vacio en N/A**2 o Tm/A
  Na = 6.0221417930e23  # Numero de Avogadro

# Constantes Fisicas con dimension  
  hbar_Js=6.6260695729e-34
  hbar_eVs=4.13566751691e-15
  h_Js=2*pi*hbar_Js
  h_eVs=2*pi*hbar_eVs
  kB_eV = 8.617385e-05
  h_js = 6.6260695729e-34
  h_eVs = 4.1356673310e-15
  me_kg=9.1093829140e-31
  me_uma=5.485799094622e-4
  e0_C=-1.60217656535e-19
  G0_S=7.748091734625e-5
  kT_eV = 8.617385e-05*298
  c_ms = 299792458.

#Masas atomicas
  mH = 1.008
  mHe = 4.0026022
  mLi = 6.94
  mBe = 9.01218315
  mB = 10.81
  mC = 12.011
  mN = 14.007
  mO = 15.999
  mF = 18.9984031636
  mNe = 20.17976
  mNa = 22.989769282
  mMg = 24.305
  mAl = 26.98153857
  mSi = 28.085
  mP = 30.9737619985
  mS = 32.06
  mCl = 35.453
  mAr = 39.9481
  mK = 39.09831
  mCa = 40.0784
  mSc = 44.9559085
  mTi = 47.8671
  mV = 50.94151
  mCr = 51.99616
  mMn = 54.9380443
  mFe = 55.8452
  mCo = 58.9331944
  mNi = 58.69344
  mCu = 63.5463
  mZn = 65.382
  mGa = 69.7231
  mGe = 72.6308
  mAs = 74.9215956
  mSe = 78.9718
  mBr = 79.904
  mKr = 83.7982
  mRb = 85.46783
  mSr = 87.621
  mY = 88.905842
  mZr = 91.2242
  mNb = 92.906372
  mMo = 95.951
  # mTc = [97]
  mRu = 101.072
  mRh = 102.905502
  mPd = 106.421
  mAg = 107.86822
  mCd = 112.4144
  mIn = 114.8181
  mSn = 118.7107
  mSb = 121.7601
  mTe = 127.603
  mI = 126.904473
  mXe = 131.2936
  mCs = 132.905451966
  mBa = 137.3277
  mLa = 138.905477
  mCe = 140.1161
  mPr = 140.907662
  mNd = 144.2423
  # mPm = [145]
  mSm = 150.362
  mEu = 151.9641
  mGd = 157.253
  mTb = 158.925352
  mDy = 162.5001
  mHo = 164.930332
  mEr = 167.2593
  mTm = 168.934222
  mYb = 173.0545
  mLu = 174.96681
  mHf = 178.492
  mTa = 180.947882
  mW = 183.841
  mRe = 186.2071
  mOs = 190.233
  mIr = 192.2173
  mPt = 195.0849
  mAu = 196.9665695
  mHg = 200.5923
  mTl = 204.38
  mPb = 207.21
  mBi = 208.980401
  # mPo = [209]
  # mAt = [210]
  # mRn = [222]
  # mFr = [223]
  # mRa = [226]
  # mAc = [227]
  # mTh = 232.03774
  # mPa = 231.035882
  # mU = 238.028913
  # mNp = [237]
  # mPu = [244]
  # mAm = [243]
  # mCm = [247]
  # mBk = [247]
  # mCf = [251]
  # mEs = [252]
  # mFm = [257]
  # mMd = [258]
  # mNo = [259]
  # mLr = [262]
  # mRf = [267]
  # mDb = [270]
  # mSg = [271]
  # mBh = [270]
  # mHs = [277]
  # mMt = [276]
  # mDs = [281]
  # mRg = [282]
  # mCn = [285]
  # mUut = [285]
  # mFl = [289]
  # mUup = [2889]
  # mLv = [293]
  # mUus = [294]
  # mUuo = [294]
  mH2O=mH*2+mO

#Factores y funciones de conversion

  # volumen
  l_cm3 = 1.e3  
  cm3_l = 1./l_cm3
  gal_l = 3.7854118
  l_gal = 1./gal_l

  # cantidad
  molar_cantxA3 = Na*1e-27
  cantxA3_molar = 1./molar_cantxA3

  # Concentracion
  mH2O=mH*2+mO    #masa del agua 
  MH2O=1000./mH2O #molaridad del agua 

  # Distancias fisicas
  Bhor_A=0.529177249
  A_Bhor=Bhor_A


  # Distancias (unidades inglesas)
  inch_cm = 2.5400
  cm_inch = 1./inch_cm
  mi_km=1.609
  km_mi=1./mi_km
  m_foot=3.28083989501312
  foot_m=1./m_foot
  foot_inch=12.
  inch_foot=1./foot_inch

  # Distancias (Latex)
  cm_pt=28.45274
  pt_cm=1./cm_pt
  pt_ex=4.30554
  ex_pt=1./pt_ex
  pt_em=10.00002
  em_pt=1./pt_em

  #tiempo
  ps_us = 1.0e-6
  us_ps = 1./ps_us

  #velocidad
  Axps_mxs = 1.e2
  mxs_Axps = 1.e-2

  # Frequencia
  cm1_ps=c_ms*1.e-10
  ps_cm1=1./cm1_ps

  #masa
  uma_kg = 1.6605402e-27
  kg_uma = 0.60221366e27

  # Temperatura
  C_F(x)=9./5.*x+32 
  F_C(x)=5./9.*(x-32)

  # Energia
  # H: Hartree

  eV_J = 1.60219e-19
  J_eV = 1./eV_J

  H_eV = 27.211
  eV_H = 1./H_eV

  H_kJm = 2625.5
  kJm_H = 1./H_kJm

  H_cm1 = 219474.6
  cm1_H = 1./H_cm1

  cal_J = 4.184
  J_cal = 1./cal_J

  kcm_kJm = cal_J
  kJm_kcm = J_cal

  kJm_eV = J_eV*1000./Na
  eV_kJm = 1.0/kJm_eV

  kcm_eV = cal_J*kJm_eV
  eV_kcm = eV_kJm*J_cal

  ui_J = Axps_mxs*Axps_mxs*uma_kg
  J_ui =  1./ui_J

  ui_eV = ui_J*J_eV
  eV_ui = 1./ui_eV

  ui_kJm = ui_eV*eV_kJm
  kJm_ui = 1./ui_kJm

  ui_kcm = ui_eV*eV_kcm
  kcm_ui = 1.0/ui_kcm

  #presion
  eVA3_Pa = 160.2176487e9
  Pa_eVA3 = 1./eVA3_Pa

  Pa_bar = 1e-5
  bar_Pa = 1./Pa_bar

  atm_Pa = 101325
  Pa_atm = 1./atm_Pa

  Pa_kcmA3 = Pa_eVA3*eV_kcm
  kcmA3_Pa = 1./Pa_kcmA3
                        
  bar_kcmA3 = bar_Pa*Pa_kcmA3 
  kcmA3_bar = 1./bar_kcmA3
                        
  #angulos
  rad_grad = 180./pi
  grad_rad = 1./rad_grad

  #magnetismo
  #B[T]=mu0(H[A/m]+M[A/m])          (SI)
  #B[G]=H[Oe]+(4*pi*M[emu/cm3])[G]  (cgs)
  #emu=erg/Oe
  #Oe=G
  Axm_emuxcm3 = 1.e-3 #Magnetizacion SI_cgs
  emuxcm3_Axm = 1.e3
  Axm2_emu = 1.e3  #Momento magnetico SI_cgs
  emu_Axm2 = 1.e-3 
  T_G = 1.e4  # Flujo SI_cgs
  G_T = 1.e-4  
  Axm_Oe = mu0*T_G  # Campo SI_cgs
  Oe_Axm = 1/(mu0*T_G)
 
 

# Constantes fisicas en otras unidades
  kB_kJm = kB_eV*eV_kJm
  kB_kcm = 8.617385e-05*eV_kcm
  kB_J = kB_eV*eV_J
  kB_ui = kB_eV*eV_ui
       
  hbar_ui=hbar_eVs*eV_ui*1e12

 
