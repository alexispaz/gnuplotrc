

# Errorbars along columns
# From Ethan at https://stackoverflow.com/a/52527009 (CC BY-SA 4.0)
# use: plot 'datafile' u (column(1)):(mean(N)):(sigma(N)) with yerrorbars
# where N is the number of data columns, i.e. columns 2 through N+1
# sumx(N) = sum [i=2:N+1] column(i)
# sumx2(N) = sum [i=2:N+1] column(i) * column(i)
# mean(N) = sumx(N) / N
# sigma(N) = sqrt( sumx2(N)/N - (sumx(N)/N)**2 )
