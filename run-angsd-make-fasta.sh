myangsd=/home/hqw876/WORK/bin/angsd/angsd

bamfile=$1

$myangsd -doFasta 2 -out ${bamfile}.fasta -explode 1 -doCounts 1 -minQ 20 -minMapQ 30 -i $bamfile -setMinDepth 10 -nThreads 20 -doDepth 1
