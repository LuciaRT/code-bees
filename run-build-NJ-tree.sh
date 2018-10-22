
#build NJ tree

#Fastafile
#inFasta=bamlist.haplo.hetero.noTs.col2rows.fasta
inFasta=$1

/home/fonseca/bin/rapidNJ/bin/rapidnj $inFasta -b 1000 -c 10 -x ${inFasta}.NJ-tree.txt

