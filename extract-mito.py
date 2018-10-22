#get the seq correspondent to the mitochondria in the bee bam files

import sys
import re

#mito="gi|323388980|ref|NC_007077.3|"
mito="gi|5834925|ref|NC_001566.1|"

fastaFile=sys.argv[1]

fileIN = open(fastaFile)
line = fileIN.readline()

print "1"

out=open("%s.mito"%(fastaFile), "w")

print "2"

while line:
	if re.match(">",line):
		if line[1:].rstrip()==mito:
			out.write(line)
			line =fileIN.readline()
			while line:
				out.write(line)
				line =fileIN.readline()
	
	else:
		line =fileIN.readline()

print "4"

out.close()

