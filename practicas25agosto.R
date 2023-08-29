#CALCULOS NUMERICOS
2*(3+4)^2
sqrt(16)
abs(-97.6)# calcula el valor absoluto
x=4
x
sqrt(x)-3/4
p=(3>4)
p
q=-6+4<3 && 4!=10
q
r=-6+4>3 || 4==10
r
t=!r
t
sin(pi/2)
(y=cos(pi))
y
log(3)
log10((8))
log(8,10)### log(x,base)
exp(1)
q()
##################################################################
#CREACIÓN Y MANEJO DE VECTORES DE DATOS.
##################################################################
#1 vector vació
v=numeric (3)
v
v[1]=97;v
#2
x=c(2,3,4,5)
x
length(x)
is.integer(x)
is.double(x)
x=edit(x)
x
# dado un rango de valores 
y=8:45
y
y[7]=8000
length(y)
y=edit(y)
# 
u=1:12;u
u1=u[2*1:5]
u1
#
assign("z",c(x,0,x));z
#
s1= seq(2,10);s1
s2=seq(from=-1,to=5);s2
s3=seq(to=-2,from=2);s3
s4=seq(from=-3,to=3,by=0.2);s4
s5<-rep(s4,times=2);s5
##
## OPERACIONES CON VECTORES NUMÉRICOS

1/x
######################################
1/s4
v=2*x+z+1;v
x
z
e1=c(1,2,3,4);e2<-c(4, 5, 6, 7); crossprod(e1,e2)
t(e1)%*%e2
#OPERACIONES DE FUNCIONES SOBRE VECTORES NUMÉRICOS.
xt=t(y)
xt
#######################################
u=exp(y);u

t(options(digits=1));u
y=seq(from=1,to=10, by=3)
resum=c(length(y),sum(y),prod(y),min(y),max(y));resum
yo=sort(y);yo

S<-character()
deptos=c("Santa Ana", "Sonsonate")
deptos
deptos[3]="ahuchapan"


#Crear un vector de caracteres dándole nombres a los elementos para identificarlos más 
#fácilmente
codDeptos=c(12,13,14)
names(codDeptos)=c("Usulutan","San Miguel","La Union")
codDeptos
#RECORTAR
Oriente=codDeptos[c("Usulutan","San Miguel")]
Oriente

#Crear un vector con las etiquetas X1, Y2, ... , X9, Y10 
etis=paste(c('X'),1:10, sep = "")
etis

#creación de matrices 
m=matrix(numeric(),nrow = 3, ncol=4)
m
#--------------------------###----------------###------------------###----------------------------####----------------------###-------------------------########################

#
lista=list(nombre1="Padre", nombre2="mama", nombre3="hijo",edad.hijos=c(3,2,3,5))
is.matrix(lista)
is.vector(lista$edad.hijos)
lista
lista[[4]][2]=lista[["edad.hijos"]][2]=lista1$edad.hijos[2]
lista[[4]][1]
lista[["edad.hijos"]][2]
lista$edad.hijos[2]
lista['Padre']

lista[["nombre1"]]
x="nombre1"
lista[x]
#Creación de una sublista de una lista existente: 
sublista=lista[4]
sublista
#Ampliación de una lista: por ejemplo, la lista lista1 tiene 4 componentes y se le 
#puede agregár una quinta componente con

lista[5]=list(sexo.hijos=c("F","M","F"))
lista=edit(lista)
# Se puede aplicar la función data.entry() para modificar la estructura de una lista. 
s=matrix(c(3,-sqrt(2),2),nrow=2,ncol=2)
s
autovS=eigen(s)
s
autovS

evals=eigen(s)$values
evals

notas=matrix(c(2,5,7,6,8,2,4,9,10),ncol=3, dimnames=list(c("Matemática","Álgebra","Geometría"), 
                                                         c("Juan","José","René")))

notas
#CREACIÓN Y MANEJO DE HOJAS DE DATOS (DATA FRAME).

LOG=sample(c(TRUE,FALSE),size = 20,replace = T)
LOG
comp=rnorm(20)+runif(20)* (1i)
comp
num=rnorm(20,mean=0,sd=1)
num
#Crear un data frame compuesto por los tres vectores anteriores
df1=data.frame(LOG,comp,num)
df1
#Crear un vector de nombres de los tres vectores anteriores
nombres=c("logico","compllejo","numrrico")
nombres
#Define los nombres de las columnas del data frame asignándoles el vector nombres 
names(df1)=nombres
df1
#Define los nombres de las filas del data frame asignándoles un vector de 20 elementos 
#correspondientes a las 20 primeras letras del abecedario
row.names(df1)=letters[1:20]
df1
#######################################
ejercicio
edad=c(1,2,3,4)
estatura=c(18,21,45,54)
peso=c(65,68,65,69)
sex0=c("F","M","M","M")
data=data.frame(edad,estatura,peso,sex0)
data
noms=c("edad","estatura","peso","sexo")
names(data)=noms
data
#######################################
attach(data)
search()
edad
detach(data)





estatura
