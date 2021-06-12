##TITLE: O EFEITO DA PERCEPÇÃO DAS MUDANÇAS CLIMÁTICAS NOS INDICADORES SÓCIO-ECONÔMICOS AMBIENTAIS: UMA ANÁLISE DE MÉTODOS DE MÍNIMOS QUADRADOS

## AUTORIA: PEDRO BURIL SARAIVA LINS

## INSTITUTO: ITS RIO


## Importing the data base in csv format
library(tidyverse)
library(dplyr)
library(psych)
library(factoextra)
library(readxl)
library(ppclust)
library(factoextra)
library(cluster)
library(fclust)


setwd("D:\\R\\ITS RIO")

#banco códigos

url <- "https://raw.githubusercontent.com/pburil/ITSmudancasclimaticas/main/percepcao_climatica_codigos.csv?token=AORUF5ICWLJRWOYBV3TBRWDAYOMWA"

download.file(url, "percepcao_climatica_codigos.csv", mode = "wb")

banco_codigos <- read.csv("percepcao_climatica_codigos.csv", sep = ',', encoding = "UTF-8")

banco_selecionado <- banco_codigos %>%
  rename(ESCOLARIDADE = INSTX,
         CONDICAO_MUNICIPIO = COND,
         LOCAL = F03,
         Territorialidades = UF) %>%
  select(SEXO, ESCOLARIDADE, REGIAO, P1_1_1, P1_1_0, P1_1_4, P1_1_2)

##   select(SEXO, IDADE, ESCOLARIDADE, REGIAO, P1_1_1, P1_1_0, P1_1_4, P1_1_2)

# banco_selecionado$FATOR_POND <- gsub(",", ".", banco_selecionado$FATOR_POND)

# banco_selecionado$FATOR_POND <- as.numeric(banco_selecionado$FATOR_POND)



##  select(P1_1_1, P1_1_0, P1_1_4, P1_1_2, P1_2_2, P1_1_6, P1_1_5, P1_1_7_1, P1_1_7_2, P2_1_0, P2_1_3, P2_1_2_1, P2_1_2_2, P2_1_2_3, P2_1_2_4, P2_1_2_5, P2_1_9, ESCOLARIDADE, REGIAO, Territorialidades, F02_FAIXA)


# banco_codigos$LOCAL <- NULL
# # banco_codigos$ID <- NULL
# banco_codigos$F03 <- NULL
# banco_codigos$FATOR_POND <- NULL 

## TESTE Cluster Analysis in R Simplified and Enhanced


## As long cluster analysis is sensitive to outliers it is also important to check for atypical observa- tions. Hair et al. (2009) suggest profile diagram graphical inspection. The researcher can also use the blox-plot and  scatter  plots  to  identify  outliers,  in  addition  to  the  standard  tests  available  in  different  statistical  packages.  Depending on variables measurement level, the use of raw data can complicate the interpretation of the concept of homogeneity. In this situation, it is recommended to standardize the variables before applying cluster analysis. The  second  step  is  to  select  which  variables  will  be  used  to  estimate  the  distance/similarity  between  cases. Association  measures  are  used  with  non- quantitative variables such as ordinal and nominal. The result is a matching coefficient based on the presence or absence of determined attribute. The  hierarchical  clustering  approach  can  be  used  when  there is no prior knowledge of how many clusters should be formed. However, the researcher is still responsible for selecting the final solution to represent the data structure, the "stopping-rule". The K-means works by separating  the data into a pre-specified number and systematically assigning observations to the clusters. The K-means method is more suitable for large samples (n > 1000) since it does not compute the proximity matrix between all cases.


## ao invés de ser uma variável com todos os estados, transformar 27 variáveis pra cada estado. Pode ser delicado pros resultados. ### pivot_wider pra criar as variáveis de cada estado. ## fazer as variáveis que apenas veja sentido com a percepção climática ## limpar mais o banco de dados para as variáveis em escala likert ## 

## hierarchical clustering com as indicações de Dalson

library(factoextra)

res.dist <- get_dist(banco_selecionado, method = "pearson")
head(round(as.matrix(res.dist), 2))[, 1:6]


fviz_dist(res.dist, lab_size = 8)

##hierarchical clustering 

res.dist <- dist(banco_selecionado, method = "euclidean")

res.hc <- hclust(res.dist, method = "ward.D2")

plot(res.hc, cex = 0.5)

res.km <- eclust(banco_selecionado, "kmeans", nstart = 10)

# gap statistic plot 

fviz_gap_stat(res.km$gap_stat)

## Silhouette plot

fviz_silhouette(res.km)

#número ótimo de clusters utilizando gap statistics 
res.km$nbclust

# Print result
res.km


# Enhanced hierarchical clustering

res.hierarchical <- eclust(banco_selecionado, "hclust") 

fviz_dend(res.hierarchical, rect = TRUE)

teste <- eclust(banco_selecionado, "kmeans", k = 7)

idxsf <- SIL.F(teste$Xca, teste$U, alpha=1)
paste("Fuzzy Silhouette Index: ",idxsf)

# O dendograma é uma forma de ver que pares se formam atnes, mas não necessariamente de observar clusters. O cluster, com método tradicional, mostrou uma grande concentração, mas alguns pontos mais dispersos, que não formam um novo cluster pq não há número suficiente - o método tem esse limitação mesmo. O gráfico mostra que suas respostas são muitos parecidas, não há um padrão muito distinto. Não sei se houve viés e tal, na coleta dos dados. The silhouette value is a measure of how similar an object is to its own cluster (cohesion) compared to other clusters (separation). The silhouette ranges from ???1 to +1, where a high value indicates that the object is well matched to its own cluster and poorly matched to neighboring clusters.



cor(banco_selecionado[, 1:7])

library(psych)

pairs.panels(banco_selecionado[, 1:6], method = "pearson")


res.fcm <- fcm(banco_selecionado, centers = 4)

as.data.frame(res.fcm$u)[1:5, ]

res.fcm$v0

summary(res.fcm)

res.fcm <- fcm(banco_selecionado, centers = 7, nstart = 5)

res.fcm$func.val

res.fcm$iter

res.fcm$best.start

summary(res.fcm)

plotcluster(res.fcm, cp=1, trans = TRUE)

res.fcm2 <- ppclust2(res.fcm, "kmeans")
fviz_cluster(res.fcm2, data = banco_selecionado, 
             ellipse.type = "convex",
             palette = "jco",
             repel = TRUE,
             show.cluster.cent = TRUE,
             outlier.pointsize = TRUE)


res.fcm3 <- ppclust2(res.fcm, "fanny")

cluster::clusplot(scale(banco_selecionado), res.fcm3$cluster,  
                  main = "Cluster plot of Climate Changes Perception",
                  color=TRUE, labels = 2, lines = 2, cex=1)

res.fcm4 <- ppclust2(res.fcm, "fclust")

idxsf <- SIL.F(res.fcm4$Xca, res.fcm4$U, alpha=1)
paste("Fuzzy Silhouette Index: ",idxsf)

idxsf <- PE(res.fcm4$U)
paste("Partition Entropy: ",idxsf)

idxpc <- PC(res.fcm4$U)
paste("Partition Coefficient : ",idxpc)

idxmpc <- MPC(res.fcm4$U)
paste("Modified Partition Coefficient :",idxmpc)




## recomendações de hugo - association rules




