source("C:/Users/Lucia/Downloads/tempnet.r.txt")

install.packages("ape")
install.packages("pegas")

library(ape)
library(pegas)

setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/3-MITOCHONDRIA-haplotype-networks/cox1-cox2")

########## MITOCHONDRIAL GENES COX1-COX2
TempNet("hap-mito-cox1-cox2.dip.mac4-wo-miss.col2rows.fasta",hapid=T)
TempNet("hap-mito-cox1-cox2.dip.mac5-wo-miss.col2rows.fasta",hapid=T,layernm = c("COI-COII"),color="ivory3")

TempNet("hap-mito-cox1-cox2.dip.mac5-wo-miss-hist-mod.fasta",hapid=T,
        layernm = c("Historical","Modern"),color="ivory3")

