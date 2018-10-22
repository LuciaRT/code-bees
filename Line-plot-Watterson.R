setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/6-PI-TAJIMA")

library(ggplot2)
library('reshape2')

# Read tables 

Y <- read.table("bamlist-Y-watterson-tajima-nsites")
M <- read.table("bamlist-M-watterson-tajima-nsites")
C <- read.table("bamlist-C-watterson-tajima-nsites")
A <- read.table("bamlist-A-watterson-tajima-nsites")
O <- read.table("bamlist-O-watterson-tajima-nsites")

# Remove last row, that corresponds to the mitochondria
Y <- Y[-nrow(Y),]
M <- M[-nrow(M),]
C <- C[-nrow(C),]
A <- A[-nrow(A),]
O <- O[-nrow(O),]

### Diversity - Watterson's theta
Y
typeof(Y)
W.Y <- Y[,4]/Y[,6]
W.Y
W.M <- M[,4]/M[,6]
W.C <- C[,4]/C[,6]
W.A <- A[,4]/A[,6]
W.O <- O[,4]/O[,6]

Y <- cbind(Y, W.Y)
M <- cbind(M, W.M)
C <- cbind(C, W.C)
A <- cbind(A, W.A)
O <- cbind(O, W.O)

names(Y) <- c("Region.Info", "Chromosome","Window.Center","Watterson","Tajima","nSites","Watt/nSites")
names(M) <- c("Region.Info", "Chromosome","Window.Center","Watterson","Tajima","nSites","Watt/nSites")
names(C) <- c("Region.Info", "Chromosome","Window.Center","Watterson","Tajima","nSites","Watt/nSites")
names(A) <- c("Region.Info", "Chromosome","Window.Center","Watterson","Tajima","nSites","Watt/nSites")
names(O) <- c("Region.Info", "Chromosome","Window.Center","Watterson","Tajima","nSites","Watt/nSites")


watterson<-data.frame(A[,2],A[,7],C[,7],M[,7],Y[,7],O[,7], row.names = NULL, check.rows = FALSE,
                      check.names = TRUE, fix.empty.names = TRUE,
                      stringsAsFactors = default.stringsAsFactors())

colnames(watterson) <- c("Chr", "A","C","M","Y","O")
dim(watterson)

melted = melt(watterson, id.vars="Chr")
melted

q <- ggplot(data=melted, aes(x=Chr, y=value, group=variable,
                                 color=variable)) + geom_line(size = 1)



p <- q+scale_x_discrete(name ="Chromosome",labels = abbreviate)

r <- p+    ggtitle("Watterson's theta / nSites")
#     theme(plot.title = element_text( size=18, hjust=0))
r

s <- r+ theme(axis.text.x = element_text(size=11, angle=90),
              axis.text.y = element_text(size=11))
s     

black<-"#000000"
orange<- "#E69F00"
soft_blue<-"#56B4E9"
lime_green<-"#009E73"
yellow<-"#F0E442"
dark_blue<-"#0072B2"
strong_orange<-"#D55E00"
purple<-"#CC79A7"
grey<-"#999999"     


t<- s+scale_colour_manual("Lineages",values = c(purple, yellow, black,lime_green,soft_blue))
t
