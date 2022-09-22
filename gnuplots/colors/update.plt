
# Tex colors
TC='\usepackage{xcolor}'
do for [i=1:|C|] {
  a=C[i]
  TC=TC.';\definecolor{c'.i.'}{HTML}{'.a[2:].'}'
}

# Line styles
do for [i=1:|C|]{
  set style line i lc rgb C[i]
}
 
