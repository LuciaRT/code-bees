#!/usr/bin/env python
# take .depthSample from angsd
# and calculate ave depth per individual
#add sample names

import sys
maxCov=100
minCov=0
name=sys.argv[1]
filenames=sys.argv[2]

infos=open(name)
info=infos.readline()

infosN=open(filenames)
infoN=infosN.readline()

out=open("%s.averageDepth.max%s.min%s"%(name,maxCov,minCov),"w")
out.write("sample\taveCov\tnSites\n")
while info:

        totalCov=0
        totalSites=0

        line=info.rstrip().split()
        sample=infoN.rstrip().split(".")[0].split("/")[-1].split("_")[0]

        i=minCov-1
        while i<maxCov:

                totalCov+=int(line[i])*(i)
                totalSites+=int(line[i])

                i+=1
        out.write("%s\t%s\t%s\n"%(sample,totalCov*1000/totalSites*0.001,totalSites))

        info=infos.readline()
        infoN=infosN.readline()

out.close()

