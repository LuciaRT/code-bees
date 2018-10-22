# Put together the Fst results per gene

for i in GLOBAL/*; do n=$(more $i) ; echo $i $n >> ~/resultsFstLuciaPerGene.txt ; done