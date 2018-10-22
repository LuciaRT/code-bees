import sys

inCol2rows=sys.argv[1]

out=open("%s.fasta"%(inCol2rows),"w")

infos=open(inCol2rows)
info=infos.readline()

while info:
	line=info.rstrip().split()
	id=line[0]
	out.write(">%s\n"%(id))

	seq="".join(line[1:])
	i=0
	while i<len(seq):
		out.write("%s\n"%(seq[i:i+50]))
		i+=50

	info=infos.readline()
out.close()
