Climate change in the perception of Brazilians: Results of a clusters
analysis
================
Pedro Buril
14/06/2021

Este arquivo reune os primeiros esforços em estudos de agrupamento em
relação a percepção climática dos brasileiros. Neste estudo utilizamos a
técnica de Fuzzy C-Means Clustering, ela se caracteriza por ser uma
técnica de data mining de agrupamento de dados segundo o grau de
semelhança dos casos.

A diferença da técnica é que o mesmo caso pode se comportar de forma
fuzzy e pertencer a mais de um cluster. Realizamos nossas análises em
Open Science (OS), com o intuito de contribuir e sedimentar o
conhecimento sobre as mudanças climáticas no Brasil, bem como guiar
trabalhos futuros de análise de clusters.

Esperamos que este estudo possa contribuir de 3 formas: I) acumule
conhecimento em torno da percepção climática; II) se torne um guia de
análise de agrupamento para os pesquisadores de graduação e
pós-graduação de Ciências Sociais; III) que este se torne um bom
exercício para aqueles que buscam replicar trabalhos acadêmicos.

options(knitr.duplicate.label = “allow”)

## Carregando of dados

## As variáveis selecionadas para o estudo foram:

1.  Sexo;
2.  Região;
3.  Escolaridade;
4.  O quanto você considera que está preocupado (a) com o meio ambiente
    atualmente? Você diria que está…
5.  O quanto você sabe sobre aquecimento global ou mudanças climáticas?
6.  O quanto você acha importante a questão do aquecimento global?

## Selecionando os dados

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$P1_1_0
    ## W = 0.84961, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$P1_1_4
    ## W = 0.45997, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$P2_1_9
    ## W = 0.78195, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$ESCOLARIDADE
    ## W = 0.8558, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$RELIGIAO
    ## W = 0.59473, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$CLASSE
    ## W = 0.92004, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$IDADE
    ## W = 0.88514, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$RAÇA
    ## W = 0.7819, p-value < 2.2e-16

    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  banco_selecionado$REGIAO
    ## W = 0.89797, p-value < 2.2e-16

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

# Clustering Fuzzy C Means (CFM)

(FCM) é um algoritmo soft custering proposto por Bezdek (1974; 1981). Ao
contrário do algoritmo K-means em que cada objeto de dados é membro de
apenas um cluster, um objeto de dados é membro de todos os clusters com
vários graus de associação difusa entre 0 e 1 no FCM. Conseqüentemente,
os objetos de dados mais próximos dos centros dos clusters têm graus de
associação mais elevados do que os objetos espalhados nas bordas dos
clusters.

    ##                   P1_1_0       P1_1_4       P2_1_9 ESCOLARIDADE       IDADE
    ## P1_1_0        1.00000000  0.092888507  0.087711327  -0.23026010  0.01687490
    ## P1_1_4        0.09288851  1.000000000  0.107508143  -0.13885789  0.12151843
    ## P2_1_9        0.08771133  0.107508143  1.000000000  -0.15833955  0.12112193
    ## ESCOLARIDADE -0.23026010 -0.138857894 -0.158339550   1.00000000 -0.35476180
    ## IDADE         0.01687490  0.121518430  0.121121926  -0.35476180  1.00000000
    ## CLASSE        0.15965637  0.038720369  0.050498083  -0.46632360  0.07247986
    ## RAÇA          0.06294405  0.040832610  0.003127586  -0.15771402 -0.09035938
    ## RELIGIAO     -0.03084130 -0.025651073 -0.138758847   0.15156606 -0.20775025
    ## REGIAO       -0.02656594 -0.003673849 -0.004470551   0.06715188  0.05334152
    ##                   CLASSE         RAÇA    RELIGIAO       REGIAO
    ## P1_1_0        0.15965637  0.062944050 -0.03084130 -0.026565937
    ## P1_1_4        0.03872037  0.040832610 -0.02565107 -0.003673849
    ## P2_1_9        0.05049808  0.003127586 -0.13875885 -0.004470551
    ## ESCOLARIDADE -0.46632360 -0.157714024  0.15156606  0.067151881
    ## IDADE         0.07247986 -0.090359382 -0.20775025  0.053341517
    ## CLASSE        1.00000000  0.222148100 -0.12492120 -0.181799481
    ## RAÇA          0.22214810  1.000000000 -0.02756323 -0.190891932
    ## RELIGIAO     -0.12492120 -0.027563231  1.00000000  0.030300872
    ## REGIAO       -0.18179948 -0.190891932  0.03030087  1.000000000

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

    ##    Cluster 1 Cluster 2 Cluster 3
    ## 1 0.02880480 0.5191442 0.4520510
    ## 2 0.03347531 0.5987833 0.3677414
    ## 3 0.08125459 0.4767989 0.4419465
    ## 4 0.05850804 0.3555492 0.5859428
    ## 5 0.06733121 0.3699976 0.5626712
    ## 6 0.08663338 0.3281342 0.5852324
    ## 7 0.07137745 0.4058580 0.5227646
    ## 8 0.07020221 0.4236996 0.5060982
    ## 9 0.02269122 0.3093095 0.6679993

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-3-2.png)<!-- -->

    ## 
    ## Call:
    ## lm(formula = clusters ~ P1_1_0 + P1_1_4 + P2_1_9 + REGIAO + CLASSE + 
    ##     ESCOLARIDADE + IDADE + RAÇA + RELIGIAO, data = cluster.output)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.68293 -0.20258  0.01481  0.18109  0.83592 
    ## 
    ## Coefficients:
    ##                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)    2.778167   0.051130  54.335  < 2e-16 ***
    ## P1_1_0        -0.001280   0.007734  -0.165 0.868589    
    ## P1_1_4         0.008274   0.009523   0.869 0.385032    
    ## P2_1_9        -0.005215   0.008601  -0.606 0.544385    
    ## REGIAO2        0.056196   0.026191   2.146 0.032041 *  
    ## REGIAO3        0.073131   0.025429   2.876 0.004076 ** 
    ## REGIAO4        0.065416   0.029394   2.225 0.026173 *  
    ## REGIAO5        0.155772   0.033075   4.710 2.67e-06 ***
    ## CLASSE2        0.042511   0.029254   1.453 0.146347    
    ## CLASSE3       -0.046757   0.025225  -1.854 0.063963 .  
    ## CLASSE4       -0.240656   0.026887  -8.951  < 2e-16 ***
    ## CLASSE5       -0.583745   0.027292 -21.389  < 2e-16 ***
    ## CLASSE6       -0.629892   0.028828 -21.850  < 2e-16 ***
    ## ESCOLARIDADE2  0.054911   0.021718   2.528 0.011545 *  
    ## ESCOLARIDADE3  0.215002   0.021223  10.130  < 2e-16 ***
    ## ESCOLARIDADE4  0.279890   0.024514  11.417  < 2e-16 ***
    ## IDADE3        -0.067271   0.022500  -2.990 0.002829 ** 
    ## IDADE4        -0.128266   0.022457  -5.712 1.31e-08 ***
    ## IDADE5        -0.186983   0.023695  -7.891 5.15e-15 ***
    ## IDADE6        -0.291095   0.023473 -12.401  < 2e-16 ***
    ## RAÇA2         -0.019374   0.022246  -0.871 0.383929    
    ## RAÇA3         -0.052627   0.014965  -3.517 0.000448 ***
    ## RAÇA4         -0.064048   0.040198  -1.593 0.111265    
    ## RAÇA5         -0.110641   0.045963  -2.407 0.016176 *  
    ## RELIGIAO10    -1.725704   0.029963 -57.594  < 2e-16 ***
    ## RELIGIAO11    -1.725868   0.030639 -56.329  < 2e-16 ***
    ## RELIGIAO2     -0.013870   0.015706  -0.883 0.377291    
    ## RELIGIAO3     -0.033681   0.050728  -0.664 0.506816    
    ## RELIGIAO4      0.087876   0.103591   0.848 0.396386    
    ## RELIGIAO5     -0.115774   0.122733  -0.943 0.345655    
    ## RELIGIAO6     -1.649437   0.056894 -28.991  < 2e-16 ***
    ## RELIGIAO7     -1.696513   0.036720 -46.202  < 2e-16 ***
    ## RELIGIAO8     -2.059201   0.272781  -7.549 6.93e-14 ***
    ## RELIGIAO9     -1.644578   0.036403 -45.177  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.2713 on 1802 degrees of freedom
    ## Multiple R-squared:  0.866,  Adjusted R-squared:  0.8636 
    ## F-statistic:   353 on 33 and 1802 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## glm(formula = clusters ~ P1_1_0 + P1_1_4 + P2_1_9 + REGIAO + 
    ##     CLASSE + ESCOLARIDADE + IDADE + RAÇA + RELIGIAO, family = "poisson", 
    ##     data = cluster.output)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -0.4304  -0.1024   0.0010   0.0955   0.4090  
    ## 
    ## Coefficients:
    ##                Estimate Std. Error z value Pr(>|z|)    
    ## (Intercept)    1.036465   0.126114   8.218  < 2e-16 ***
    ## P1_1_0        -0.004011   0.019307  -0.208   0.8354    
    ## P1_1_4         0.001977   0.023806   0.083   0.9338    
    ## P2_1_9        -0.003887   0.021272  -0.183   0.8550    
    ## REGIAO2        0.023142   0.065116   0.355   0.7223    
    ## REGIAO3        0.030005   0.062966   0.477   0.6337    
    ## REGIAO4        0.027244   0.072304   0.377   0.7063    
    ## REGIAO5        0.058435   0.080590   0.725   0.4684    
    ## CLASSE2        0.021362   0.068578   0.311   0.7554    
    ## CLASSE3       -0.019310   0.059058  -0.327   0.7437    
    ## CLASSE4       -0.102563   0.063601  -1.613   0.1068    
    ## CLASSE5       -0.259282   0.066071  -3.924 8.70e-05 ***
    ## CLASSE6       -0.283525   0.070741  -4.008 6.13e-05 ***
    ## ESCOLARIDADE2  0.028537   0.056331   0.507   0.6124    
    ## ESCOLARIDADE3  0.099666   0.054297   1.836   0.0664 .  
    ## ESCOLARIDADE4  0.123643   0.061416   2.013   0.0441 *  
    ## IDADE3        -0.029302   0.054817  -0.535   0.5930    
    ## IDADE4        -0.057364   0.054972  -1.043   0.2967    
    ## IDADE5        -0.080828   0.057731  -1.400   0.1615    
    ## IDADE6        -0.124494   0.057575  -2.162   0.0306 *  
    ## RAÇA2         -0.008288   0.056114  -0.148   0.8826    
    ## RAÇA3         -0.024642   0.036621  -0.673   0.5010    
    ## RAÇA4         -0.032094   0.103886  -0.309   0.7574    
    ## RAÇA5         -0.050435   0.120063  -0.420   0.6744    
    ## RELIGIAO10    -1.012400   0.106517  -9.505  < 2e-16 ***
    ## RELIGIAO11    -1.012019   0.107942  -9.376  < 2e-16 ***
    ## RELIGIAO2     -0.003792   0.036892  -0.103   0.9181    
    ## RELIGIAO3     -0.011169   0.116950  -0.096   0.9239    
    ## RELIGIAO4      0.032467   0.232093   0.140   0.8887    
    ## RELIGIAO5     -0.041894   0.292310  -0.143   0.8860    
    ## RELIGIAO6     -0.978790   0.206491  -4.740 2.14e-06 ***
    ## RELIGIAO7     -1.000730   0.132298  -7.564 3.90e-14 ***
    ## RELIGIAO8     -1.146992   1.002254  -1.144   0.2525    
    ## RELIGIAO9     -0.976561   0.131222  -7.442 9.91e-14 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for poisson family taken to be 1)
    ## 
    ##     Null deviance: 482.952  on 1835  degrees of freedom
    ## Residual deviance:  43.409  on 1802  degrees of freedom
    ## AIC: 4997.2
    ## 
    ## Number of Fisher Scoring iterations: 4

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$P1_1_0 and cluster.output$clusters
    ## X-squared = 61.885, df = 6, p-value = 1.862e-11

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$ESCOLARIDADE and cluster.output$clusters
    ## X-squared = 649.51, df = 6, p-value < 2.2e-16

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$RELIGIAO and cluster.output$clusters
    ## X-squared = 1841.3, df = 20, p-value < 2.2e-16

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$P2_1_9 and cluster.output$clusters
    ## X-squared = 65.891, df = 4, p-value = 1.67e-13

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$P1_1_4 and cluster.output$clusters
    ## X-squared = 16.624, df = 6, p-value = 0.01077

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$CLASSE and cluster.output$clusters
    ## X-squared = 969.06, df = 10, p-value < 2.2e-16

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$RAÇA and cluster.output$clusters
    ## X-squared = 97.319, df = 8, p-value < 2.2e-16

    ## 
    ##  Pearson's Chi-squared test
    ## 
    ## data:  cluster.output$REGIAO and cluster.output$clusters
    ## X-squared = 87.337, df = 8, p-value = 1.613e-15

### Matrizes protótipos de cluster inicial e final

No cluster fuzzy, uma etapa de inicialização é necessária para construir
a matriz inicial de protótipos de cluster e a matriz de graus de
filiação. Embora essa tarefa seja geralmente realizada na etapa de
inicialização doagrupamento, os protótipos iniciais e associações também
podem ser inseridos diretamente pelo analista.

    ##           P1_1_0 P1_1_4 P2_1_9 ESCOLARIDADE IDADE CLASSE RAÇA RELIGIAO REGIAO
    ## Cluster 1      1      1      1            4     3      2    2       11      3
    ## Cluster 2      3      1      3            2     6      6    1        1      3
    ## Cluster 3      1      1      3            4     4      1    3        1      3

    ##             P1_1_0   P1_1_4   P2_1_9 ESCOLARIDADE    IDADE   CLASSE     RAÇA
    ## Cluster 1 1.970645 1.203878 1.969479     3.096508 3.556820 3.337595 1.925854
    ## Cluster 2 2.115611 1.295166 2.306130     2.339520 4.565565 4.414390 2.196418
    ## Cluster 3 2.014052 1.253017 2.246958     2.904575 4.115065 3.478615 1.970600
    ##           RELIGIAO   REGIAO
    ## Cluster 1 9.474310 2.924949
    ## Cluster 2 1.475879 2.758183
    ## Cluster 3 1.470596 2.929265

    ## Summary for 'cluster.results'
    ## 
    ## Number of data objects:  1836 
    ## 
    ## Number of clusters:  3 
    ## 
    ## Crisp clustering vector:
    ##    [1] 2 2 2 3 3 3 3 3 3 3 3 3 1 3 1 1 3 2 3 3 3 2 2 1 1 1 1 2 3 3 3 2 3 3 3 1 3
    ##   [38] 1 3 1 2 2 3 2 3 3 3 2 1 1 3 3 3 2 1 3 2 3 3 3 1 3 1 1 2 1 1 1 3 2 2 1 3 2
    ##   [75] 2 3 3 3 1 2 2 2 3 2 3 3 3 2 3 1 2 3 3 3 3 3 3 2 3 3 3 2 3 1 3 3 3 1 3 1 2
    ##  [112] 3 3 3 2 3 3 3 3 3 2 2 3 2 1 1 3 3 1 3 2 2 3 3 1 2 1 2 3 2 1 3 3 3 3 3 2 3
    ##  [149] 3 3 1 2 3 2 2 1 3 2 3 3 1 1 3 3 2 3 1 2 3 2 2 3 2 3 2 2 2 3 3 3 3 3 2 3 2
    ##  [186] 3 1 3 3 2 3 2 3 2 3 1 3 2 3 3 3 3 3 3 3 3 3 3 3 1 1 3 2 3 3 3 3 3 1 3 1 3
    ##  [223] 2 2 2 1 3 1 3 3 2 3 1 3 3 3 3 1 2 3 3 3 3 3 2 3 2 3 1 3 3 3 3 2 3 3 1 3 3
    ##  [260] 1 2 3 1 3 1 3 2 2 3 3 2 3 1 2 2 3 2 3 3 2 3 3 3 2 3 3 3 1 3 3 3 3 3 3 3 3
    ##  [297] 3 2 3 3 3 3 2 3 3 3 2 3 3 3 3 3 2 3 3 2 3 2 2 1 3 3 3 3 3 3 3 2 3 3 2 3 2
    ##  [334] 2 3 3 3 1 2 3 2 1 2 1 3 3 3 3 3 3 3 3 1 3 3 2 2 1 3 3 2 3 2 2 3 2 1 3 3 1
    ##  [371] 3 3 1 2 3 3 1 2 3 2 1 3 3 3 2 3 2 2 3 3 3 3 3 2 3 1 3 2 2 2 2 2 2 3 3 2 3
    ##  [408] 1 1 2 2 3 3 3 1 2 2 1 2 2 2 3 2 3 2 2 3 2 2 2 2 3 3 3 1 2 3 2 2 3 1 3 3 3
    ##  [445] 1 2 3 2 2 3 2 2 2 2 3 2 2 2 3 3 1 2 3 1 1 2 3 1 3 1 1 3 2 2 2 3 2 3 1 2 2
    ##  [482] 3 2 3 2 3 3 3 3 1 3 2 3 2 2 1 2 2 2 3 1 3 1 3 3 2 3 2 3 2 3 3 2 3 2 3 2 2
    ##  [519] 1 2 3 3 3 3 2 2 1 2 1 2 1 1 2 1 3 1 3 3 1 2 1 3 2 1 3 1 3 3 3 3 2 1 3 1 2
    ##  [556] 3 1 3 1 2 1 2 3 3 1 3 2 1 2 3 2 2 3 1 2 3 1 3 1 2 2 3 2 3 3 3 1 2 2 2 1 2
    ##  [593] 1 1 1 3 3 3 1 3 2 3 1 3 2 1 3 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 2 2 2 3 1 3 3
    ##  [630] 2 2 3 2 3 2 3 3 3 3 3 2 3 3 3 3 3 3 3 1 1 3 3 3 3 1 3 3 3 3 2 3 2 3 3 1 3
    ##  [667] 3 1 2 2 1 3 3 1 2 3 3 3 2 1 2 2 2 1 3 3 3 2 1 2 2 3 1 3 3 3 3 1 3 1 3 3 1
    ##  [704] 3 1 3 2 3 2 3 1 1 3 3 1 3 1 3 2 1 2 2 3 3 3 1 1 2 1 1 3 3 2 3 3 3 3 2 3 3
    ##  [741] 3 3 1 3 3 2 3 2 3 2 3 3 2 1 3 3 3 3 2 1 3 1 2 2 1 3 3 3 1 2 3 1 2 3 3 3 1
    ##  [778] 2 3 2 3 2 3 2 3 3 3 2 2 2 3 1 2 2 1 2 3 1 1 3 2 2 2 3 2 3 1 2 3 2 1 2 2 3
    ##  [815] 3 3 3 3 3 1 3 2 3 2 1 2 1 2 1 3 3 2 2 1 1 3 2 3 3 3 3 1 1 3 2 3 1 3 3 2 2
    ##  [852] 2 2 3 2 3 2 3 3 1 2 3 1 2 1 2 2 3 3 1 2 2 2 3 2 1 3 3 1 1 2 3 2 2 2 3 3 3
    ##  [889] 2 3 2 3 2 1 2 1 3 3 2 2 2 2 2 1 3 2 3 2 1 1 2 2 2 2 2 3 2 3 3 1 3 2 2 3 2
    ##  [926] 3 1 1 2 2 3 3 3 1 3 1 1 3 1 2 2 2 1 1 2 1 1 2 2 1 3 2 3 2 2 2 2 3 2 2 3 2
    ##  [963] 3 2 3 3 1 2 2 3 2 2 1 3 3 2 2 3 3 2 3 3 3 2 1 2 2 3 2 2 2 2 3 2 1 3 2 2 3
    ## [1000] 2 1 2 2 2 1 2 2 2 3 2 3 3 1 3 2 3 2 2 3 2 1 3 3 1 3 2 3 3 2 2 3 2 3 3 2 3
    ## [1037] 3 1 3 1 2 3 1 3 3 2 3 1 2 2 3 3 2 3 3 1 3 3 1 3 2 2 2 3 2 3 2 3 1 1 2 3 1
    ## [1074] 2 1 1 1 3 1 1 1 3 2 3 3 2 1 2 3 3 2 2 2 1 3 2 3 3 3 2 2 3 2 3 1 2 3 3 1 2
    ## [1111] 2 3 3 3 1 2 2 2 2 3 2 3 3 3 2 3 2 1 2 2 3 2 2 3 1 3 3 1 2 2 2 3 2 2 2 3 1
    ## [1148] 1 2 2 2 3 2 1 2 2 1 3 1 2 2 1 2 2 3 2 3 3 1 2 2 3 3 3 3 3 1 2 2 2 1 3 2 3
    ## [1185] 3 2 3 2 3 3 2 3 1 3 1 3 3 2 2 2 2 2 2 2 1 2 1 2 3 3 3 2 2 3 1 1 2 2 3 1 2
    ## [1222] 3 1 1 2 2 2 3 3 2 2 2 2 3 1 3 1 2 3 1 1 3 1 1 2 3 3 2 2 1 2 3 1 3 1 3 2 2
    ## [1259] 2 1 1 3 3 3 3 1 1 3 3 2 2 2 3 2 2 2 1 1 3 1 3 2 2 2 1 3 2 3 2 1 2 2 3 2 1
    ## [1296] 3 1 3 2 2 2 3 2 3 2 1 3 1 3 2 3 1 3 2 3 3 3 3 2 1 2 2 1 2 1 3 2 2 1 2 2 2
    ## [1333] 2 2 3 3 3 2 2 3 2 2 3 2 2 2 3 2 2 2 2 1 1 2 2 3 2 3 1 2 3 3 1 3 2 2 2 3 2
    ## [1370] 2 2 2 3 2 2 2 2 2 3 1 3 2 3 3 2 2 2 2 3 2 2 2 2 3 2 2 3 3 3 2 3 3 1 2 2 3
    ## [1407] 1 2 2 3 3 3 1 3 3 2 2 2 2 1 2 1 2 3 3 1 3 2 2 3 2 1 3 3 2 3 2 1 2 1 1 2 3
    ## [1444] 3 3 2 2 2 3 2 2 1 3 2 3 2 3 1 3 3 2 3 2 1 1 2 2 1 1 3 2 2 3 2 1 3 2 2 3 1
    ## [1481] 2 3 2 3 2 3 1 2 3 3 2 3 3 1 3 1 3 2 2 2 2 2 3 3 3 2 3 1 3 3 3 2 3 1 3 1 2
    ## [1518] 3 3 2 2 2 2 3 2 2 2 2 2 3 2 2 2 2 2 2 2 2 2 2 1 2 3 2 3 2 2 3 2 3 2 1 2 1
    ## [1555] 1 1 3 1 3 1 1 2 3 3 2 2 2 1 2 3 3 3 2 1 3 3 3 3 2 2 2 3 1 3 3 2 3 2 1 2 2
    ## [1592] 2 2 3 2 2 2 3 1 2 2 3 3 2 3 2 2 2 2 2 2 2 2 1 2 2 2 1 2 2 2 2 2 2 3 2 2 3
    ## [1629] 3 2 2 2 2 2 2 3 2 2 2 2 2 2 3 1 2 2 2 2 2 3 2 2 2 2 2 3 3 3 2 2 2 1 3 2 3
    ## [1666] 2 2 1 2 1 2 2 3 2 2 2 3 3 2 2 2 1 2 2 1 2 2 2 2 2 2 2 2 1 3 2 3 2 1 1 2 1
    ## [1703] 2 1 2 2 2 1 3 3 2 2 2 2 2 3 2 2 2 2 2 3 2 1 2 2 2 2 2 1 2 2 3 2 2 2 3 2 2
    ## [1740] 2 2 2 3 2 2 2 2 2 2 2 2 1 3 2 2 2 2 2 2 2 2 2 2 1 2 2 2 2 3 2 2 2 2 2 2 3
    ## [1777] 2 3 2 2 3 2 3 3 3 3 1 3 2 3 2 3 2 2 3 1 3 2 3 2 3 3 2 1 2 1 2 3 2 3 1 3 2
    ## [1814] 2 3 3 3 1 2 3 3 2 1 3 3 3 2 3 3 3 3 2 1 3 3 2
    ## 
    ## Initial cluster prototypes:
    ##           P1_1_0 P1_1_4 P2_1_9 ESCOLARIDADE IDADE CLASSE RAÇA RELIGIAO REGIAO
    ## Cluster 1      1      1      1            4     3      2    2       11      3
    ## Cluster 2      3      1      3            2     6      6    1        1      3
    ## Cluster 3      1      1      3            4     4      1    3        1      3
    ## 
    ## Final cluster prototypes:
    ##             P1_1_0   P1_1_4   P2_1_9 ESCOLARIDADE    IDADE   CLASSE     RAÇA
    ## Cluster 1 1.970645 1.203878 1.969479     3.096508 3.556820 3.337595 1.925854
    ## Cluster 2 2.115611 1.295166 2.306130     2.339520 4.565565 4.414390 2.196418
    ## Cluster 3 2.014052 1.253017 2.246958     2.904575 4.115065 3.478615 1.970600
    ##           RELIGIAO   REGIAO
    ## Cluster 1 9.474310 2.924949
    ## Cluster 2 1.475879 2.758183
    ## Cluster 3 1.470596 2.929265
    ## 
    ## Distance between the final cluster prototypes
    ##           Cluster 1 Cluster 2
    ## Cluster 2 66.968679          
    ## Cluster 3 64.511103  1.493794
    ## 
    ## Difference between the initial and final cluster prototypes
    ##               P1_1_0    P1_1_4     P2_1_9 ESCOLARIDADE      IDADE    CLASSE
    ## Cluster 1  0.9706449 0.2038783  0.9694793    -0.903492  0.5568196  1.337595
    ## Cluster 2 -0.8843894 0.2951659 -0.6938700     0.339520 -1.4344347 -1.585610
    ## Cluster 3  1.0140523 0.2530175 -0.7530418    -1.095425  0.1150646  2.478615
    ##                  RAÇA   RELIGIAO      REGIAO
    ## Cluster 1 -0.07414606 -1.5256903 -0.07505120
    ## Cluster 2  1.19641803  0.4758790 -0.24181718
    ## Cluster 3 -1.02939956  0.4705965 -0.07073545
    ## 
    ## Root Mean Squared Deviations (RMSD): 2.900249 
    ## Mean Absolute Deviation (MAD): 63.13155 
    ## 
    ## Membership degrees matrix (top and bottom 5 rows): 
    ##    Cluster 1 Cluster 2 Cluster 3
    ## 1 0.02880480 0.5191442 0.4520510
    ## 2 0.03347531 0.5987833 0.3677414
    ## 3 0.08125459 0.4767989 0.4419465
    ## 4 0.05850804 0.3555492 0.5859428
    ## 5 0.06733121 0.3699976 0.5626712
    ## ...
    ##       Cluster 1 Cluster 2 Cluster 3
    ## 1832 0.02578222 0.6815581 0.2926596
    ## 1833 0.71477039 0.1447097 0.1405200
    ## 1834 0.04781536 0.3333162 0.6188684
    ## 1835 0.04048625 0.3690057 0.5905080
    ## 1836 0.05345909 0.6254768 0.3210641
    ## 
    ## Descriptive statistics for the membership degrees by clusters
    ##           Size       Min        Q1      Mean    Median        Q3       Max
    ## Cluster 1  329 0.3558664 0.6517349 0.7471750 0.7902657 0.8558723 0.9803023
    ## Cluster 2  743 0.3744635 0.5148483 0.5577979 0.5596010 0.5947280 0.7380054
    ## Cluster 3  764 0.3884270 0.5219195 0.5573702 0.5559807 0.5913934 0.7432962
    ## 
    ## Dunn's Fuzziness Coefficients:
    ## dunn_coeff normalized 
    ##  0.4950595  0.2425893 
    ## 
    ## Within cluster sum of squares by cluster:
    ##        1        2        3 
    ## 3802.328 5653.133 5597.529 
    ## (between_SS / total_SS =  54.75%) 
    ## 
    ## Available components: 
    ##  [1] "u"          "v"          "v0"         "d"          "x"         
    ##  [6] "cluster"    "csize"      "sumsqrs"    "k"          "m"         
    ## [11] "iter"       "best.start" "func.val"   "comp.time"  "inpargs"   
    ## [16] "algorithm"  "call"

## FCM com inicíos múltiplos

O resultado do agrupamento contém algumas resultado que fornecem
informações sobre alguns componentes, como os valores da função, o
número de interações e o tempo de computação obtido com cada início do
algoritmo. O fragmento de código a seguir demonstra essas saídas.

    ## [1] 9312.466

    ## [1] 119

    ## [1] 1

    ## Summary for 'cluster.results'
    ## 
    ## Number of data objects:  1836 
    ## 
    ## Number of clusters:  3 
    ## 
    ## Crisp clustering vector:
    ##    [1] 2 2 2 3 3 3 3 3 3 3 3 3 1 3 1 1 3 2 3 3 3 2 2 1 1 1 1 2 3 3 3 2 3 3 3 1 3
    ##   [38] 1 3 1 2 2 3 2 3 3 3 2 1 1 3 3 3 2 1 3 2 3 3 3 1 3 1 1 2 1 1 1 3 2 2 1 3 2
    ##   [75] 2 3 3 3 1 2 2 2 3 2 3 3 3 2 3 1 2 3 3 3 3 3 3 2 3 3 3 2 3 1 3 3 3 1 3 1 2
    ##  [112] 3 3 3 2 3 3 3 3 3 2 2 3 2 1 1 3 3 1 3 2 2 3 3 1 2 1 2 3 2 1 3 3 3 3 3 2 3
    ##  [149] 3 3 1 2 3 2 2 1 3 2 3 3 1 1 3 3 2 3 1 2 3 2 2 3 2 3 2 2 2 3 3 3 3 3 2 3 2
    ##  [186] 3 1 3 3 2 3 2 3 2 3 1 3 2 3 3 3 3 3 3 3 3 3 3 3 1 1 3 2 3 3 3 3 3 1 3 1 3
    ##  [223] 2 2 2 1 3 1 3 3 2 3 1 3 3 3 3 1 2 3 3 3 3 3 2 3 2 3 1 3 3 3 3 2 3 3 1 3 3
    ##  [260] 1 2 3 1 3 1 3 2 2 3 3 2 3 1 2 2 3 2 3 3 2 3 3 3 2 3 3 3 1 3 3 3 3 3 3 3 3
    ##  [297] 3 2 3 3 3 3 2 3 3 3 2 3 3 3 3 3 2 3 3 2 3 2 2 1 3 3 3 3 3 3 3 2 3 3 2 3 2
    ##  [334] 2 3 3 3 1 2 3 2 1 2 1 3 3 3 3 3 3 3 3 1 3 3 2 2 1 3 3 2 3 2 2 3 2 1 3 3 1
    ##  [371] 3 3 1 2 3 3 1 2 3 2 1 3 3 3 2 3 2 2 3 3 3 3 3 2 3 1 3 2 2 2 2 2 2 3 3 2 3
    ##  [408] 1 1 2 2 3 3 3 1 2 2 1 2 2 2 3 2 3 2 2 3 2 2 2 2 3 3 3 1 2 3 2 2 3 1 3 3 3
    ##  [445] 1 2 3 2 2 3 2 2 2 2 3 2 2 2 3 3 1 2 3 1 1 2 3 1 3 1 1 3 2 2 2 3 2 3 1 2 2
    ##  [482] 3 2 3 2 3 3 3 3 1 3 2 3 2 2 1 2 2 2 3 1 3 1 3 3 2 3 2 3 2 3 3 2 3 2 3 2 2
    ##  [519] 1 2 3 3 3 3 2 2 1 2 1 2 1 1 2 1 3 1 3 3 1 2 1 3 2 1 3 1 3 3 3 3 2 1 3 1 2
    ##  [556] 3 1 3 1 2 1 2 3 3 1 3 2 1 2 3 2 2 3 1 2 3 1 3 1 2 2 3 2 3 3 3 1 2 2 2 1 2
    ##  [593] 1 1 1 3 3 3 1 3 2 3 1 3 2 1 3 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 2 2 2 3 1 3 3
    ##  [630] 2 2 3 2 3 2 3 3 3 3 3 2 3 3 3 3 3 3 3 1 1 3 3 3 3 1 3 3 3 3 2 3 2 3 3 1 3
    ##  [667] 3 1 2 2 1 3 3 1 2 3 3 3 2 1 2 2 2 1 3 3 3 2 1 2 2 3 1 3 3 3 3 1 3 1 3 3 1
    ##  [704] 3 1 3 2 3 2 3 1 1 3 3 1 3 1 3 2 1 2 2 3 3 3 1 1 2 1 1 3 3 2 3 3 3 3 2 3 3
    ##  [741] 3 3 1 3 3 2 3 2 3 2 3 3 2 1 3 3 3 3 2 1 3 1 2 2 1 3 3 3 1 2 3 1 2 3 3 3 1
    ##  [778] 2 3 2 3 2 3 2 3 3 3 2 2 2 3 1 2 2 1 2 3 1 1 3 2 2 2 3 2 3 1 2 3 2 1 2 2 3
    ##  [815] 3 3 3 3 3 1 3 2 3 2 1 2 1 2 1 3 3 2 2 1 1 3 2 3 3 3 3 1 1 3 2 3 1 3 3 2 2
    ##  [852] 2 2 3 2 3 2 3 3 1 2 3 1 2 1 2 2 3 3 1 2 2 2 3 2 1 3 3 1 1 2 3 2 2 2 3 3 3
    ##  [889] 2 3 2 3 2 1 2 1 3 3 2 2 2 2 2 1 3 2 3 2 1 1 2 2 2 2 2 3 2 3 3 1 3 2 2 3 2
    ##  [926] 3 1 1 2 2 3 3 3 1 3 1 1 3 1 2 2 2 1 1 2 1 1 2 2 1 3 2 3 2 2 2 2 3 2 2 3 2
    ##  [963] 3 2 3 3 1 2 2 3 2 2 1 3 3 2 2 3 3 2 3 3 3 2 1 2 2 3 2 2 2 2 3 2 1 3 2 2 3
    ## [1000] 2 1 2 2 2 1 2 2 2 3 2 3 3 1 3 2 3 2 2 3 2 1 3 3 1 3 2 3 3 2 2 3 2 3 3 2 3
    ## [1037] 3 1 3 1 2 3 1 3 3 2 3 1 2 2 3 3 2 3 3 1 3 3 1 3 2 2 2 3 2 3 2 3 1 1 2 3 1
    ## [1074] 2 1 1 1 3 1 1 1 3 2 3 3 2 1 2 3 3 2 2 2 1 3 2 3 3 3 2 2 3 2 3 1 2 3 3 1 2
    ## [1111] 2 3 3 3 1 2 2 2 2 3 2 3 3 3 2 3 2 1 2 2 3 2 2 3 1 3 3 1 2 2 2 3 2 2 2 3 1
    ## [1148] 1 2 2 2 3 2 1 2 2 1 3 1 2 2 1 2 2 3 2 3 3 1 2 2 3 3 3 3 3 1 2 2 2 1 3 2 3
    ## [1185] 3 2 3 2 3 3 2 3 1 3 1 3 3 2 2 2 2 2 2 2 1 2 1 2 3 3 3 2 2 3 1 1 2 2 3 1 2
    ## [1222] 3 1 1 2 2 2 3 3 2 2 2 2 3 1 3 1 2 3 1 1 3 1 1 2 3 3 2 2 1 2 3 1 3 1 3 2 2
    ## [1259] 2 1 1 3 3 3 3 1 1 3 3 2 2 2 3 2 2 2 1 1 3 1 3 2 2 2 1 3 2 3 2 1 2 2 3 2 1
    ## [1296] 3 1 3 2 2 2 3 2 3 2 1 3 1 3 2 3 1 3 2 3 3 3 3 2 1 2 2 1 2 1 3 2 2 1 2 2 2
    ## [1333] 2 2 3 3 3 2 2 3 2 2 3 2 2 2 3 2 2 2 2 1 1 2 2 3 2 3 1 2 3 3 1 3 2 2 2 3 2
    ## [1370] 2 2 2 3 2 2 2 2 2 3 1 3 2 3 3 2 2 2 2 3 2 2 2 2 3 2 2 3 3 3 2 3 3 1 2 2 3
    ## [1407] 1 2 2 3 3 3 1 3 3 2 2 2 2 1 2 1 2 3 3 1 3 2 2 3 2 1 3 3 2 3 2 1 2 1 1 2 3
    ## [1444] 3 3 2 2 2 3 2 2 1 3 2 3 2 3 1 3 3 2 3 2 1 1 2 2 1 1 3 2 2 3 2 1 3 2 2 3 1
    ## [1481] 2 3 2 3 2 3 1 2 3 3 2 3 3 1 3 1 3 2 2 2 2 2 3 3 3 2 3 1 3 3 3 2 3 1 3 1 2
    ## [1518] 3 3 2 2 2 2 3 2 2 2 2 2 3 2 2 2 2 2 2 2 2 2 2 1 2 3 2 3 2 2 3 2 3 2 1 2 1
    ## [1555] 1 1 3 1 3 1 1 2 3 3 2 2 2 1 2 3 3 3 2 1 3 3 3 3 2 2 2 3 1 3 3 2 3 2 1 2 2
    ## [1592] 2 2 3 2 2 2 3 1 2 2 3 3 2 3 2 2 2 2 2 2 2 2 1 2 2 2 1 2 2 2 2 2 2 3 2 2 3
    ## [1629] 3 2 2 2 2 2 2 3 2 2 2 2 2 2 3 1 2 2 2 2 2 3 2 2 2 2 2 3 3 3 2 2 2 1 3 2 3
    ## [1666] 2 2 1 2 1 2 2 3 2 2 2 3 3 2 2 2 1 2 2 1 2 2 2 2 2 2 2 2 1 3 2 3 2 1 1 2 1
    ## [1703] 2 1 2 2 2 1 3 3 2 2 2 2 2 3 2 2 2 2 2 3 2 1 2 2 2 2 2 1 2 2 3 2 2 2 3 2 2
    ## [1740] 2 2 2 3 2 2 2 2 2 2 2 2 1 3 2 2 2 2 2 2 2 2 2 2 1 2 2 2 2 3 2 2 2 2 2 2 3
    ## [1777] 2 3 2 2 3 2 3 3 3 3 1 3 2 3 2 3 2 2 3 1 3 2 3 2 3 3 2 1 2 1 2 3 2 3 1 3 2
    ## [1814] 2 3 3 3 1 2 3 3 2 1 3 3 3 2 3 3 3 3 2 1 3 3 2
    ## 
    ## Initial cluster prototypes:
    ##           P1_1_0 P1_1_4 P2_1_9 ESCOLARIDADE IDADE CLASSE RAÇA RELIGIAO REGIAO
    ## Cluster 1      1      1      1            4     3      2    2       11      3
    ## Cluster 2      3      1      3            2     6      6    1        1      3
    ## Cluster 3      1      1      3            4     4      1    3        1      3
    ## 
    ## Final cluster prototypes:
    ##             P1_1_0   P1_1_4   P2_1_9 ESCOLARIDADE    IDADE   CLASSE     RAÇA
    ## Cluster 1 1.970645 1.203878 1.969479     3.096508 3.556820 3.337595 1.925854
    ## Cluster 2 2.115611 1.295166 2.306130     2.339520 4.565565 4.414390 2.196418
    ## Cluster 3 2.014052 1.253017 2.246958     2.904575 4.115065 3.478615 1.970600
    ##           RELIGIAO   REGIAO
    ## Cluster 1 9.474310 2.924949
    ## Cluster 2 1.475879 2.758183
    ## Cluster 3 1.470596 2.929265
    ## 
    ## Distance between the final cluster prototypes
    ##           Cluster 1 Cluster 2
    ## Cluster 2 66.968679          
    ## Cluster 3 64.511103  1.493794
    ## 
    ## Difference between the initial and final cluster prototypes
    ##               P1_1_0    P1_1_4     P2_1_9 ESCOLARIDADE      IDADE    CLASSE
    ## Cluster 1  0.9706449 0.2038783  0.9694793    -0.903492  0.5568196  1.337595
    ## Cluster 2 -0.8843894 0.2951659 -0.6938700     0.339520 -1.4344347 -1.585610
    ## Cluster 3  1.0140523 0.2530175 -0.7530418    -1.095425  0.1150646  2.478615
    ##                  RAÇA   RELIGIAO      REGIAO
    ## Cluster 1 -0.07414606 -1.5256903 -0.07505120
    ## Cluster 2  1.19641803  0.4758790 -0.24181718
    ## Cluster 3 -1.02939956  0.4705965 -0.07073545
    ## 
    ## Root Mean Squared Deviations (RMSD): 2.900249 
    ## Mean Absolute Deviation (MAD): 63.13155 
    ## 
    ## Membership degrees matrix (top and bottom 5 rows): 
    ##    Cluster 1 Cluster 2 Cluster 3
    ## 1 0.02880480 0.5191442 0.4520510
    ## 2 0.03347531 0.5987833 0.3677414
    ## 3 0.08125459 0.4767989 0.4419465
    ## 4 0.05850804 0.3555492 0.5859428
    ## 5 0.06733121 0.3699976 0.5626712
    ## ...
    ##       Cluster 1 Cluster 2 Cluster 3
    ## 1832 0.02578222 0.6815581 0.2926596
    ## 1833 0.71477039 0.1447097 0.1405200
    ## 1834 0.04781536 0.3333162 0.6188684
    ## 1835 0.04048625 0.3690057 0.5905080
    ## 1836 0.05345909 0.6254768 0.3210641
    ## 
    ## Descriptive statistics for the membership degrees by clusters
    ##           Size       Min        Q1      Mean    Median        Q3       Max
    ## Cluster 1  329 0.3558664 0.6517349 0.7471750 0.7902657 0.8558723 0.9803023
    ## Cluster 2  743 0.3744635 0.5148483 0.5577979 0.5596010 0.5947280 0.7380054
    ## Cluster 3  764 0.3884270 0.5219195 0.5573702 0.5559807 0.5913934 0.7432962
    ## 
    ## Dunn's Fuzziness Coefficients:
    ## dunn_coeff normalized 
    ##  0.4950595  0.2425893 
    ## 
    ## Within cluster sum of squares by cluster:
    ##        1        2        3 
    ## 3802.328 5653.133 5597.529 
    ## (between_SS / total_SS =  54.75%) 
    ## 
    ## Available components: 
    ##  [1] "u"          "v"          "v0"         "d"          "x"         
    ##  [6] "cluster"    "csize"      "sumsqrs"    "k"          "m"         
    ## [11] "iter"       "best.start" "func.val"   "comp.time"  "inpargs"   
    ## [16] "algorithm"  "call"

Entre os resultados de inícios múltiplos do algoritmo, a melhor solução
é obtida do início fornecendo o valor mínimo da função e armazenada como
o resultado final do agrupamento dos inícios múltiplos do FCM.

### Cluster plot com fviz\_cluster

Existem algumas versões interessantes dos gráficos de cluster que estão
disponíveis em alguns pacotes do R. Um deles é a função fviz\_cluster do
pacote ‘factoextra’ (Kassambara & Mundt, 2017). Para usar esta função
para o resultado de agrupamento fuzzy, primeiro o objeto de agrupamento
fuzzy de ppclust deve ser convertido em objeto kmeans usando o ppclust2
do pacote ‘ppclust’ conforme mostrado na primeira linha do código:

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-8-2.png)<!-- -->

### Cluster plot with clustplot

O usuário também pode usar a função clusplot no pacote ‘cluster’
(Maechler et al, 2017) para traçar os resultados do agrupamento. Para
este propósito, o objeto de agrupamento fuzzy de ppclust deve ser
convertido em objeto “fanny” usando a função ppclust2 do pacote
‘ppclust’, conforme visto no código a seguir.

![](Fuzzy-clustering-markdown_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

### Validação dos resultados do clustering

A validação do processo de cluster é caracterizado por ser uma avaliação
da qualidade do resultado do agrupamento. Para este propósito, vários
índices de validade foram propostos na literatura do tema. Como o
clustering é uma análise de aprendizagem não supervisionada que não usa
nenhuma informação externa, os índices internos são usados para validar
os resultados do clustering. Embora muitos índices internos tenham sido
propostos originalmente para trabalhar com graus de pertinência
produzidos pelo K-means e suas variantes, a maioria desses índices não
pode ser usada para resultados de agrupamento fuzzy.

No ambiente R, Partition Entropy (PE), Partition Coefficient (PC) e
Modified Partition Coefficient (MPC) e Fuzzy Silhouette Index estão
disponíveis no pacote ‘fclust’ (Ferraro & Giordani, 2015) e podem ser
usados da seguinte forma:

    ## [1] "Entropia de Partição:  0.819390269289966"

    ## [1] "Coeficiente de Partição:  0.495059519081366"

    ## [1] "Fuzzy Silhouette Index:  0.548564296436306"

    ## [1] "Coeficiente de Partição Modificado: 0.24258927862205"

O Coeficiente de entropia pode ser interpretada como uma medida da
incerteza sobre o resultado da medição de um experimento. Assim, quanto
mais calibrada for a partição, maior será a entropia resultante. O
Coeficiente de Partição também varia de 0 (completamente fuzzy) a 1 (um
aglomerado bem definido). O coeficiente de partição modificado (MPC) é
uma distância euclidiana média entre os graus de filiação e o centro da
agrupamento fuzzy. Você deve selecionar a partição que maximize essas
estatísticas.

### Referências bibliográficas

<http://each.uspnet.usp.br/sarajane/wp-content/uploads/2015/11/avaliacao_clustering.pdf>

<https://towardsdatascience.com/hierarchical-clustering-on-categorical-data-in-r-a27e578f2995>

<https://rpubs.com/rahulSaha/Fuzzy-CMeansClustering>

<https://cran.r-project.org/web/packages/ppclust/vignettes/fcm.html#31_pairwise_scatter_plots>

<https://www.datanovia.com/en/lessons/determining-the-optimal-number-of-clusters-3-must-know-methods/>

<https://www.datanovia.com/en/blog/cluster-analysis-in-r-simplified-and-enhanced/>

<https://www.scielo.br/j/ciedu/a/tdqtM99VRQwTZY7YyM5RkYF/?lang=pt>
