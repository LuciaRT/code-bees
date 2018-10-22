# use output from -doAncError 
indError=$1
ids=$2
outName=$3

#Rdir=/data/hqw876/bin/angsd-older/angsd0.563/R
#Rdir=/data/hqw876/bin/angsd-older/angsd0900/R
Rdir=/home/hqw876/WORK/bin/angsd/R
#Rdir=/home/hqw876/angsd/R

Rscript $Rdir/estError.R file=$indError indNames=$ids out=$outName.l.errorEst

