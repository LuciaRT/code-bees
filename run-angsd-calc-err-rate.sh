myangsd=/home/hqw876/WORK/bin/angsd/angsd

results=$1
bamlist=$2

$myangsd -minQ 20 -minMapQ 30 -doAncError 2 -anc /data/hqw876/BEES/MODERN/SRR957079.M0.q25.realigned.sort.bam.fasta.fa -ref /data/hqw876/BEES/MODERN/SRR957058.M0.q25.realigned.sort.bam.fasta.fa -out $results -bam $bamlist -doCounts 1


