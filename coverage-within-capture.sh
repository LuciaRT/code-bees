# calculate the coverage within the capture regions in the historical samples

names=$1
angsd=/home/hqw876/WORK/bin/angsd/angsd
#filter=capture.regionfile
filter=$2

$angsd -bam $names -out $names.$filter -rf $filter -GL 1 -minQ 20 -minMapQ 30 -doCounts 1 -maxDepth 200 -nThreads 8 -doDepth 1

