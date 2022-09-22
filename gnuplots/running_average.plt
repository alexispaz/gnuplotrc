# RUNNING AVERAGE

# Taken from https://stackoverflow.com/a/42868056/1342186

# Usar
# 
# navg=50
# load 'running_average'
# plot "test.data" u 1:(avg($2))
#
# TODO: This will not work for consecutive plots, it is needed to eval
# sprintf("back%d=0", i) again after a plot.

               
# # number of points in moving average
# navg = 50

# initialize the variables
do for [i=1:navg] {
    eval(sprintf("back%d=0", i))
}

# build shift function (back_n = back_n-1, ..., back1=x)
shift = "("
do for [i=navg:2:-1] {
    shift = sprintf("%sback%d = back%d, ", shift, i, i-1)
} 
shift = shift."back1 = x)"
# uncomment the next line for a check
# print shift

# build sum function (back1 + ... + backn)
sum = "(back1"
do for [i=2:navg] {
    sum = sprintf("%s+back%d", sum, i)
}
sum = sum.")"
# uncomment the next line for a check
# print sum

# define the functions like in the gnuplot demo
# use macro expansion for turning the strings into real functions
samples(x) = $0 > (navg-1) ? navg : ($0+1)
avg(x) = (shift_n(x), @sum/samples($0))
shift_n(x) = @shift


