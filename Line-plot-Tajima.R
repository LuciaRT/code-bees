
setwd("~/MSc_BIOINFORMATICS/1.BEES_PROJECT/6-PI-TAJIMA")


####### TAJIMA: line plot,  where the x-axis are the chromosomes. One line per dataset.

Chr <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)#,17)
Y <- c(-0.252647,-0.126862,-0.168477,-0.319277,-0.207809,-0.194663,-0.163218,-0.226628,
           -0.226562,-0.301499,-0.223318,-0.239800,-0.139458,-0.174236,-0.211642,-0.266769) #,0.939611)

M <- c(-2.209884,-2.215671,-2.135147,-2.145419,-2.233665,-2.246222,-2.157084,-2.181869,
           -2.189310,-2.198362,-2.192430,-2.191455,-2.083082,-2.113496,-2.283454,-2.104144) #,1.129138)

C <- c(-1.788952,-1.790223,-1.670549,-1.747844,-1.776493,-1.823381,-1.804611,-1.714250,
           -1.682436,-1.682683,-1.733536,-1.731857,-1.667070,-1.649125,-1.814256,-1.652404) #,0.182823)

A <- c(-1.439082,-1.330257,-1.402511,-1.476141,-1.404457,-1.326833,-1.307013,-1.416051,
           -1.458912,-1.385035,-1.409894,-1.422389,-1.374296,-1.376835,-1.359085,-1.398579) #, 0.225270)

O <- c(-0.774637,-0.773166,-0.770584,-0.762420,-0.769441,-0.770336,-0.770173,-0.774871,
           -0.765475,-0.769749,-0.769898,-0.771605,-0.763272,-0.769066,-0.778159,-0.762076)#,  0.178530)



tajima<-data.frame(Chr,A,C,M,Y,O, row.names = NULL, check.rows = FALSE,
           check.names = TRUE, fix.empty.names = TRUE,
           stringsAsFactors = default.stringsAsFactors())

#install.packages("ggplot2")
library(ggplot2)
library('reshape2')

melted = melt(tajima, id.vars="Chr")

melted

black<-"#000000"
soft_blue<-"#56B4E9"
lime_green<-"#009E73"
yellow<-"#F0E442"
dark_blue<-"#0072B2"
purple<-"#CC79A7"

p <- ggplot(data=melted, aes(x=Chr, y=value, group=variable,
                        color=variable)) + geom_line(size =1)

p
p+scale_x_discrete(name ="Chromosome", limit=c("1","2","3","4","5","6","7","8","9",
                              "10","11","12","13","14","15","16"))+
     ggtitle("Tajima")+ 
     theme(plot.title = element_text( size=18, hjust=0))+
     scale_colour_manual("Lineages",values = c(purple, yellow, black,lime_green,soft_blue))
     scale_colour_manual("Lineages",values = c(purple, yellow, black,lime_green,soft_blue))
     

