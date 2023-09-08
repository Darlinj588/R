#ANÁLISIS ESTADÍSTICO DE LOS DATOS.
notas1=c(4.47,4.47,3.48,5.0,3.42,3.78,3.1,3.57,4.2,4.5,
        3.6,3.75,4.5,2.85,3.7,4.2,3.2,4.05,4.9,5.1,
        5.3,4.16,4.56,3.54,3.5,5.2,4.71,3.7,4.78,4.14,
        4.14,4.8,4.1,3.83,3.6,2.98,4.32,5.1,4.3,3.9,
        3.96,3.54,4.8,4.3,3.39,4.47,3.19,3.75,3.1,4.7,
        3.69,3.3,2.85,5.25,4.68,4.04,4.44,5.43,3.04,2.95)
getwd()
notas=c(4.47,4.47)
data.entry(notas1)
length(notas1)
write(notas1,"notas1.txt")
ls()
rm(list=ls(all=TRUE))
ls()

x=scan("notas1.txt",what=double(0),na.strings = "NA",flush=FALSE)
ls()

# TABLA DE FRECUENCIAS 

n=length(x);n
k=length(x);k
k=round(1+3.332*logb(n,10))
rango=max(x)-min(x)
a=round(rango/k,3)
a
# Define los límites y puntos medios de cada uno de los k intervalos # Define los límites y puntos medios de cada uno de los k intervalos 
limites=seq(from=min(x)-0.01/2,to=max(x)+0.01/2,by=a);limites

ci <- cbind(1:k)

for(i in 2:length(limites))
  ci[i-1,1]=(limites[i]+limites[i-1])/2
ci 

# Encuentra las frecuencias absolutas fi para cada intervalo. 
options(digits = 2)
fi <- cbind(table(cut(x, breaks = limites, labels=NULL, include.lowest=FALSE, right=FALSE, dig.lab=4))); 
fi
fri <- fi/n; fri




# Encuentra las frecuencias acumuladas ascendentes Fi 

Fi <- cumsum(fi); Fi
Fri <- Fi/n; Fri



tablaFrec <- data.frame(ci=ci, fi=fi, fri=fri, Fi=Fi, Fri=Fri); 



h <- hist(x, breaks=c(limites[1]-a, limites, limites[k+1]+a), freq = TRUE,
          probability = FALSE, include.lowest = FALSE,right = TRUE, 
          main = "Histograma de frecuencias", col="lightyellow", lty=1, 
          border="purple", xlab=" Notas de aspirantes",
          ylab="Frecuencia (fi)", axes=TRUE, labels=FALSE)


text(h$mids, h$density, h$counts, adj=c(0.5, -0.5), 
     col="red") rug(jitter(x)) # adiciona marcas de los datos

#Aproxima al histograma la función de densidad normal

h <- hist(x, breaks=c(limites[1]-a, limites, limites[k+1]+a), freq = FALSE, probability = TRUE, include.lowest = FALSE, right = TRUE,
          main="Aproximación a una Normal\n", col="lightyellow",lty=1,border="purple", xlab="Notas de aspirantes\n", ylab="Frecuencia relativa (fri)",
          axes=TRUE, labels=FALSE)
text(h$mids, h$density, h$counts, adj=c(0.5, 0.2), col="red") rug(jitter(x)) # adiciona marcas de los datos
curve(dnorm(x, mean=mean(x), sd=sd(x)), col = 2, lty = 2,lwd = 2, add = TRUE)

h <- hist(x, breaks=c(limites[1]-a, limites, limites[k+1]+a), freq = TRUE, probability=FALSE, include.lowest=FALSE,right=TRUE,
          main = "Polígono de frecuencias",col="lightyellow", lty=1, border="purple", xlab=" Notas de aspirantes",	ylab="Frecuencia (fi)", axes=TRUE, labels=FALSE)
text(h$mids, h$density, h$counts, adj=c(0.5, -0.5), col="red") rug(jitter(x)) # adiciona marcas de los datos
vCi <- c(h$mids[1]-a, h$mids, h$mids[k+1]+a) 
vfi <- c(0, h$counts, 0)
lines(vCi, vfi, col="blue", type="l")

#Crea la ojiva 
Fia <- c(0, Fi); Fia
plot(limites, Fia, type = "p", pch=1, col = "blue", 
     main="Ojiva ascendente", xlab="Notas de aspirantes", ylab="Frecuencia acumulada (Fi)")
text(limites, h$density, Fia, adj=c(0.5, -0.5), 
     col="red") lines(limites, Fia, col="black", type="l")
#moda


for(i in 1:k) if (fi[i] == max(fi)) break()
if(i > 1) moda <- limites[i]+((fi[i]-fi[i-1])/((fi[i]-fi[i-1])+(fi[i]-fi[i+1]) ))*a else moda <- limites[i]+(fi[i]/(fi[i]+(fi[i]-fi[i+1])))*a
moda


#cuartiles

Q <- 1:3
for(v in 1:3) for(i in 1:k) if (Fi[i] > (v*25*n)/100)
{
  Q[v] <- limites[i]+(((25*v*n/100)-Fi[i-1])/fi[i])*a break
} Q

#

estadisticos <- rbind(media=sum(tabEstad$cifi)/n, moda=moda, Q1=Q[1], Q2=Q[2], Q3=Q[3], rango=max(X)-min(X),	varianza=sum(tabEstad$ciMedia2fi)/n,
                      Desviacion=sqrt(sum(tabEstad$ciMedia2fi)/n), CoeficienteVariacion=sqrt(sum(tabEstad$ciMedia2fi)/n)/(sum(tabEstad$cifi)/n),
                      CAfisher=(sum(tabEstad$ciMedia3fi)/n)/sqrt(sum(tabEstad$ciMedia2fi)/n)^3, CoeficienteCurtosis=((sum(tabEstad$ciMedia4fi)/n)/sqrt(sum(tabEstad$ciMedia2fi)/n)^4)-3)
boxplot(x, main="Gráfico de caja", xlab="Notas", notch=FALSE,
        data=parent.frame(), plot=TRUE, border="red", col="yellow",
        horizontal=TRUE)

boxplot(x, main="Gráfico de caja", xlab="X = Notas", notch=TRUE, data=parent.frame(), plot=TRUE, 
        border="red", col="yellow",horizontal=TRUE)

par(mfrow=c(1,2)) 
mtext(side=3, line=0, cex=2, outer=T, "Titulo para Toda la Página")
hist(x); boxplot(x)

######################
############EJEMPLO 

datos1=c("Casado","soltero","soltero","casado","acompañado","soltero","casado","casado",
         "acompañado","acompañado","casado","soltero","acompañado","casado","soltero")
datos2=c("Desocupado","estudia","trabaja","estudia","trabaja","desocupado","trabaja","desocupado","estudia",
          "trabaja","estudia","desocupado","desocupado","estudia")
hojaCat=cbind(datos1,datos2)
hojaCat





















