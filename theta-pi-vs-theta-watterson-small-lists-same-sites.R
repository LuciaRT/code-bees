
setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/6-PI-TAJIMA/NEW-INSTRUCTIONS/SMALL_BAMLISTS-SAME_SITES")

library(ggplot2)

# 10 populations each with 4 samples or 3 in the case of the O lineage

df.O <- read.table("list-O.thetas.gz.pestPG")
df.Y <- read.table("list-Y.thetas.gz.pestPG")
df.A <- read.table("list-A.thetas.gz.pestPG")

df.C1.hist<- read.table("list-C1-hist.thetas.gz.pestPG")
df.C2.hist<- read.table("list-C2-hist.thetas.gz.pestPG")
df.C.mod<- read.table("list-C-mod.thetas.gz.pestPG")
df.M.hist.N<- read.table("list-M-hist-N.thetas.gz.pestPG")
df.M.hist.S<- read.table("list-M-hist-S.thetas.gz.pestPG")
df.M.mod.ES<- read.table("list-M-mod.thetas.gz.pestPG")
df.M.mod.PO<- read.table("list-M-mod-PO.thetas.gz.pestPG")


# Watterson and Pairwise thetas for the Populations
W.O <- df.O[,4]/df.O[,14]
P.O <- df.O[,5]/df.O[,14]

W.Y <- df.Y[,4]/df.Y[,14]
P.Y <- df.Y[,5]/df.Y[,14]

W.A <- df.A[,4]/df.A[,14]
P.A <- df.A[,5]/df.A[,14]


## Lineage C
W.C1.hist <- df.C1.hist[,4]/df.C1.hist[,14]
P.C1.hist <- df.C1.hist[,5]/df.C1.hist[,14]

W.C2.hist <- df.C2.hist[,4]/df.C2.hist[,14]
P.C2.hist <- df.C2.hist[,5]/df.C2.hist[,14]

W.C.mod <- df.C.mod[,4]/df.C.mod[,14]
P.C.mod <- df.C.mod[,5]/df.C.mod[,14]


## Lineage M
W.M.hist.N <- df.M.hist.N[,4]/df.M.hist.N[,14]
P.M.hist.N <- df.M.hist.N[,5]/df.M.hist.N[,14]

W.M.hist.S <- df.M.hist.S[,4]/df.M.hist.S[,14]
P.M.hist.S <- df.M.hist.S[,5]/df.M.hist.S[,14]

W.M.mod.ES <- df.M.mod.ES[,4]/df.M.mod.ES[,14]
P.M.mod.ES <- df.M.mod.ES[,5]/df.M.mod.ES[,14]

W.M.mod.PO <- df.M.mod.PO[,4]/df.M.mod.PO[,14]
P.M.mod.PO <- df.M.mod.PO[,5]/df.M.mod.PO[,14]

# Mean accross all chromosomes
Wat.O <-mean(W.O)
Pair.O <-mean(P.O)

Wat.Y <-mean(W.Y)
Pair.Y<-mean(P.Y)

Wat.A <- mean(W.A)
Pair.A <-mean(P.A)

Wat.C1.hist <-mean(W.C1.hist)
Pair.C1.hist<-mean(P.C1.hist)

Wat.C2.hist <-mean(W.C2.hist)
Pair.C2.hist<-mean(P.C2.hist)

Wat.C.mod <-mean(W.C.mod)
Pair.C.mod<-mean(P.C.mod)

Wat.M.hist.N <-mean(W.M.hist.N)
Pair.M.hist.N<-mean(P.M.hist.N)

Wat.M.hist.S <-mean(W.M.hist.S)
Pair.M.hist.S <-mean(P.M.hist.S)

Wat.M.mod.ES <-mean(W.M.mod.ES)
Pair.M.mod.ES<-mean(P.M.mod.ES)

Wat.M.mod.PO <-mean(W.M.mod.PO)
Pair.M.mod.PO<-mean(P.M.mod.PO)


# Create vectors for Populations names, theta Watterson theta Pairwise (population order O,Y,A...)

Legend<- c("O (n=3)","Y (n=4)","A (n=4)","C1-hist (n=4)","C2-hist (n=4)","C-mod (n=4)",
              "M-hist.N (n=4)","M-hist.S (n=4)","M-mod.ES (n=4)","M-mod.PO (n=4)")
Lineage <- c("O","Y","A","C1-hist","C2-hist","C-mod","M-hist.N","M_hist.S","M-mod.ES","M-mod.PO")
Watterson<- c(Wat.O, Wat.Y, Wat.A, Wat.C1.hist,Wat.C2.hist, Wat.C.mod, Wat.M.hist.N,Wat.M.hist.S, Wat.M.mod.ES, Wat.M.mod.PO)
Pairwise <- c(Pair.O, Pair.Y, Pair.A, Pair.C1.hist, Pair.C2.hist, Pair.C.mod, Pair.M.hist.N, Pair.M.hist.S,Pair.M.mod.ES,Pair.M.mod.PO)

df <- data.frame(Legend,Lineage,Watterson, Pairwise)


# PLOT
install.packages("ggrepel") 
library("ggrepel")

black<-"#000000"
# q <- qplot(Watterson,Pairwise,data=df,colour=Legend,label=Lineage)+xlim(0.0005,0.0065) +ylim(0.001,0.0065)

pdf("small-lists-wat-vs-pi.pdf")
ggplot(df, aes(Watterson, Pairwise, colour=Legend))+
     geom_point()+
     xlim(0.001,0.0063) +ylim(0.001,0.0063) + 
     geom_text_repel(aes(label=Lineage),size=5,colour=black,show.legend=FALSE)
dev.off()
g

j <- q+geom_text(colour=black,position_dodge())
j

i <- q+geom_text(size=4,position='jitter',show.legend=FALSE)
i

q+geom_text(hjust=0.15, vjust=0.1)

q+geom_text(angle=45)

q+geom_text(hjust = 1)






