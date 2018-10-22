# Extract the mitochondrial sequences for each sample:
gunzip
grep -n "NC<-001566.1"
wc -l
sed -n 4392618,4392945p

# Put together the historical samples, the modern samples and the samples from the ncbi into # a file: (h-m-n stands for historical, modern and ncbi)

cat *.out.mito.fa seq.ncbi.fasta > h-m-n-mito.fasta

# Used mafft to do a multiple alignment: 

mafft h-m-n-mito.fa > ma-h-m-n-mito.fa
