#!/bin/bash 
set -o nounset
set -o errexit
set -o pipefail

# Get current path
cwd=$(pwd)

# Move to home
cd $HOME

# Create a bkp folder
n=""
while [ -d gnuplotrc_bkp$n ]
do
	((++n))
done
mkdir gnuplotrc_bkp$n 

# Move files to bkp
[[ -L ".gnuplot" ||  -e ".gnuplot" ]] && mv .gnuplot gnuplotrc_bkp$n
[[ -L ".gnuplots" ||  -d ".gnuplots" ]] && mv .gnuplots gnuplotrc_bkp$n

# Link new configuration files
ln -s "$cwd/gnuplot" ".gnuplot"
ln -s "$cwd/gnuplots" ".gnuplots"

