library(readxl)
data1=read_excel("QUINTO AÑO/Análisis Estadístico_R/LungCapData.xls")
View(data1)
head(data1)
library(xlsx)
i=read.xlsx("QUINTO AÑO/Análisis Estadístico_R/LungCapData.xls",1,header = TRUE)
head(i,3)
dim(data1)
##numero de columnas
length(data1)
##primeros registros 
tail(data1)
###
str(data1)
#######
library(psych)
####archivo txt
data2<-read.table("QUINTO AÑO/Análisis Estadístico_R/LungCapData.txt",sep= ";",header = TRUE)
head(data1)
###################################################################################
# EXPORTAR DATOS EN r
###################################################################################
write.table(data1, file ="LungCapData.csv")
write.table(data1,file="LungCapData.txt")

##############################################################################
#IMPORTAR DATOS A EXCEL
##############################################################################

library(haven)
demo<-read_sav("QUINTO AÑO/Análisis Estadístico_R/LungCapData1.sav")
head(demo)
demo<-as.data.frame(demo)
head(demo)
########################################################################
attach(demo)
mean(Height)
library(modes)
modes(Height)
median(Height)
########################################################################
skewness(Height)
library(modes)

turismo= read_sas("QUINTO AÑO/Análisis Estadístico_R/LungCapData.sas7bdat", NULL)
head(turismo)

data3=read_dta("QUINTO AÑO/Análisis Estadístico_R/LungCapData.dta")
data3=as.data.frame(data3)

