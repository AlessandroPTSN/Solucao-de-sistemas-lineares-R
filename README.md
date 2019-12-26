# Solucao-de-sistemas-lineares-R
Código usado para a resolução de sistemas lineares utilizando solve do R

# Leitura dos dados
```R
#lendo a matriz 3x3
a=read.csv("G:/m1x.txt") #reescrever toda vez que pegar em um novo pc
#lendo a matriz 5x5
b=read.csv("G:/m2x.txt")#reescrever toda vez que pegar em um novo pc
#lendo a matriz 88x88
c=read.csv("G:/m3x.txt")#reescrever toda vez que pegar em um novo pc
```

# Código-fonte
```R
#matrox e uma funcao que recebe como parametro um data.frame
matrox=function(a){
h=(length(a))-1 #tamanho real da matriz
aa=matrix(c(1:(h^2)),c(h,h))#criando uma matriz para alocar os valores do data.frame
for(j in 1:h){ #transformando o data.frame em matriz
for(i in 1:h){
aa[j,i]=a[j,i]
}
}
cc=c(1:h) #criando um vetor resposta para alocar os valores do data.frame
for(j in 1:h){ #transformando o data.frame em vetor
cc[j]=a[j,(h+1)]
}
return(solve(aa,cc)) #aplicando a matriz e o vetor a funcao solve*
} #funcao retorna o vetor dos valores respostas da matriz selecionada
# * a funcao solve e uma funcao no R ao qual foi criada para encontrar os valores respostas
# * a funcao tem como parametros a matriz e o vetor resposta
# * a funcao retorna o vetor dos valores respostas
```
# Respostas

## descobrindo os valores respostas da matriz 3x3
```R
matrox(a)
[1] 2 1 -1
```
## descobrindo os valores respostas da matriz 5x5
```R
matrox(b)
[1] -0.6378957 -0.2728740 -0.4252318 0.9023166 0.3442177
```
## descobrindo os valores respostas da matriz 88x88
```R
matrox(c)
[1] -0.12508560 2.56230353 -0.70000643 1.23960962 -1.69135567
[6] -1.51787436 -0.32982416 0.53292235 -0.52411394 -0.66860460
[11] 0.57550037 -2.98556031 -0.90312808 0.06348630 0.24067224
[16] 0.74531960 -1.51879770 0.66813423 1.64471017 -2.00899921
[21] -0.85219585 2.19992812 -0.43131972 0.16726556 2.32848392
[26] 2.84681307 0.48275346 0.99889436 -0.19503551 1.28431615
[31] 1.19569427 -3.15524152 -0.08689086 -0.66267606 2.77315423
[36] -5.81235164 2.00932987 -1.50917094 -2.09500503 -0.45391840
[41] 0.87341179 2.55014186 1.95326420 1.72165137 0.65723047
[46] -2.48400545 1.23856427 0.20696197 -2.79496151 -0.03093238
[51] -2.37460260 1.78673324 0.61980398 -1.55578219 0.32767843
[56] -1.29861098 0.28665368 -2.69225092 1.78177839 0.17665243
[61] 2.07728561 2.29589925 1.68777407 -2.06887221 -0.30219051
[66] -1.21955583 -2.95611562 0.33138727 -0.38577993 -1.37014957
[71] -0.03698123 -0.77909260 -0.42363989 2.05749891 2.20067197
[76] -0.16757111 -2.63675342 0.97480985 -0.69994292 1.59977831
[81] -0.48745126 0.69434139 0.17715055
```
