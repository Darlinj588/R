#librerías 
library(readxl)
library(ggplot2)
library(tidyr)
library(dplyr)
# llamado de la base de datos 
ingresos <- read_excel("QUINTO AÑO/Análisis Estadístico_R/mu_enoe.xlsx")

#tipo de objeto de la base
class(ingresos)

#dimesiones de la base
dim(ingresos)
#nombre de las variables 
colnames(ingresos)


#visualicion de los datos de manera gráfica
##1
ggplot(data = ingresos)+ 
  geom_point(mapping = aes(x=anios_esc,y=ingreso_mensual))
##2
ggplot(data=ingresos)+geom_point(mapping = aes(anios_esc,ingreso_mensual),color='PURPLE')

##3 incluyendo una tercera variable 
ggplot(data=ingresos)+
  geom_point(mapping = aes(anios_esc,ingreso_mensual,color=tipo_empleo))+
  geom_smooth(aes(anios_esc,ingreso_mensual),color="red")

##4 clasificacion del tipo de trabajo por formmas 
ggplot(data=ingresos)+
  geom_point(mapping = aes(anios_esc,ingreso_mensual, shape=tipo_empleo))
##5
ggplot(data=ingresos)+
  geom_point(mapping = aes(anios_esc,edad, alpha=ingreso_mensual))

##6
ggplot(data=ingresos)+geom_point(mapping = aes(anios_esc,ingreso_mensual),color="blue")+
  geom_smooth(aes(anios_esc,ingreso_mensual),color="red")

##7 
ggplot(data=encuesta)+
  geom_point(mapping = aes(x=anios_esc,y=ingreso_mensual,color=tipo_empleo))+
  facet_grid(tipo_empleo~sex)



       