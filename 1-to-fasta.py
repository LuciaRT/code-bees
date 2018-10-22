import sys

inCol2rows=sys.argv[1]

out=open("%s.fasta"%(inCol2rows),"w")

infos=open(inCol2rows)

# read the data file in as a list
fin = open(inCol2rows, "r" )
data_list = fin.readlines()
fin.close()

# remove list items from index 0 to 1 (inclusive)
del data_list[0:2]

# write the changed data (list) to a file
infos2 = open("MyData2.txt", "w")
infos2.writelines(data_list)
infos2.close()

infos2 = open("MyData2.txt", "r")
info=infos2.readline()

while info:
	line=info.rstrip().split()
	id=line[0]
	out.write(">%s\n"%(id))

	seq="".join(line[1:])
	i=0
	while i<len(seq):
		out.write("%s\n"%(seq[i:i+50]))
		i+=50

	info=infos2.readline()
out.close()

infos2.close()
