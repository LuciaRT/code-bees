#calculate summary statistics using ANGSD

#create bam file lists (one bamfile name per line)

#then run this file run-angsd-for-tajima-pop for each of the bamlists

#the number of chromosomes is 32 (2N)

#use as minInd the number of individuals in the list minus one


bam=$1
chr=$2
minInd=$3

id=${bam}
out=${bam}.out

angsdDir=/data/hqw876/bin/angsd-0.914/angsd
Angsd=$angsdDir/angsd
misc=$angsdDir/misc

REF=/data/hqw876/DATA/REFERENCE/Amel4.5.fa
ANC=/data/hqw876/BEES/MODERN/SRR957079.M0.q25.realigned.sort.bam.fasta.fa


#Step 1: Finding a 'global estimate' of the SFS
$Angsd -bam $bam -doSaf 1 -anc $ANC -GL 2 -P 10 -out $out -minQ 20 -minMapQ 30 -minInd $minInd

#Obtain the maximum likelihood estimate of the SFS using the realSFS program found in the misc subfolder.
$misc/realSFS $out.saf.idx -P 10 > $out.sfs

#Step 2: Calculate the thetas for each site
$Angsd -bam $bam -out $out -doThetas 1 -doSaf 1 -pest $out.sfs -anc $ANC -GL 2

#Step 3a: Estimate Tajimas D and other statistics

#create a binary version of thetas.gz
$misc/thetaStat make_bed $out.thetas.gz

#calculate Tajimas D
$misc/thetaStat do_stat $out.thetas.gz -nChr $chr

