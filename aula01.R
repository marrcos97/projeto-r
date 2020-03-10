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
