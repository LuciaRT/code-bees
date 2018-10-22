#!/usr/bin/Rscript

# choose palette
# http://wesandersonpalettes.tumblr.com/

#zissou
faintpink<-"#E5C39E"
red<-"#F54B1A"
darkblue<-"#1B346C"
faintblue<-"#C3CED0"
skyblue<-"#01ABE9"

#
grassgreen<-"#4D5B28"
darkpink<-"#DB4372"
golden<-"#F6C83E"

#
darkyellow<-"#D8B70A"
darkgreen<-"#02401B"
darkred<-"#972D15"

#
greybrown<-"#715A38"
faintgreen<-"#89B151"

#
magenta<-"#A45E60"
ciano<-"#609F80"
grey<-"#8D9876"
rivergreen<-"#235135"
faintbrown<-"#D3AF7B"
faintyellow="#F3DF6C"

emeralds=grassgreen
bees=darkpink 
mtGems=greybrown
coq=skyblue
bri=red
man=darkblue
her=grey
top=rivergreen

cols0=c(bri,emeralds,her,coq,mtGems,man)
cols1=c(man,emeralds,mtGems,bri,coq,faintyellow,her)
cols2=c(her,coq,bri,faintyellow,man,emeralds,top,mtGems)
cols3=c(bees,bri,coq,emeralds,her,mtGems,faintyellow,man,top)
cols4=c(man,bri,mtGems,faintyellow,her,emeralds,coq,bees,top,faintblue)

cols5=c(her,mtGems,coq,top,faintpink,bri,emeralds,faintblue,man,bees,faintyellow)
cols6=c(man,faintyellow,her,"black",top,emeralds,coq,faintblue,mtGems,bri,faintpink,bees)

widthM<-2100
heightM<-2400

filename0<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k6.seed35.qopt"
filename1<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k7.seed97.qopt"
filename2<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k8.seed42.qopt"
filename3<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k9.seed14.qopt"
filename4<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k7.seed97.qopt"
filename5<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k8.seed42.qopt"
filename6<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.top350k.autosomes.ngsAdmix29.n.k9.seed14.qopt"

filename0<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k6.seed138.qopt"
filename1<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k7.seed192.qopt"
filename2<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k8.seed2.qopt"
filename3<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k9.seed159.qopt"
filename4<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k10.seed85.qopt"
filename5<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k11.seed154.qopt"
filename6<-"annabam.minInd46.minMaf0.05.minD46.maxD2760.snp.ngsAdmix29.n.k12.seed161.qopt"

ids<-"swift.newids"
simpleids<-"swift.newids"
pop<-"swift.posTree"

#data
d0<-read.table(filename0)
d1<-read.table(filename1)
d2<-read.table(filename2)
d3<-read.table(filename3)
d4<-read.table(filename4)
d5<-read.table(filename5)
d6<-read.table(filename6)

ids<-read.table(simpleids)
names<-read.table(simpleids)
pops<-read.table(pop)
pops<-as.matrix(pops)


widthM<-2100
heightM<-2400

rownames(d0)<-ids[,1]
rownames(d1)<-ids[,1]
rownames(d2)<-ids[,1]
rownames(d3)<-ids[,1]
rownames(d4)<-ids[,1]
rownames(d5)<-ids[,1]
rownames(d6)<-ids[,1]

plotTitle0<-"k=6"
plotTitle1<-"k=7"
plotTitle2<-"k=8"
plotTitle3<-"k=9"
plotTitle4<-"k=10"
plotTitle5<-"k=11"
plotTitle6<-"k=12"

pdf("annabam.ngsadmix.pdf")
par(mfrow=c(2, 1))

d0sort<-d0[order(pops[,1]),]
d1sort<-d1[order(pops[,1]),]
d2sort<-d2[order(pops[,1]),]
d3sort<-d3[order(pops[,1]),]
d4sort<-d4[order(pops[,1]),]
d5sort<-d5[order(pops[,1]),]
d6sort<-d6[order(pops[,1]),]

barplot(t(d0sort),main=plotTitle0,beside=F,cex.names=0.5,las=2,col=cols0,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d1sort),main=plotTitle1,beside=F,cex.names=0.5,las=2,col=cols1,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d2sort),main=plotTitle2,beside=F,cex.names=0.5,las=2,col=cols2,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d3sort),main=plotTitle3,beside=F,cex.names=0.5,las=2,col=cols3,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d4sort),main=plotTitle4,beside=F,cex.names=0.5,las=2,col=cols4,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d5sort),main=plotTitle5,beside=F,cex.names=0.5,las=2,col=cols5,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d6sort),main=plotTitle6,beside=F,cex.names=0.5,las=2,col=cols6,border=NA,cex.main=1,cex.axis=0.5)

dev.off()

