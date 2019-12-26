#######sistema linear################
#######Alessandro - 12/03/2018#######

#Apos algumas modificacoes de formatacao dos arquivos m1 m2 m3

#lendo a matriz 3x3
a=read.csv("C:/Users/Neo/Desktop/m1x.txt") #reescrever toda vez que pegar em um novo pc
#lendo a matriz 5x5
b=read.csv("C:/Users/Neo/Desktop/m2x.txt")#reescrever toda vez que pegar em um novo pc
#lendo a matriz 88x88
c=read.csv("C:/Users/Neo/Desktop/m3x.txt")#reescrever toda vez que pegar em um novo pc

#matrox e uma funcao que recebe como parametro um data.frame
matrox=function(a){
  h=(length(a))-1             #tamanho real da matriz
  aa=matrix(c(1:(h^2)),c(h,h))#criando uma matriz para alocar os valores do data.frame
  for(j in 1:h){             #transformando o data.frame em matriz
    for(i in 1:h){
      aa[j,i]=a[j,i]
    }
  }
  cc=c(1:h)                #criando um vetor resposta para alocar os valores do data.frame
  for(j in 1:h){           #transformando o data.frame em vetor
    cc[j]=a[j,(h+1)]
  }
  return(solve(aa,cc))    #aplicando a matriz e o vetor a funcao solve*                      
}                       #funcao retorna o vetor dos valores respostas da matriz selecionada

# * a funcao solve e uma funcao no R ao qual foi criada para encontrar os valores respostas
# * a funcao tem como parametros a matriz e o vetor resposta
# * a funcao retorna o vetor dos valores respostas

#descobrindo os valores respostas da matriz 3x3
matrox(a)
#descobrindo os valores respostas da matriz 5x5
matrox(b)
#descobrindo os valores respostas da matriz 88x88
matrox(c)