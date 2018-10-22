#ignore the first 3 columns
#change the headers of the output from angsd
#remove transitions if needed
#keep only diallelic sites

import sys

#chr     pos     major   ind0    ind1    ind2    ind3    ind4    ind5    ind6    ind7
#sca1    25      A       N       N       N       N       N       N       N       N
#sca1    26      A       N       N       N       N       N       N       N       N
#sca1    27      G       G       N       G       N       N       G       N       G

try:
	inHaps=sys.argv[1] #angsd output
	newids=sys.argv[2] #one per line corresponding to the column order of the haps files
except:
	print "run as: python script angsdOutHapSampling newIds\n"
	sys.exit()

mac=5 #minor allele count (previously mac=2 and mac=5)
rmTs=0 #1: rm transitions ; 0= don't

if rmTs==1: 
	out=open("%s.dip.mac%s.noTs"%(inHaps,mac),"w")
	outT=open("%s.dip.mac%s.justTs"%(inHaps,mac),"w")
else:
	out=open("%s.dip.mac%s"%(inHaps,mac),"w")
	outT=open("%s.dip.mac%s.T"%(inHaps,mac),"w")


out.write("chr\tpos\tmajor\t")
outT.write("chr\tpos\tmajor\t")

missing={}
idsPos=[0,0,0]

infos=open(newids)
info=infos.readline()
while info:
	id=info.rstrip()

	missing[id]=0
	idsPos.append(id)

	out.write("%s\t"%(id))
        outT.write("%s\t"%(id))

	info=infos.readline()	
out.write("\n")
outT.write("\n")
infos=open(inHaps)
info=infos.readline() #header

info=infos.readline()

total=0
while info:
	total+=1
	line=info.rstrip().split()

	i=3
	while i<len(idsPos): #count missing		
		id=idsPos[i]
		if line[i]=="N" or line[i]=="n"or line[i]=="-":
			missing[id]+=1
		i+=1

	haps=list(set(line[3:]))

	if "N" in haps:
		haps.remove("N")
	if "n" in haps:
		haps.remove("n")
	if "-" in haps:
		haps.remove("-")
	
	if len(haps)==2 and line.count(haps[0])>=mac and line.count(haps[1])>=mac: #more than one allele
		if rmTs==1: #rm transitions
			if not (("G" in haps and "A" in haps) or ("C" in haps and "T" in haps)):
				out.write(info)
			else:
				outT.write(info)
		else:
			out.write(info)

	info=infos.readline()
out.close()

out=open("%s.missinginfo"%(inHaps),"w")
i=3
while i<len(idsPos):
	id=idsPos[i]
	miss=missing[id]*1000/total*0.001
	out.write("%s\t%s\n"%(id,miss))

	i+=1
out.close()
outT.close()
