bam1=$1
bam2=$2
bam3=$3
bam4=$4
bam5=$5
bam6=$6
bam7=$7
bam8=$8
bam9=$9
bam10=$10


angsdDir=/data/hqw876/bin/angsd-0.914/angsd
Angsd=$angsdDir/angsd
misc=$angsdDir/misc

REF=/data/hqw876/DATA/REFERENCE/Amel4.5.fa
ANC=/data/hqw876/BEES/MODERN/SRR957079.M0.q25.realigned.sort.bam.fasta.fa
################################################

#first calculate per pop saf for each populatoin
$Angsd -b $bam1  -anc $ANC -out ${bam1}-ns -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam2  -anc $ANC -out ${bam2}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam3  -anc $ANC -out ${bam3}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam4  -anc $ANC -out ${bam4}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites i
$Angsd -b $bam5  -anc $ANC -out ${bam5}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam6  -anc $ANC -out ${bam6}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam7  -anc $ANC -out ${bam7}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam8  -anc $ANC -out ${bam8}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam9  -anc $ANC -out ${bam9}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites
$Angsd -b $bam10  -anc $ANC -out ${bam9}-nu-sites -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -sites bamlist.haplo.nucl.sites


