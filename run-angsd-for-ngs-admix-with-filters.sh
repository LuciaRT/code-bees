#bamList
names=$1

nInd=70 # minimum number of individuals

minMaf=0.05 #keep this

out=${names}.minInd${nInd}.minMaf${minMaf}.snp

Angsd=/home/hqw876/WORK/bin/angsd/angsd


nice -10 $Angsd -bam $names -out ${out}.snp -doGlf 2 -GL 1 -doMaf 2 -SNP_pval 1e-6 -doMajorMinor 1 -minQ 20 -minMapQ 30 -minInd $nInd -nThreads 10 -minMaf $minMaf


