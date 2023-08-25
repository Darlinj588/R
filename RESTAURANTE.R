library(readxl)

Restaurante1= read_excel("QUINTO AÑO/Análisis Estadístico_R/Restaurante, Power BI, Datos.xlsx")
View(Restaurante1)
library(ggplot2)
#library(tidyr) 
library(dplyr)


# datos nulos 
is.na(Restaurante1)
any(is.na(Restaurante1))
mean(is.na(Restaurante1))

#columnA DE LA BASE 
colnames(Restaurante1)


dim(Restaurante1)
####################################################
##lineas

library(magrittr)
ggplot(data = Restaurante1, aes(x = Categoria, y =Precio, group = Atendió)) + 
  geom_line(aes(color = Categoria))+ theme(axis.text = element_text(angle = 90))



###################################################
## categoria

ggplot(data=Restaurante1, aes(x=Categoria,fill=Categoria)) +
  geom_bar()+ theme(axis.text=element_text(angle=90))
str(Restaurante1)
Restaurante1$`Tipo de Cliente`
#####################################
x11()
Restaurante1$Propina=as.factor(Restaurante1$Propina)
ggplot(data=Restaurante1, aes(x=`Tipo de Cliente`,fill=Propina)) +
  geom_bar(position = "dodge")+theme(axis.text=element_text(angle=90))+
  xlab("Tipo de cliente") + ylab("Número de observaciones")

##########################################
table(Restaurante1$`Tipo de Cliente`,Restaurante1$Fecha)
ggplot(data=Restaurante1, aes(x=`Tipo de Cliente`,fill=Categor)) +
  geom_bar(aes(`Tipo de Cliente`,fill =Categoria))+ theme(axis.text=element_text(angle=90))


############################################################

fechas1= Restaurante1 %>% 
  group_by(Fecha,`Tipo de Cliente`) %>%
  summarise_at(vars(Precio),                 
                list(name = sum))
View(fechas1)
as.data.frame(fechas1)
ggplot(fechas1, aes(x = Fecha, y = name, color = )) +
  geom_line()
attach(Restaurante1)
table(a,Propina)

fechas= as.Date(Fecha, format = "%d/%m/%Y")
View(fechas)
################################################################################
str(fechas)
ggplot(a, aes(x = Fecha, y = name)) +
  geom_line()+
geom_point()

ggplot(data=a, aes(x=Fecha,fill=Fecha)) +
  geom_hist()+ theme(axis.text=element_text(angle=90))
str(Restaurante1)
ggplot(a, aes(x = Fecha, y =name, color = Fecha)) +
  geom_line()
a=as.Date(Fecha,format="%d-%m-%Y")
str(a)
ggplot(a, aes(x=Fecha, y=name )) + 
  geom_line(colour="red")  + 
  geom_point( size=1, shape=21, fill="white", colour="red") + 
  theme_minimal()

x11()
ggplot(data=fechas1)+
  geom_point(mapping = aes(x=Fecha,y=name,color=`Tipo de Cliente`))+
  facet_grid(`Tipo de Cliente`~.)+ theme(axis.text=element_text(angle=90))



ggplot(fechas1, aes(x = Fecha, y =name, color =`Tipo de Cliente` )) +
  geom_line()




##Se observa que la categoría mas consumida es la de bebidas no alchool y le sigue las cervezas
## esta categoría es la de mas bajo precio y es solicitada por los clientes tanto nuevos como repetidos
## una posible causa podría ser la demanda de productos de precios bajos.
## En la categoría de vino se observa que la demanda es muy baja y es la categoría costosa, que tiene distintos 
## tipos de vino, por lo que seria una buena recomendación  reducir los tipos de vinos ya que la demanda es poca






