setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/2-ADMIXTURE/1.ADMIX_modified_BAMs/2.Dont-discard/Exact-Tree-Order")

# Colorblind palette with black:
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#lin A pink
#lin O blue
#lin M black
#lin Y green-blue (maybe lime-green)
#lin C yellow

black<-"#000000"
orange<- "#E69F00"
soft_blue<-"#56B4E9"
lime_green<-"#009E73"
yellow<-"#F0E442"
dark_blue<-"#0072B2"
strong_orange<-"#D55E00"
purple<-"#CC79A7"
grey<-"#999999"     


cbbPalette_K3 <- c(yellow, lime_green,black)

cbbPalette_K4 <- c(lime_green,purple,yellow,black )

cbbPalette_K5<-c(lime_green,purple,soft_blue,black,yellow)

cbbPalette_K6 <- c(yellow,lime_green, dark_blue,soft_blue,black, purple)

cbbPalette_K7 <- c(strong_orange,dark_blue,yellow,purple,black,soft_blue,lime_green)

cbbPalette_K8<-c(purple,lime_green,dark_blue,orange,soft_blue,yellow,strong_orange,black)

cbbPalette_K9 <- c(orange, dark_blue, yellow, strong_orange, purple, grey, lime_green,black, soft_blue)

widthM<-2100
heightM<-2400

#filename0<-"rescaled.ngsAdmix.n70.k2.seed165.qopt"
filename1<-"out.ngsAdmix.n70.k3.seed370.qopt"
filename2<-"rescaled.ngsAdmix.n70.k4.seed244.qopt"
filename3<-"out-2000.ngsAdmix.n70.k5.seed1605.qopt"

filename4<-"out.ngsAdmix.n70.k6.seed319.qopt"
filename5<-"rescaled.ngsAdmix.n70.k7.seed220.qopt"
filename6<-"out-1000.ngsAdmix.n70.k8.seed361.qopt"

filename7<-"out-1000.ngsAdmix.n70.k9.seed397.qopt"

simpleids<-"short_ids_two-asterisks.txt"
pop<-"pos_rotated_tree_numbers_exact.txt"

#data
#d0<-read.table(filename0)
d1<-read.table(filename1)
d2<-read.table(filename2)
d3<-read.table(filename3)
d4<-read.table(filename4)
d5<-read.table(filename5)
d6<-read.table(filename6)
d7<-read.table(filename7)

ids<-read.table(simpleids)
names<-read.table(simpleids)
pops<-read.table(pop)
pops<-as.matrix(pops)

#rownames(d0)<-ids[,1]
rownames(d1)<-ids[,1]
rownames(d2)<-ids[,1]
rownames(d3)<-ids[,1]
rownames(d4)<-ids[,1]
rownames(d5)<-ids[,1]
rownames(d6)<-ids[,1]
rownames(d7)<-ids[,1]

#plotTitle0<-"k=2"
plotTitle1<-"k=3"
plotTitle2<-"k=4"
plotTitle3<-"k=5"

plotTitle4<-"k=6"
plotTitle5<-"k=7"
plotTitle6<-"k=8"

plotTitle7<-"k=9"


#d0sort<-d0[order(pops[,1]),]
d1sort<-d1[order(pops[,1]),]
d2sort<-d2[order(pops[,1]),]
d3sort<-d3[order(pops[,1]),]

d4sort<-d4[order(pops[,1]),]
d5sort<-d5[order(pops[,1]),]
d6sort<-d6[order(pops[,1]),]

d7sort<-d7[order(pops[,1]),]


# Bar plots

pdf("ROTATEDk345.pdf")
par(mfrow=c(3, 1))
barplot(t(d1sort),main=plotTitle1,beside=F,cex.names=0.5,las=2,col=cbbPalette_K3,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d2sort),main=plotTitle2,beside=F,cex.names=0.5,las=2,col=cbbPalette_K4,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d3sort),main=plotTitle3,beside=F,cex.names=0.5,las=2,col=cbbPalette_K5,border=NA,cex.main=1,cex.axis=0.5)
dev.off()

pdf("ROTATEDk678.pdf")
par(mfrow=c(3,1))
barplot(t(d4sort),main=plotTitle4,beside=F,cex.names=0.5,las=2,col=cbbPalette_K6,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d5sort),main=plotTitle5,beside=F,cex.names=0.5,las=2,col=cbbPalette_K7,border=NA,cex.main=1,cex.axis=0.5)
barplot(t(d6sort),main=plotTitle6,beside=F,cex.names=0.5,las=2,col=cbbPalette_K8,border=NA,cex.main=1,cex.axis=0.5)
dev.off()


pdf("ROTATEDk9.pdf")
par(mfrow=c(3,1))
barplot(t(d7sort),main=plotTitle7,beside=F,cex.names=0.5,las=2,col=cbbPalette_K9,border=NA,cex.main=1,cex.axis=0.5)
dev.off()


######### FOR THE PHYLOGENETIC TREE
pdf("ROTATED-FOR-TREE-K8.pdf")
par(mfrow=c(3,1))
barplot(t(d6sort),main=plotTitle6,beside=F,cex.names=0.5,las=2,col=cbbPalette_K8,border=NA,cex.main=1,cex.axis=0.5)
dev.off()

