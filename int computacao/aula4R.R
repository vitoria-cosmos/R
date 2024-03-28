# Operações com matrizes

A=matrix(rnorm(16), nrow=4, ncol=4, byrow=T)

B=matrix(rnorm(16), nrow=4, ncol=4, byrow=T)

# 1) Soma, subtração

A + B

A - B

A * B # produto elemento por elemento

C=A%*%B # produto de duas matrizes

edit(C)

solve(A) #matrix inversa

A.inversa=solve(A) #matrix inversa

round(A%*%A.inversa,2) # calcula o produto e arrednda para duas casas decimais

det(A) # determinante de A

# concatenação de matrizes

C=cbind(A,B) # junta matrizes lado a lado
C

D=rbind(A, B) # junta matrizes uma abaixo da outra
D

## Verificação da natureza do objeto no R

is.matrix(D) # D é uma matrix
is.vector(D) # D é um vetor?
is.character("José") # D é um caractere?

## Conversão de objetos

as.vector(B) # converte em vetor

## Data frames

data() # lista dos conjuntos de dados disponíveis

data("AirPassengers")
rm(list = ls())

# Criando um banco de dados (dataframe):

set.seed(12)
v1 = sample(1:6, 14, replace = TRUE) # 
set.seed(13)
v2 = sample(1:6, 14, replace = TRUE)
set.seed(14)
v3 = letters(sample(1:10, 7, replace = TRUE))
v4 = paste0(letters[1:7], 1:7)
d0 = data.frame(v1, v2, v3, v4)
d0
