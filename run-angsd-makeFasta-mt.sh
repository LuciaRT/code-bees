#myangsd=/home/hqw876/WORK/bin/angsd/angsd

myangsd=/data/hqw876/bin/angsd-0.913/angsd/angsd


bamfile=$1
#bamlist=$1
outname=$2

$myangsd -doFasta 2 -out ${outname}.mito -explode 1 -doCounts 1 -minQ 20 -minMapQ 30 -i $bamfile -setMinDepth 10 -nThreads 20 -doDepth 1 -r 'gi|5834925|ref|NC_001566.1|':




