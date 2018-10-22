setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/6-PI-TAJIMA/NEW-INSTRUCTIONS")

library(ggplot2)

df.O <- read.table("bamlist-O-watterson-pi-tajima-wo-mito.txt")
df.Y <- read.table("bamlist-Y-watterson-pi-tajima-wo-mito.txt")
df.A <- read.table("bamlist-A-watterson-pi-tajima-wo-mito.txt")
df.C.hist<- read.table("bamlist-C-hist-watterson-pi-tajima-wo-mito.txt")
df.C.mod<- read.table("bamlist-C-mod-watterson-pi-tajima-wo-mito.txt")
df.M.hist<- read.table("bamlist-M-hist-watterson-pi-tajima-wo-mito.txt")
df.M.mod<- read.table("bamlist-M-mod-watterson-pi-tajima-wo-mito.txt")


# Watterson and Pairwise thetas for the Populations
W.O <- df.O[,4]/df.O[,7]
P.O <- df.O[,5]/df.O[,7]

W.Y <- df.Y[,4]/df.Y[,7]
P.Y <- df.Y[,5]/df.Y[,7]

W.A <- df.A[,4]/df.A[,7]
P.A <- df.A[,5]/df.A[,7]

W.C.hist <- df.C.hist[,4]/df.C.hist[,7]
P.C.hist <- df.C.hist[,5]/df.C.hist[,7]

W.C.mod <- df.C.mod[,4]/df.C.mod[,7]
P.C.mod <- df.C.mod[,5]/df.C.mod[,7]

W.M.hist <- df.M.hist[,4]/df.M.hist[,7]
P.M.hist <- df.M.hist[,5]/df.M.hist[,7]

W.M.mod <- df.M.mod[,4]/df.M.mod[,7]
P.M.mod <- df.M.mod[,5]/df.M.mod[,7]



# Mean accross all chromosomes
Wat.O <-mean(W.O)
Pair.O <-mean(P.O)

Wat.Y <-mean(W.Y)
Pair.Y<-mean(P.Y)

Wat.A <- mean(W.A)
Pair.A <-mean(P.A)

Wat.C.hist <-mean(W.C.hist)
Pair.C.hist<-mean(P.C.hist)

Wat.C.mod <-mean(W.C.mod)
Pair.C.mod<-mean(P.C.mod)

Wat.M.hist <-mean(W.M.hist)
Pair.M.hist<-mean(P.M.hist)

Wat.M.mod <-mean(W.M.mod)
Pair.M.mod<-mean(P.M.mod)


# Create a vector for theta Watterson and another vector 
# for theta Pairwise (population order O,Y,A...)

Legend<- c("O (n=3)","Y (n=8)","A (n=9)","C-hist (n=12)","C-mod (n=8)","M-hist (n=26)","M-mod (n=9)")
Lineage <- c("O","Y","A","C-hist","C-mod","M-hist","M-mod")
Watterson<- c(Wat.O, Wat.Y, Wat.A, Wat.C.hist, Wat.C.mod, Wat.M.hist, Wat.M.mod)
Pairwise <- c(Pair.O, Pair.Y, Pair.A, Pair.C.hist, Pair.C.mod, Pair.M.hist, Pair.M.mod)

df <- data.frame(Legend,Lineage,Watterson, Pairwise)


# PLOT USING GGPLOT2

black<-"#000000"
soft_blue<-"#56B4E9"
lime_green<-"#009E73"
yellow<-"#F0E442"
dark_blue<-"#0072B2"
purple<-"#CC79A7"
grey<-"#999999"
strong_orange<-"#D55E00"
orange<- "#E69F00"


#q <- qplot(Watterson, Pairwise, data=df, label=Lineage, colour=Lineage.n)
#q

#qplot(Watterson, Pairwise, data=df, colour=c(grey,black,soft_blue,lime_green,yellow,dark_blue,purple),label=Lineage)

j <- q+geom_text(vjust = "inward", hjust = "inward",show_guide=FALSE)
j
j +xlim(0.001,0.008) +ylim(0.001,0.008)+ scale_colour_gradient(low="black", high="pink")
j

# 

g <- ggplot(df, aes(Watterson, Pairwise, label = Lineage, colour=Legend))+geom_point()+
     xlim(0.001,0.008) +ylim(0.001,0.008) + geom_text(size=5,colour=black,vjust="inward",hjust="inward",show.legend=FALSE)
g
