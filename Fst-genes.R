setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/7-Fst/SMALL-BAMLISTS/SAME-SITES/GENES")

library(ggplot2)

f <-read.table("resultsFstLuciaPerGene5.txt", fill = TRUE)
#g <- read.table("resultsFstLuciaPerGene4.txt",fill=TRUE)
colnames(f) <- c("Pops","Region","UW.Fst","Fst")

f$UW.Fst <- NULL

## Subsetting
AC1hist <- f[f$Pops=='list-A.list-C1-hist',] 
AC2hist <- f[f$Pops=='list-A.list-C2-hist',]
ACmod <-  f[f$Pops=='list-A.list-C-mod',]
AMhistN <-  f[f$Pops=='list-A.list-M-hist-N',]
AMhistS <-  f[f$Pops=='list-A.list-M-hist-S',]
AMmod <-  f[f$Pops=='list-A.list-M-mod',]
AMmodPO <-  f[f$Pops=='list-A.list-M-mod-PO',]
AY <-  f[f$Pops=='list-A.list-Y',]
AO <-  f[f$Pops=='list-A.list-O',]

C1histC2hist <- f[f$Pops=='list-C1-hist.list-C2-hist',]
C1histCmod <-  f[f$Pops=='list-C1-hist.list-C-mod',]
C1histMhistN <-  f[f$Pops=='list-C1-hist.list-M-hist-N',]
C1histMhistS <-  f[f$Pops=='list-C1-hist.list-M-hist-S',]
C1histMmod <-  f[f$Pops=='list-C1-hist.list-M-mod',]
C1histMmodPO <-  f[f$Pops=='list-C1-hist.list-M-mod-PO',]
C1histY <-  f[f$Pops=='list-Y.list-C1-hist',]
C1histO <-  f[f$Pops=='list-O.list-C1-hist',]

C2histCmod <-  f[f$Pops=='list-C2-hist.list-C-mod',]
C2histMhistN <-  f[f$Pops=='list-C2-hist.list-M-hist-N',]
C2histMhistS <-  f[f$Pops=='list-C2-hist.list-M-hist-S',]
C2histMmod <-  f[f$Pops=='list-C2-hist.list-M-mod',]
C2histMmodPO <-  f[f$Pops=='list-C2-hist.list-M-mod-PO',]
C2histY <-  f[f$Pops=='list-Y.list-C2-hist',]
C2histO <-  f[f$Pops=='list-O.list-C2-hist',]

CmodMhistN <-  f[f$Pops=='list-C-mod.list-M-hist-N',]
CmodMhistS <-  f[f$Pops=='list-C-mod.list-M-hist-S',]
CmodMmod <-  f[f$Pops=='list-C-mod.list-M-mod',]
CmodMmodPO <-  f[f$Pops=='list-C-mod.list-M-mod-PO',]
CmodY <-  f[f$Pops=='list-Y.list-C-mod',]
CmodO <-  f[f$Pops=='list-O.list-C-mod',]

MhistNMhistS <-  f[f$Pops=='list-M-hist-N.list-M-hist-S',]
MhistNMmod <-  f[f$Pops=='list-M-hist-N.list-M-mod',]
MhistNMmodPO <-  f[f$Pops=='list-M-hist-N.list-M-mod-PO',]
MhistNY <-  f[f$Pops=='list-Y.list-M-hist-N',]
MhistNO <-  f[f$Pops=='list-O.list-M-hist-N',]

MhistSMmod <-  f[f$Pops=='list-M-hist-S.list-M-mod',]
MhistSMmodPO <-  f[f$Pops=='list-M-hist-S.list-M-mod-PO',]
MhistSY <-  f[f$Pops=='list-Y.list-M-hist-S',]
MhistSO <-  f[f$Pops=='list-O.list-M-hist-S',]

MmodMmodPO <-  f[f$Pops=='list-M-mod.list-M-mod-PO',]
MmodY <-  f[f$Pops=='list-Y.list-M-mod',]
MmodO <-  f[f$Pops=='list-O.list-M-mod',]

MmodPOY <-  f[f$Pops=='list-Y.list-M-mod-PO',]
MmodPOO <-  f[f$Pops=='list-O.list-M-mod-PO',]

YO <-  f[f$Pops=='list-O.list-Y',]


# HISTOGRAMS
pdf("Fst-histograms-breaks100.pdf")
hist(AC1hist$Fst, breaks=100)
hist(AC2hist$Fst,breaks=100)
hist(ACmod$Fst,breaks=100)
hist(AMhistN$Fst,breaks=100)
hist(AMhistS$Fst,breaks=100)
hist(AMmod$Fst,breaks=100)
hist(AMmodPO$Fst,breaks=100)
hist(AY$Fst,breaks=100)
hist(AO$Fst,breaks=100)

hist(C1histC2hist$Fst,breaks=100)
hist(C1histCmod$Fst,breaks=100)
hist(C1histMhistN$Fst,breaks=100)
hist(C1histMhistS$Fst,breaks=100)
hist(C1histMmod$Fst,breaks=100)
hist(C1histMmodPO$Fst,breaks=100)
hist(C1histY$Fst,breaks=100)
hist(C1histO$Fst,breaks=100)

hist(C2histCmod$Fst,breaks=50)
hist(C2histMhistN$Fst,breaks=100)
hist(C2histMhistS$Fst,breaks=100)
hist(C2histMmod$Fst,breaks=100)
hist(C2histMmodPO$Fst,breaks=100)
hist(C2histY$Fst,breaks=100)
hist(C2histO$Fst,breaks=100)

hist(CmodMhistN$Fst,breaks=100)
hist(CmodMhistS$Fst,breaks=100)
hist(CmodMmod$Fst,breaks=100)
hist(CmodMmodPO$Fst,breaks=100)
hist(CmodY$Fst,breaks=100)
hist(CmodO$Fst,breaks=100)

hist(MhistNMhistS$Fst,breaks=100)
hist(MhistNMmod$Fst,breaks=100)
hist(MhistNMmodPO$Fst,breaks=50)
hist(MhistNY$Fst,breaks=100)
hist(MhistNO$Fst,breaks=100)

hist(MhistSMmod$Fst,breaks=100)
hist(MhistSMmodPO$Fst,breaks=50)
hist(MhistSY$Fst,breaks=100)
hist(MhistSO$Fst,breaks=100)

hist(MmodMmodPO$Fst,breaks=100)
hist(MmodY$Fst,breaks=100)
hist(MmodO$Fst,breaks=100)

hist(MmodY$Fst,breaks=100)
hist(MmodO$Fst,breaks=100)

hist(MhistNO$Fst,breaks=100)

dev.off()

# C2hist-Cmod
ggplot(data=C2histCmod, aes(C2histCmod$Fst),na.rm=TRUE,xlab = "Fst") + 
     geom_histogram(col="blue",  fill="yellow", alpha = .3)+ labs(title="Gene Regions - C2 historical - C modern") +
     labs(x="Fst", y="Count")

# MmodPO-MhistN
ggplot(data=MhistNMmodPO, aes(Fst),na.rm=TRUE,xlab = "Fst") + 
     geom_histogram(col="black",  fill="darkorange", alpha = .3)+ 
     labs(title="Gene Regions - M historical North - M modern (Poland)") +
     labs(x="Fst", y="Count")

# Mmod-MhistS
ggplot(data=MhistSMmod, aes(Fst),na.rm=TRUE,xlab = "Fst") + 
     geom_histogram(col="black",  fill="orange", alpha = .3)+ 
     labs(title="Gene Regions - M historical South - M modern (Spain)") +
     labs(x="Fst", y="Count")


# Top 5% genes, and see if they are the same in the comparisons between 
#C2hist-Cmod
#MmodPO-MhistN
#Mmod-MhistS

quantile(f$Fst,0.99,na.rm=TRUE)
quantile(f$Fst,0.5,na.rm=TRUE)

Top.C2histCmod <- C2histCmod[C2histCmod$Fst > quantile(C2histCmod$Fst, 0.95, na.rm=TRUE), ]
Top.MhistNMmodPO <- MhistNMmodPO[MhistNMmodPO$Fst > quantile(MhistNMmodPO$Fst, 0.95, na.rm=TRUE), ]
Top.MhistSMmod <- MhistSMmod[MhistSMmod$Fst > quantile(MhistSMmod$Fst, 0.95, na.rm=TRUE), ]

#install.packages("dplyr")
library(dplyr)


interCMN <-intersect(Top.C2histCmod$Region,Top.MhistNMmodPO$Region)
interCMN

interCMS <- intersect(Top.C2histCmod$Region,Top.MhistSMmod$Region)
interCMS

interM <- intersect(Top.MhistSMmod$Region,Top.MhistNMmodPO$Region)
interM


interCM <- intersect(interCMN,interCMS)

inter_3pairwise5 <- intersect(interCM,interM)
inter_3pairwise5

write.table(inter_3pairwise5,"inter_3pairwise5")


# Top 1% genes, and see if they are the same in the comparisons between 

Top1.C2histCmod <- C2histCmod[C2histCmod$Fst > quantile(C2histCmod$Fst, 0.99, na.rm=TRUE), ]
Top1.MhistNMmodPO <- MhistNMmodPO[MhistNMmodPO$Fst > quantile(MhistNMmodPO$Fst, 0.99, na.rm=TRUE), ]
Top1.MhistSMmod <- MhistSMmod[MhistSMmod$Fst > quantile(MhistSMmod$Fst, 0.99, na.rm=TRUE), ]


interCMN1 <-intersect(Top1.C2histCmod$Region,Top1.MhistNMmodPO$Region)
interCMN1

interCMS1 <- intersect(Top1.C2histCmod$Region,Top1.MhistSMmod$Region)
interCMS1

interM1 <- intersect(Top1.MhistSMmod$Region,Top1.MhistNMmodPO$Region)
interM1


interCM1 <- intersect(interCMN1,interCMS1)

inter_3pairwise1 <- intersect(interCM1,interM1)
inter_3pairwise1

write.table(inter_3pairwise1,"inter_3pairwise1")

# Top 2% genes, and see if they are the same in the comparisons between 

Top2.C2histCmod <- C2histCmod[C2histCmod$Fst > quantile(C2histCmod$Fst, 0.98, na.rm=TRUE), ]
Top2.MhistNMmodPO <- MhistNMmodPO[MhistNMmodPO$Fst > quantile(MhistNMmodPO$Fst, 0.98, na.rm=TRUE), ]
Top2.MhistSMmod <- MhistSMmod[MhistSMmod$Fst > quantile(MhistSMmod$Fst, 0.98, na.rm=TRUE), ]


interCMN2 <-intersect(Top2.C2histCmod$Region,Top2.MhistNMmodPO$Region)
interCMN2

interCMS2 <- intersect(Top2.C2histCmod$Region,Top2.MhistSMmod$Region)
interCMS2

interM2 <- intersect(Top2.MhistSMmod$Region,Top2.MhistNMmodPO$Region)
interM2


interCM2 <- intersect(interCMN2,interCMS2)

inter_3pairwise2 <- intersect(interCM2,interM2)
inter_3pairwise2

write.table(inter_3pairwise2,"inter_3pairwise2")
