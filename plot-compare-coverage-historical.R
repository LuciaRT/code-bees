setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/1-COVERAGE")

#install.packages("ggplot2")
library("ggplot2")

#install.packages("ggrepel") 
library("ggrepel")

overall <- read.table("bamlist-historical.depthSample.averageDepth.max100.min0", header=TRUE)
regions <- read.table("bamlist-historical.probes_bees_mapq25.rf.depthSample.averageDepth.max100.min0",header=TRUE)

overall_coverage <-as.matrix(overall[,2])
overall_coverage <- as.numeric(overall_coverage)

coverage_within_regions <- as.matrix(regions[,2])
coverage_within_regions <- as.numeric(coverage_within_regions)

# Labels for dots
labels <- overall[,1]
labels <- as.character(labels)

# Plot
df <- data.frame(overall_coverage,coverage_within_regions)

ggplot(df,mapping=aes(overall_coverage,coverage_within_regions))+
     geom_point(color='red')+
     geom_text_repel(aes(label=labels))+
     #theme_classic(base_size=16) +
     ggtitle("Coverage in Historical Samples") +
     labs(x="Overall coverage",y="Coverage within captured regions") 
     #theme(plot.title = element_text(family = "Trebuchet MS", color="#666666", face="bold", size=22, hjust=0)) +
     #theme(axis.title = element_text(family = "Trebuchet MS", color="#666666", face="bold", size=18)) 

#plot(overall_coverage,coverage_within_regions, main="Coverage in Historical samples") #, xlab="Overall Coverage", ylab="Coverage within capture regions",pch=20)
#text(overall_coverage,coverage_within_regions,labels=labels, col="black",cex=0.53, pos=1)







# Title
title("Average coverage in Historical Samples",cex.main=0.9)

# Checks

dim(overall)
dim(regions)

typeof(overall)


