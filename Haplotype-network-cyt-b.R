source("C:/Users/Lucia/Downloads/tempnet.r.txt")

install.packages("ape")
install.packages("pegas")

library(ape)
library(pegas)


setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/3-MITOCHONDRIA-haplotype-networks/cytochromeB/mac5_FASTAs")


########## MITOCHONDRIAL GENE FOR CYTOCHROME B mac=5
TempNet("hap-mito-cytb.dip.mac5-wo-missinginfo-layers",layernm=c("1917-70s","80s-90s","2010s"))

TempNet("hap-mito-cytb.dip-layers-lineages.mac5-wo-missinginfo-layers",
        layernm=c("A","Y","O","C","M"))

TempNet("hap-mito-cytb.dip.mac5-one-layer",hapid=T,layernm=c("Cytochrome B"),color="azure2")

TempNet("hap-mito-cytb.dip.mac5-hist-mod-layers.txt",hapid=T,layernm=c("Historical","Modern"))

# mac=4
setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/3-MITOCHONDRIA/cytochromeB/mac4_FASTAs")
setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/3-MITOCHONDRIA-haplotype-networks/cytochromeB/mac4_FASTAs")
TempNet("hap-mito-cytb.dip.mac4-wo-miss.col2rows - copia.fasta",
        layernm=c("A","Y","O","C","M"))


#############
#### WHOLE MITOCHONDRIA - 43 polymorphic sites x 3 = 139
#############
## dip, mac=2, noNs, subset Samples

TempNet("hap-mito.dip.mac5.subsetSamples.noN.1.col2rows-layers.fasta")
TempNet("hap-mito.dip.mac5.subsetSamples.noN.2.col2rows-layers.fasta")
TempNet("hap-mito.dip.mac5.subsetSamples.noN.3.col2rows-layers.fasta")

TempNet("hap-mito.dip.mac5.subsetSamples.noN.nogaps.col2rows-M-lineage")