setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_AT1954")

#install.packages("ggplot2")
#install.packages("grid")
#install.packages("Rmisc")
install.packages("reshape2") 

library("ggplot2")
library("grid")
library("Rmisc")
library("reshape2")

CtoT <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA <- read.table("3pGtoA_freq.txt", header=TRUE)
p1 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     #geom_text_repel(aes(label=labels))+
     #theme_classic(base_size=16) +
     #theme_gray(base_size=16)
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q1 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     #geom_text_repel(aes(label=labels))+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_AT1971")
CtoT_AT1971 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_AT1971 <- read.table("3pGtoA_freq.txt", header=TRUE)
p2 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q2 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_BG1961a")
CtoT_BG1961a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_BG1961a <- read.table("3pGtoA_freq.txt", header=TRUE)
p3 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q3 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_CH1984")
CtoT_CH1984 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_CH1984 <- read.table("3pGtoA_freq.txt", header=TRUE)
p4 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q4 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_CH1986a")
CtoT_CH1986a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_CH1986a <- read.table("3pGtoA_freq.txt", header=TRUE)
p5 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q5 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_CH1986b")
CtoT_CH1986b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_CH1986b <- read.table("3pGtoA_freq.txt", header=TRUE)
p6 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q6 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_DK2013")
CtoT_DK2013 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_DK2013 <- read.table("3pGtoA_freq.txt", header=TRUE)
p7 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q7 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_EN1935")
CtoT_EN1935 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_EN1935 <- read.table("3pGtoA_freq.txt", header=TRUE)
p8 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q8 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_EN1946")
CtoT_EN1946 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_EN1946 <- read.table("3pGtoA_freq.txt", header=TRUE)
p9 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q9 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_EN1961b")
CtoT_EN1961b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_EN1961b <- read.table("3pGtoA_freq.txt", header=TRUE)
p10 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q10 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_ES1960a")
CtoT_ES1960a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_ES1960a <- read.table("3pGtoA_freq.txt", header=TRUE)
p11 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q11 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_ES1973b")
CtoT_ES1973b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_ES1973b <- read.table("3pGtoA_freq.txt", header=TRUE)
p12 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q12 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_ES1973c")
CtoT_ES1973c <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_ES1973c <- read.table("3pGtoA_freq.txt", header=TRUE)
p13 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q13 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_ES1973d")
CtoT_ES1973d <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_ES1973d <- read.table("3pGtoA_freq.txt", header=TRUE)
p14 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q14 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_ES1973e")
CtoT_ES1973e <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_ES1973e <- read.table("3pGtoA_freq.txt", header=TRUE)
p15 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q15 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_FR1955")
CtoT_FR1955 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_FR1955 <- read.table("3pGtoA_freq.txt", header=TRUE)
p16 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q16 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_FR1984b")
CtoT_FR1984b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_FR1984b <- read.table("3pGtoA_freq.txt", header=TRUE)
p17 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q17 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_HR1974")
CtoT_HR1974 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_HR1974 <- read.table("3pGtoA_freq.txt", header=TRUE)
p18 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q18 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_IT1878a")
CtoT_IT1878a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_IT1878a <- read.table("3pGtoA_freq.txt", header=TRUE)
p19 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+
     theme_gray()+
     ggtitle("5p C to T") +
     labs(x="Position",y="Frequency") 
q19 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+
     theme_classic(base_size=16) +
     ggtitle("3p G to A") +
     labs(x="Position",y="Frequency") 

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_IT1964")
CtoT_IT1964 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_IT1964 <- read.table("3pGtoA_freq.txt", header=TRUE)
p20 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q20 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")
     
setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_IT1976a")
CtoT_IT1976a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_IT1976a <- read.table("3pGtoA_freq.txt", header=TRUE)
p21<- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q21 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_IT1976b")
CtoT_IT1976b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_IT1976b <- read.table("3pGtoA_freq.txt", header=TRUE)
p22 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q22 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_JO1978b")
CtoT_JO1978b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_JO1978b <- read.table("3pGtoA_freq.txt", header=TRUE)
p23 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q23 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_JO1978c")
CtoT_JO1978c <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_JO1978c <- read.table("3pGtoA_freq.txt", header=TRUE)
p24 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q24 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_JO1978j")
CtoT_JO1978j <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_JO1978j <- read.table("3pGtoA_freq.txt", header=TRUE)
p25 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q25 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_LBxxxxb")
CtoT_LBxxxxb <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_LBxxxxb <- read.table("3pGtoA_freq.txt", header=TRUE)
p26 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q26 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_LU1937a")
CtoT_LU1937a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_LU1937a <- read.table("3pGtoA_freq.txt", header=TRUE)
p27 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q27 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_LU1937a")
CtoT_LU1937a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_LU1937a <- read.table("3pGtoA_freq.txt", header=TRUE)
p28 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q28 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_MT1980a")
CtoT_MT1980a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_MT1980a <- read.table("3pGtoA_freq.txt", header=TRUE)
p29 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q29 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_MT1980c")
CtoT_MT1980c <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_MT1980c <- read.table("3pGtoA_freq.txt", header=TRUE)
p30 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q30 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_MT1980d")
CtoT_MT1980d <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_MT1980d <- read.table("3pGtoA_freq.txt", header=TRUE)
p31 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q31 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_MT1981")
CtoT_MT1981 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_MT1981 <- read.table("3pGtoA_freq.txt", header=TRUE)
p32 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q32 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_NL1957")
CtoT_NL1957 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_NL1957 <- read.table("3pGtoA_freq.txt", header=TRUE)
p33 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q33 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_NL1968")
CtoT_NL1968 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_NL1968 <- read.table("3pGtoA_freq.txt", header=TRUE)
p34 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q34 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_NL1993b")
CtoT_NL1993b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_NL1993b <- read.table("3pGtoA_freq.txt", header=TRUE)
p35 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q35 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_NL1998")
CtoT_NL1998 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_NL1998 <- read.table("3pGtoA_freq.txt", header=TRUE)
p36 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q36 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_NL1999")
CtoT_NL1999 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_NL1999 <- read.table("3pGtoA_freq.txt", header=TRUE)
p37 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q37 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_PT1967b")
CtoT_PT1967b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_PT1967b <- read.table("3pGtoA_freq.txt", header=TRUE)
p38 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q38 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_PT1984")
CtoT_PT1984 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_PT1984 <- read.table("3pGtoA_freq.txt", header=TRUE)
p39 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q39 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_PT1985")
CtoT_PT1985 <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_PT1985 <- read.table("3pGtoA_freq.txt", header=TRUE)
p40 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q40 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SC1917a")
CtoT_SC1917a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SC1917a <- read.table("3pGtoA_freq.txt", header=TRUE)
p41 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q41 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SC1917b")
CtoT_SC1917b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SC1917b <- read.table("3pGtoA_freq.txt", header=TRUE)
p42 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q42 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SC1917c")
CtoT_SC1917c <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SC1917c <- read.table("3pGtoA_freq.txt", header=TRUE)
p43 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q43 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")


setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SE1961a")
CtoT_SE1961a <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SE1961a <- read.table("3pGtoA_freq.txt", header=TRUE)
p44 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q44 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")


setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SE1961b")
CtoT_SE1961b <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SE1961b <- read.table("3pGtoA_freq.txt", header=TRUE)
p45 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q45 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SE1961c")
CtoT_SE1961c <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SE1961c <- read.table("3pGtoA_freq.txt", header=TRUE)
p46 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q46 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

setwd("~/MSc BIOINFORMATICS/BEES_PROJECT/4-DAMAGE/results_SE1961d")
CtoT_SE1961d <- read.table("5pCtoT_freq.txt", header=TRUE)
GtoA_SE1961d <- read.table("3pGtoA_freq.txt", header=TRUE)
p47 <- ggplot(CtoT,mapping=aes(pos,X5pC.T))+
     geom_line(color='red')+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")
q47 <- ggplot(GtoA,mapping=aes(pos,X5pG.A))+
     geom_point(color='red')+theme_classic(base_size=16) +
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")



#multiplot(p1, p2, p3, p4)

##### C to T

CtoT_df <- cbind.data.frame(CtoT,CtoT_AT1971[,2],CtoT_BG1961a[,2],CtoT_CH1984[,2],
                            CtoT_CH1986a[,2],CtoT_CH1986b[,2],CtoT_DK2013[,2],CtoT_EN1935[,2],
                            CtoT_EN1946[,2],CtoT_EN1961b[,2],CtoT_ES1960a[,2],CtoT_ES1973b[,2],
                            CtoT_ES1973c[,2],CtoT_ES1973d[,2],CtoT_ES1973d[,2],CtoT_ES1973e[,2],
                            CtoT_FR1955[,2],CtoT_FR1984b[,2],CtoT_HR1974[,2],CtoT_IT1878a[,2],CtoT_IT1964[,2],
                            CtoT_IT1976a[,2],CtoT_IT1976b[,2],CtoT_JO1978b[,2],CtoT_JO1978c[,2],CtoT_JO1978j[,2],
                            CtoT_LBxxxxb[,2],CtoT_LU1937a[,2],CtoT_MT1980a[,2],CtoT_MT1980c[,2],CtoT_MT1980d[,2],
                            CtoT_MT1981[,2],CtoT_NL1957[,2],CtoT_NL1968[,2],CtoT_NL1993b[,2],CtoT_NL1998[,2],CtoT_NL1999[,2],
                            CtoT_PT1967b[,2],CtoT_PT1984[,2],CtoT_PT1985[,2],CtoT_SC1917a[,2],CtoT_SC1917b[,2],CtoT_SC1917c[,2],
                            CtoT_SE1961a[,2],CtoT_SE1961b[,2],CtoT_SE1961c[,2],CtoT_SE1961d[,2])

colnames(CtoT_df) <- c( 'pos','AT1954','AT1971','BG1961a','CH1984',
                        'CH1986a','CH1986b','DK2013','EN1935',
                        'EN1946','EN1961b','ES1960a','ES1973b',
                        'ES1973c','ES1973d','ES1973d','ES1973e',
                        'FR1955','FR1984b','HR1974','IT1878a','IT1964',
                        'IT1976a','IT1976b','JO1978b','JO1978c','JO1978j',
                        'LBxxxxb','LU1937a','MT1980a','MT1980c','MT1980d',
                        'MT1981','NL1957','NL1968','NL1993b','NL1998','NL1999',
                        'PT1967b','PT1984','PT1985','SC1917a','SC1917b','SC1917c',
                        'SE1961a','SE1961b','SE1961c','SE1961d')

#melt(CtoT_df,id=c("pos","time"))
molten_CtoT_df <- melt(CtoT_df,id=c("pos"))


head(molten_CtoT_df,50)

p50 <- ggplot(molten_CtoT_df,mapping=aes(pos,value,colour=variable))+
     geom_line()+theme_gray()+
     ggtitle("5p C to T") +labs(x="Position",y="Frequency")

p50

GtoA_df <-cbind.data.frame(GtoA,GtoA_AT1971[,2],GtoA_BG1961a[,2],GtoA_CH1984[,2],
                           GtoA_CH1986a[,2],GtoA_CH1986b[,2],GtoA_DK2013[,2],GtoA_EN1935[,2],
                           GtoA_EN1946[,2],GtoA_EN1961b[,2],GtoA_ES1960a[,2],GtoA_ES1973b[,2],
                           GtoA_ES1973c[,2],GtoA_ES1973d[,2],GtoA_ES1973d[,2],GtoA_ES1973e[,2],
                           GtoA_FR1955[,2],GtoA_FR1984b[,2],GtoA_HR1974[,2],GtoA_IT1878a[,2],GtoA_IT1964[,2],
                           GtoA_IT1976a[,2],GtoA_IT1976b[,2],GtoA_JO1978b[,2],GtoA_JO1978c[,2],GtoA_JO1978j[,2],
                           GtoA_LBxxxxb[,2],GtoA_LU1937a[,2],GtoA_MT1980a[,2],GtoA_MT1980c[,2],GtoA_MT1980d[,2],
                           GtoA_MT1981[,2],GtoA_NL1957[,2],GtoA_NL1968[,2],GtoA_NL1993b[,2],GtoA_NL1998[,2],GtoA_NL1999[,2],
                           GtoA_PT1967b[,2],GtoA_PT1984[,2],GtoA_PT1985[,2],GtoA_SC1917a[,2],GtoA_SC1917b[,2],GtoA_SC1917c[,2],
                           GtoA_SE1961a[,2],GtoA_SE1961b[,2],GtoA_SE1961c[,2],GtoA_SE1961d[,2])

colnames(GtoA_df) <- c( 'pos','AT1954','AT1971','BG1961a','CH1984',
                        'CH1986a','CH1986b','DK2013','EN1935',
                        'EN1946','EN1961b','ES1960a','ES1973b',
                        'ES1973c','ES1973d','ES1973d','ES1973e',
                        'FR1955','FR1984b','HR1974','IT1878a','IT1964',
                        'IT1976a','IT1976b','JO1978b','JO1978c','JO1978j',
                        'LBxxxxb','LU1937a','MT1980a','MT1980c','MT1980d',
                        'MT1981','NL1957','NL1968','NL1993b','NL1998','NL1999',
                        'PT1967b','PT1984','PT1985','SC1917a','SC1917b','SC1917c',
                        'SE1961a','SE1961b','SE1961c','SE1961d')


molten_GtoA_df <- melt(GtoA_df,id=c("pos"))

head(molten_CtoT_df,50)

p51 <- ggplot(molten_GtoA_df,mapping=aes(pos,value,colour=variable))+
     geom_line()+theme_gray()+
     ggtitle("3p G to A") +labs(x="Position",y="Frequency")

p51

