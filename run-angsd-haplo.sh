
#sample one read per position of the genome
#include outgroup but not the low coverage individuals

#bamlist
bamlist=$1

Angsd=/data/hqw876/bin/angsd-0.913/angsd/angsd

$Angsd -bam $bamlist -out $bamlist -dohaplocall 1 -minQ 20 -minMapQ 30 -nThreads 10 -minInd 70 -doCounts 1 

