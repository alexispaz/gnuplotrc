 
# Checking if a file exist
fexists(f)=system("[ ! -e '".f."' ]; echo $?")

# Checking if a file does not exist
missing(f)=system("[ -e '".f."' ]; echo $?")
 
