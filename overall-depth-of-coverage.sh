# calculate the overall depth of coverage

names=$1
angsd=/home/hqw876/WORK/bin/angsd/angsd

$angsd -bam $names -out $names -GL 1 -minQ 20 -minMapQ 30 -doCounts 1 -maxDepth 200 -nThreads 8 -doDepth 1

