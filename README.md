GNUplot configuration files

Run `./install.sh` to install in your home.

Here I collected some interesting usage examples

Tics labels from file
---------------------

    stats 'data.dat' u 1 name 'x' nooutput
    set xtics x_max/ntics

    plot
    set xtics add GPVAL_X_MIN,(GPVAL_X_MAX-GPVAL_X_MIN)/10.,(GPVAL_X_MAX-(GPVAL_X_MAX-GPVAL_X_MIN)/10.)
    replot

see show variables all
Should I filter a round number near this values?

Colors
------

Gnuplot color definitons can be obtained with `show colornames`
You can add the color by doing:

    TERM_header=TC.'\\definecolor{Cgray}{HTML}{BEBEBE}'
 
Share plots
-----------

Use `save` command:

	 save 'share.plt'

 
Special plots
=============

It is possible to plot increments of a column with:

    a=0; plot file u (b=a,a=$3,$3-b)


Multiplots
==========

Inset
-----

    set multiplot
    plot .... # big plot
    
    set origin 0.1,0.1
    set size 0.4,0.4
    plot .... # small plot

    unset multiplot


Share axis
----------

    MP_LEFT = .2
    MP_RIGHT = .95
    MP_BOTTOM = .1
    MP_TOP = .95
    MP_xGAP = 0.02
    MP_yGAP = 0.0

    set multiplot layout 2,1 columnsfirst \
        margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP \
        spacing screen MP_xGAP, MP_yGAP

