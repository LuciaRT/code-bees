bam1=$1
bam2=$2
rf=$3

angsdDir=/data/hqw876/bin/angsd-0.914/angsd
Angsd=$angsdDir/angsd
misc=$angsdDir/misc

REF=/data/hqw876/DATA/REFERENCE/Amel4.5.fa
ANC=/data/hqw876/BEES/MODERN/SRR957079.M0.q25.realigned.sort.bam.fasta.fa
################################################

#first calculate per pop saf for each populatoin

for i in $(cat $rf)

do
echo $i

$Angsd -b $bam1  -anc $ANC -out intermediate/${bam1}_${i} -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -r ${i} >& ${bam1}_${i}.err 
$Angsd -b $bam2  -anc $ANC -out intermediate/${bam2}_${i} -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -r ${i} >& ${bam2}_${i}.err

#calculate the global sfs for each region

# saf.idx files
safidx1=intermediate/${bam1}_${i}.saf.idx
safidx2=intermediate/${bam2}_${i}.saf.idx

# File wiht individual sites positions
#sites=$3

out1=${bam1}
out2=${bam2}_${i}

#calculate the 2dsfs prior (Not necessary to put -sites I think)
$misc/realSFS $safidx1 $safidx2  > intermediate/$out1.$out2.ml

#prepare the fst for easy window analysis etc
$misc/realSFS fst index $safidx1 $safidx2 -sfs intermediate/$out1.$out2.ml -fstout intermediate/here-genes-$out1-$out2

#get the global estimate
$misc/realSFS fst stats intermediate/here-genes-$out1-$out2.fst.idx > intermediate/global-genes-$out1.$out2

mv intermediate/global-genes-$out1.$out2 GLOBAL

done

