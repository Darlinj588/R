n=50
p=0.35
valor=20
dbinom(valor,size=n,prob=p)
#exactamente 20 
library(ggplot2)
rango=0:n
df=data.frame(x=rango, y=dbinom(rango,size=n,prob=p))
df
p
ggplot(df, aes(x = x, y = y, fill = factor(ifelse(x==valor,"valor","resto")))) +
  geom_bar(stat = "identity")
###########################################
#P(X>14)
valor2=14
pbinom(valor2,size = n, prob = p, lower.tail = FALSE)
#LOWER TAIL TRUE-> ARRIBA DEL VALOR 
#LOWER TAIL
pbinom(valor2,size = n, prob = p)   

ggplot(df, aes(x = x, y = y, fill = factor(ifelse(x>14,"valor","resto")))) +
  geom_bar(stat = "identity")


ggplot(df, aes(x = x, y = y, fill = factor(ifelse(x>12,"valor","resto") && ifelse(x<20,"valor","resto")))) +
  geom_bar(stat = "identity")
###############################################
val=13
val2=19
pro=pbinom(val, size=n,prob=p,lower.tail = F)-pbinom(valor2,size=n,prob=p,lower.tail = F)
pro
ggplot(df, aes(x = x, y = y, fill = factor(ifelse(x>val,"valor","resto")))) +
  geom_bar(stat = "identity")
####################################################
a=0.3
qbinom(a,size=n,prob=p)
###dbinom valores del data
###pnimob la probabilidad 
###qbinom valor de x
###rbinom muestra aleatoria de números
rbinom(10,size=n,prob=p)
#cada vez que se ejecuta ese código se generan números aleatorios y R genera valores diferentes
#si se desea generar los mismos valores se puede fijar una semilla mediante la función set.seed()
set.seed(1)
rbinom(10,size=n,prob=p)
#####################################################
#DISTRIBUCION DE POISSON
rango=0:8
lamda=0.9
valor=4
valor1=0
valor2=1
valor3=3
dpois(valor,lamda)
dpois(valor1,lamda)
dpois(valor2,lamda)
dpois(valor3,lamda)
#(P(x=4)) significa que 
DF=data.frame(x=rango, y=dpois(rango,lamda))

ggplot(DF, aes(x = x, y = y, fill = factor(ifelse(x==valor,"valor","resto")))) +
  geom_bar(stat = "identity")
######################################################
valor=2
dpois(valor2,size = n, prob = p, lower.tail = FALSE)
ggplot(DF, aes(x = x, y = y, fill = factor(ifelse(x<3,"valor","resto")))) +
  geom_bar(stat = "identity")

######################################################
r=8
rpois(30,lambda = lamda)


#####################################################
media =3
desv=0.3
valor1=3
valor2=2.8#UNIVER DE GRANADA PRCA DE R
pnorm(valor1, mean = 3,sd=desv)-pnorm(valor2, mean = 3,sd=desv)
rango=c(media-3*desv,media+3*desv)
rango
ggplot(data.frame(x=rango),aes(x=rango))+
  stat_function(fun=dnorm,n=101,args=list(mean=media,sd=desv))+
  geom_area(stat = "function" , fun=dnorm, args=list(mean=media,sd=desv),
            fill="red",xlim=c(valor2,valor1),alpha=0.3)



