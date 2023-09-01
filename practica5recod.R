library(readxl)
densidad <- read_excel("QUINTO AÑO/Análisis Estadístico_R/Densidad_Poblacional.xlsx", 
                                   sheet="Municipios", skip=8)
#View(densidad)
library(car)
library(carData)

 densidad$MUNIC=recode(densidad$MUNICIPIO,
 "1:13='Ahuachapan';14:27='Santa Ana';
   28:44='Sonsonate';45:78='Chalatenango';
   79:101='La Libertad';102:121='San Sanvador';
   122:138='Cuscatlan';139:161='La Paz';
   162:171='Caba~nas';172:185='San Vicente';
   186:197='Usulutan';198:218='San Miguel';
   219:245='Morazan';246:264='La Uni´on'")
 
 names(densidad)
 getwd()
 
 
 
 
 
 
 
 
 
 
 
 