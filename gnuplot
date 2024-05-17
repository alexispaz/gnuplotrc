#Set path of config snippets
set loadpath '~/.gnuplots'

#Making portable scripts. Example of use:
#  if (exists("gitrc")) load 'terminal_paper.plt'  
#  if (!exists("vimrc")) plt="PLT"
gitrc="https://github.com/alexispaz/gnuplotrc"
vimrc="https://github.com/alexispaz/vimrc"

# Turn macros on
set macro

# Terminals
# =========

# load 'terminal_paper' #; default
 
# Colors
# ======

load 'colors.plt'
load 'colors/zub7.plt'  #; default


# Extend Intrinsics
# =================

load "constants.plt"
load "functions.plt"

# Templates
# =========

t1x1='!cp $HOME/.gnuplots/1x1.plt .'
