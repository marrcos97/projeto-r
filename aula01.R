a <-2+2
a


a <- c(1,2,3,4)

b <- c(1,2,3,4)

a >= b
a < b


cpf <- 45711980866
cpf

fraude <- substr(cpf,9,9)
fraude


paste("Marcos","gomes")
paste0("Marcos ","gomes", sep = '-' )

a <- "Data science"
b <- substr(a,6,12)
b

x <- c(1,2,3,4,15)
mean(x)
sd(x)
median(x)
max(x)
min(x)


nome <- c("Marcos","Pedro","Matheus")
idade <- c(30,31,31)
salario <- c(1230,1875,2010)

cadastro <- data.frame(nome,idade,salario)
cadastro

filhos <- c(1,2,3)

cadastro$filhos<- filhos
cadastro$filhos


prestacao <- c(350,280,415)
cadastro$prestacao <- prestacao
cadastro

percentualComprometimentoRenda <- c(prestacao / salario * 100)
cadastro$percentualComprometimentoRenda <- percentualComprometimentoRenda
cadastro

mean(percentualComprometimentoRenda)
median

#removendo a quarta coluna
cadastro_1 <-cadastro[,-4]
cadastro_1

#mostrando o nome das colunas
names(cadastro)
names(cadastro_1)


levels(salario)

#não funciona
levels(cadastro$salario)
#funciona
levels(cadastro$nome)

library(readxl)
Ordenar <- read_excel("C:/marcos/arquivos da aula/Ordenar.xlsx")
View(Ordenar)

attach(Ordenar)

names(Ordenar)
dim(Ordenar)

Ordenar[order(Ordenar$id, decreasing = T),]
Ordenar[order(Ordenar$id),]

remover_ordenar <- unique(Ordenar)
remover_ordenar

remover_duplicados <- remover_ordenar[!duplicated(remover_ordenar$id,fromLast = TRUE),]
remover_duplicados <- remover_ordenar[!duplicated(remover_ordenar$id,fromLast = FALSE),]
remover_duplicados

library(readxl)
Compras <- read_excel("C:/marcos/arquivos da aula/Compras.xlsx")
View(Compras)

head(Compras)

#install.packages("dplyr")
library(dplyr)

agregar <- summarise(group_by(Compras,id),
                     Valor_Compra = mean(Valor_Compra),
                     DT_Compra = max(DT_Compra),
                     contagem = n())

agregar

#install.packages(c("rfm","lubridate"))
library(rfm)
library(lubridate)

data_atual <- lubridate::as_date("2020-03-09", tz="UTC-3")
agregar$data_atual <- data_atual

View(agregar)

attach(agregar)
DT_Compra_1 <- lubridate::as_date(DT_Compra)
agregar$DT_Compra_1 <- DT_Compra_1
agregar

rfm_resultado <- rfm_table_order(agregar,id, DT_Compra_1,Valor_Compra,data_atual)
rfm_resultado

View(rfm_resultado$rfm)
