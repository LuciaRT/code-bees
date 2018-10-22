#Run this file for each of the pairwise comparisons
#Files saf.idx
safidx1=$1
safidx2=$2

#File with individual sites positions
#sites=$3

out1=${safidx1}
out2=${safidx2}

angsdDir=/data/hqw876/bin/angsd-0.914/angsd
Angsd=$angsdDir/angsd
misc=$angsdDir/misc

#calculate the 2dsfs prior (Not necessary to put -sites. That is necessary when reading the bam files)
$misc/realSFS $safidx1 $safidx2  > $out1.$out2.ml

#prepare the fst for easy window analysis etc
$misc/realSFS fst index $safidx1 $safidx2 -sfs $out1.$out2.ml -fstout here-ns-$out1-$out2

#get the global estimate
$misc/realSFS fst stats here-ns-$out1-$out2.fst.idx > global-ns-$out1.$out2

#below is not tested that much, but seems to work
$misc/realSFS fst stats2 here-ns-$out1-$out2.fst.idx -win 50000 -step 10000 >slidingwindow-nuc-sites-$out1-$out2

