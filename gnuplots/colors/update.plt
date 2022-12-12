
# Tex colors
TC='\usepackage{xcolor}'
do for [i=1:|C|] {
  a=C[i]
  TC=TC.';\definecolor{c'.i.'}{HTML}{'.a[2:].'}'
}

# Line types (defaults)
do for [i=1:|C|]{
  set linetype i lc rgb C[i]
}
set linetype cycle |C|

# Line style (alternatives)
do for [i=1:|C|]{
  set style line i lc rgb C[i]
}

