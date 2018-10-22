#remove fasta headers (names of sequences)
egrep -v ">" fasta >> fasta.noheader

#switch colums into rows
./run-cols2rows.sh  fasta.noheader

#add col with fake major
sed -e 's/^/A/' fasta.noheader.rows2cols  > fasta.noheader.rows2cols.withmajor

#check number of positions
wc -l fasta.noheader.rows2cols

#create "positions" column

seq 1 numberPositions > col2_for_hap

#paste col numbers to haps

paste col2_for_hap fasta.noheader.rows2cols.withmajor > temp

#add col with chrname

sed -e 's/^/mito /' temp  > hap.noHeader

#add header , should be 

chr site major ind1 ind2 ind3 ...
