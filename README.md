# Climate change in the perception of Brazilians: Results of a cluster analysis 

Hoping that this repository will contribute to a more transparent science and that students can exercise cluster analysis using real data, this repository has computational scripts and data used in the analysis of clusters of Climate Change in the Perception of Brazilians, a survey carried out by the Rio Institute of Technology and Society (ITS) together with IBOPE Intelligence and the Yale Program on Climate Change Communication. 

Homepage: https://www.percepcaoclimatica.com.br/



Data were processed using Rstudio 4.0.0 software 


Mudanças climáticas na percepção dos brasileiros: resultados de uma análise de agrupamento

Introdução
O Brasil tem sofrido com o crescente desmatamento e com as mudanças climáticas que isso acarreta. Apenas para ilustrar, de acordo com dados oficiais, o desmatamento no Brasil cresceu 9,5% de 2019–2020, representando um total de 11.000 km² de mata desmatada na Amazônia Legal. Na prática, já sentimos os efeitos do desmatamento. As históricas queimadas no pantanal brasileiro em 2020 e as ameaças de racionamento causado pela falta de chuva são casos que ilustram as consequências da devastação ambiental.

Um dos maiores desafios no combate às mudanças climáticas é o desenvolvimento de políticas eficazes para promover o envolvimento dos cidadãos e mudanças de comportamento (Boso, Hofflinger, Oltra, Alvarez, & Garrido, 2018; Boso, Oltra & Hofflinger, 2019; Reeve, Scott, Hine e Bhullar, 2013). Entretanto, esta não é uma tarefa fácil. Vários estudos expõem as limitações das políticas ambientais em promover mudanças comportamentais significativas e estáveis ​​dentro das populações, resultado de não se considerar a natureza distinta do público-alvo (Campbell & Corley , 2012; McKenzie-Mohr, 2011; Poortinga & Darnton, 2016). Quando as intervenções não reconhecem essas circunstâncias, o público-alvo normalmente reage de forma heterogênea (Poortinga & Darnton, 2016).

O estudo da segmentação tem sido frequentemente utilizado para melhorar a comunicação do risco no campo das percepções e atitudes em relação às mudanças climáticas (Hine et al., 2014; Hine et al., 2013). Por exemplo, o Modelo das Seis Américas do Aquecimento Global (Leiserowitz, Maibach, Roser-Renouf, & Hmielowski, 2012; Leiserowitz, Maibach, Roser-Renouf, & Smith, 2011) classifica a população em seis segmentos de acordo com crenças, preocupações e motivação para lutar contra a mudança climática: alarmado, preocupado, cauteloso, desengajado, duvidoso e desdenhoso.

Para planejar políticas públicas e ações afirmativas é necessário conhecer a percepção dos cidadãos sobre as mudanças climáticas (MCs). Maria, Cavalcanti & Eiró (2011) propõem que a percepção ambiental pública das mudanças climáticas está condicionada à percepção dos cidadãos sobre como as entendem e se sentem afetadas por ela. Desse modo, pesquisas sobre Percepção Ambiental Pública (PAP) são fundamentais para a avaliação de vulnerabilidades e discussão de medidas adaptativas.

Maria, Cavalcanti e Eiró (2011) ainda defendem pesquisas de percepção ambientais no contexto das mudanças climáticas, pois possibilitam: (a) disponibilizar elementos para a compreensão dos mecanismos de opção e comportamentos sociais; (b) criar medidas adaptativas e políticas públicas que traduzam os variados contextos existentes identificando neles quais problemas são prioritários; © identificar quais elementos da subjetividade são mais importantes para compreender o impacto negativo das MCs nas práticas culturais; (d) perceber que fatores influenciam sua forma de agir e interferir no nosso planeta; (e) implementar políticas públicas adequadas às características contextuais; (f) medir a predisposição pública a ações de enfrentamento e combate às MC;

No Brasil, os trabalhos nesse campo são restritos¹ ². Em resposta ao problema, o Instituto de Tecnologia e Sociedade do Rio (ITS) e o Programa de Mudança Climática da Universidade de Yale (Yale Program on Climate Change Communication), levantaram dados sobre a percepção da população brasileira a respeito de questões relativas ao clima e ao meio ambiente. Um survey (N = 2600) foi conduzido no Brasil, que incluiu questões relativas ao clima e meio ambiente e aspectos sociodemográficos.

Por meio de uma análise de clusters Fuzzy C-Means (FCM), foram identificados três segmentos populacionais que têm necessidades comuns e respondem de forma semelhante às mudanças climáticas. Esperamos que os achados desse estudo possam sedimentar o conhecimento sobre dos conglomerados de indivíduos em torno das mudanças climáticas e nortear a implementação de políticas públicas ao identificar tipos de públicos-alvo.

Dados e Métodos
Utilizamos a base de dados de percepção climática pelos brasileiros (N = 2600) elaborada pelo Instituto de Tecnologia e Sociedade do Rio (ITS) e Yale Program on Climate Change Communication. A base de dados é representativa para gênero e regiões do Brasil. Utilizamos a técnica de Fuzzy C-Means para dados categóricos a fim de identificar os principais conglomerados de respondentes.

Fuzzy C-Means (FCM) é um algoritmo soft-clustering proposto por Bezdek (1974; 1981). Ao contrário do algoritmo K-means, em que cada objeto de dados é membro de apenas um cluster, um objeto de dados é membro de todos os clusters com vários graus de associação difusa entre 0 e 1 no FCM. Consequentemente, os objetos de dados mais próximos dos centros dos clusters têm graus de pertinência mais elevados do que os objetos espalhados nas bordas dos clusters. É um método não supervisionado para agrupar dados em grupos não vistos anteriormente, extraindo assim novos insights sobre a percepção climática dos indivíduos.

O processo da análise se resume em 3 passos:

Cálculo da matriz de dissimilaridade — é sem dúvida a decisão mais importante no agrupamento, e todas as suas etapas futuras serão baseadas na matriz de dissimilaridade realizada;
Escolha do método de agrupamento;
Avaliação dos clusters.
Foram consideradas as seguintes variáveis: (a) Preocupação com o meio ambiente (Pergunta “O quanto você considera que está preocupado com o meio ambiente?”); (b) Percepção de conhecimento das mudanças climáticas (Pergunta “O quanto você sabe sobre aquecimento global ou mudanças climáticas?”); © Importância dada às mudanças climáticas (Pergunta “O quanto você acha importante a questão do aquecimento global?”); (d) Ideologia; (e) Escolaridade; (f) Religião; (g) Raça; (h) Idade; (i) Classe. As variáveis ambientais foram medidas em uma escala tipo Likert, com pontuações variando de 1 a 6.

Os dados foram analisados por meio do programa R.4.0.0. As variáveis foram analisadas por meio de testes normais, atípicos, univariados e multivariados, de acordo com as medidas de distância de Mahalanobis (Tabachnick & Fidell, 2007). O teste de Shapiro-Wilk (1965) revelou que nenhuma das variáveis atendeu à suposição de normalidade univariada (p <0,001), por isso usamos testes não paramétricos. Assim, a análise de agrupamento foi realizada usando o método FCM e distância euclidiana quadrada.

Após removermos os dados faltantes (N = 2155), estatísticas descritivas foram estimadas para cada cluster com o intuito de observar potenciais diferenças entre os grupos definidos. Em seguida, descrevemos e comparamos cada cluster com base em variáveis sociodemográficas e percepção das mudanças climáticas. Todos os scripts computacionais e dados estão disponíveis em um repositório do Github. Almejamos que, além das conclusões achadas neste artigo, os códigos sirvam como um guia de como fazer análises de clusters com dados categóricos no software Rstudio 4.0.0.

Matriz de Dissimilaridade
Esta é a espinha dorsal de um clustering. A matriz de dissimilaridade é uma expressão matemática de quão diferentes ou distantes os pontos em um conjunto de dados são uns dos outros, então pode-se posteriormente agrupar os mais próximos ou separar os mais distantes — o que é a ideia central do agrupamento. Embora seja muito fácil imaginar distâncias entre pontos de dados numéricos, dados categóricos (fatores em R) não parecem tão óbvios³. Aqui, utilizamos a distância euclidiana quadrada.

Acessando os clusters
Aqui, decide-se entre diferentes algoritmos de clustering e um número diferente de clusters. Como costuma acontecer com a avaliação, há mais de uma maneira possível, complementada pelo julgamento do pesquisador. Isso porque o número de clusters deve fazer sentido prático e a maneira como os dados são divididos em grupos também deve fazer sentido. Conceitualmente, quando os clusters são criados, se está interessado em grupos distintos de pontos de dados, de forma que a distância entre eles dentro dos clusters (ou compactação) seja mínima, enquanto a distância entre os grupos (separação) seja a maior possível.

Avaliação dos clusters
O processo de avaliação dos clusters criados é bastante semelhante com outras técnicas de agrupamentos. Em todos os casos haverá estatísticas específicas para isso. A interpretação é de que modelos que obtiverem a maior concentração dos casos e distância entre os aglomerados serão os mais eficientes. No caso do Fuzzy C-Means, utilizamos o Partition Entropy (PE), Partition Coefficient (PC), Modified Partition Coefficient (MPC) e Fuzzy Silhouette Index para validar o modelo.

Análise
Inicialmente, foi realizada uma análise visual dos clusters. A figura 1 apresenta a distribuição de cada caso por meio de um gráfico de dispersão. Essas informações fornecem evidências de que as variáveis selecionadas efetivamente separaram os indivíduos em três conglomerados, mas que estes detém certa sobreposição entre si.


Figura 1: Indivíduos por cluster
O protótipo inicial (o conjunto de amostras que representam um determinado cluster) do primeiro cluster (N = 743) é composto por indivíduos que acham saber mais ou menos sobre aquecimento global ou mudanças climáticas e que acham a questão ambiental muito importante. São indivíduos de escolaridade média, pertencentes à classe C1, jovens e de religião católica.

O protótipo inicial do segundo cluster (N =764) é composto por indivíduos que acham que sabem igual sobre aquecimento global ou mudanças climáticas e dão um pouco menos importância às questões das mudanças climáticas em comparação ao cluster 1. São indivíduos pertencentes à classe DE, pertencentes a outras religiões e mais velhos que quando comparado com o cluster 1. A variável identificação ideológica e escolaridade não teve mudanças substantivas.

O protótipo inicial do terceiro cluster (N = 329) é composto por indivíduos que acham que sabem menos sobre a questão ambiental quando comparados com os indivíduos dos outros clusters, mas que dão muita importância à questão ambiental. Esses indivíduos têm alta escolaridade quando comparado com os outros clusters, são de uma faixa etária entre 35–44 anos e pertencentes à classe C2. São indivíduos mais à esquerda do espectro ideológico e se classificam como ateus.

Por fim, a Figura 1 também nos fornece os discursos que mais destoam dos centróides dos clusters. Esses casos podem servir como guia para entender um pouco mais o perfil dos indivíduos que adotam um discurso mais distante dos demais. Apenas para ilustrar, o caso nº 987, que pertence ao cluster 1, é um indivíduo que avalia as questões ambientais de forma muito semelhante aos indivíduos do cluster 1, mas que sua raça destoa dos demais (ele se classificou como indígena, afastando-o do centróide de qualquer cluster). No caso do indivíduo 1599, do cluster 3, ele destoa dos demais pois acha que não sabe nada sobre a questão ambiental e acredita que ela seja nem um pouco importante. É um indivíduo de escolaridade baixa, idade avançada e pertencente a classe social C2. A identificação desses indivíduos e suas especificidades é importante para guiar a tomada de decisão e a implementação de políticas públicas

Posteriormente foi realizada uma análise de estatística descritiva dos clusters com o intuito de identificar diferenças significativas nas médias entre os conglomerados. Conforme podemos observar que, na figura 2, os clusters tiveram uma distribuição média bastante parecida em relação à temática ambiental.


Figura 2: média das variáveis “Preocupação com o meio-ambiente” e “Percepção de conhecimento sobre as mudanças climáticas” comparada entre clusters
Posteriormente, realizamos os testes de Chi-quadrado de Pearson para analisar se há uma associação significativa entre as variáveis e os conglomerados. Diferenças significativas foram encontradas em todos os grupos em todas as variáveis (p <0,001).

Por fim, uma análise de validação foi realizada para confirmar o desempenho do modelo. A PE pontuou 0.81, o PC pontuou 0.49, o Fuzzy Silhouette Index 0.54 e o MPC 0.24. Aqui, quanto maior os escores dos coeficientes, melhor a predição da classificação dos indivíduos em um determinado cluster. Em nosso modelo, identificamos uma estrutura razoável para ao menos três dos quatro coeficientes⁴.

Discussão
Para explorar a heterogeneidade nas reações do público às mudanças climáticas, uma análise de agrupamento foi usada para identificar segmentos populacionais com base nas percepções dos indivíduos em relação às MCs. Determinamos os perfis sociodemográficos dos diferentes grupos quanto a sexo, idade, escolaridade, renda, religião, região e ideologia. O objetivo final do estudo foi fornecer evidências para futuras intervenções políticas sobre como agregar cidadãos em segmentos que têm necessidades comuns e respondem de forma semelhante às mudanças climáticas.

As variáveis ambientais não mostraram ser estatisticamente significativas para a classificação dos indivíduos nos clusters. A figura 2 mostra que todos os segmentos populacionais tiveram média alta em relação à percepção das mudanças climáticas, gerando uma sobreposição na dimensão ambiental. Isso ocorre pois as divisões tendem a se sobrepor quando as preferências estão associadas a outras características, digamos religião, renda ou nível de escolaridade (Prezworski, 2020, pg 176).

Uma possível explicação para a proximidade em relação a percepção das mudanças climáticas é que as variáveis psicossociais, assim como os comportamentos delas derivados, são fortemente influenciados pelo contexto regional e pelas experiências cotidianas (Brody et al., 2004; Simone, Eyles, Newbold, Kitchen, & Williams, 2012; Williams & Bird, 2003). No caso do Brasil, assim como em todo o mundo, o efeito das mudanças climáticas já pode ser perceptível. O alagamento — causado pelo aumento ou pela irregularidade das chuvas — é a maneira mais evidente como o caos climático se mostra para todas as pessoas. Outros problemas ambientais são o clima seco, que acentua os casos de doenças respiratórias, e o aumento do nível do mar ilustram de forma consistente que as pessoas pobres são mais vulneráveis a eventos de desastre ambiental (Carter et al., 2007).

Dessa forma, nosso estudo mostra que as percepções climáticas variam de forma muito difusa entre os perfis socio-demográficos. Nosso estudo reforça o debate presente na literatura. Para se ter uma ideia, em relação a escolaridade, alguns trabalhos mostram que o ensino superior está relacionado a uma redução do senso de risco (Pilisuk e Acredolo 1988). Outros viram tendências exatamente opostas (Midden 1986). Em relação às mudanças dos climas especificamente, O’Connor et al. (1999) descobriram que o ensino superior estava associado a uma menor percepção de risco, enquanto Agho et al. (2010) descobrem que aqueles com diploma universitário têm mais probabilidade de pensar os efeitos sobre aquecimento global. Nosso estudo fornece informações preliminares de que o brasileiro pobre e de baixa escolaridade também reconhece o problema, apesar do preconceito que associa baixa escolaridade à incapacidade de pensar e entender o mundo.

Limitações
O estudo tem várias limitações. A análise de agrupamento é uma técnica estatística exploratória projetada para examinar os padrões atitudinais e comportamentais para segmentar o público em geral. Nesse sentido, os modelos de cluster geralmente descobrem padrões sem fornecer mecanismos explicativos. Assim, como em outros estudos de segmentação, o modelo apresentado é, em algum grau, ateórico. No entanto, apesar de reconhecermos essa limitação, acreditamos que argumentos podem ser auferidos dos resultados. Os fatores selecionados são consistentes com pesquisas anteriores e demonstraram ser úteis para prever comportamentos auto-relatados.

O objetivo do estudo era desenvolver um modelo de segmentação abrangente que pudesse ser aplicado para projetar comunicações mais personalizadas e iniciativas de mudança de comportamento. Entretanto, não deve ser assumido que os três segmentos têm preferências fixas, já que as motivações e circunstâncias das pessoas variam ao longo do tempo.

Destacamos que este estudo não esclarece questões em relação ao gênero dos indivíduos. A variável gênero não é útil para fins de fuzzy clustering (Ferraro, Giordani & Serafini, 2019). A demografia pode refletir categorias socioculturais importantes, conforme ilustrado pelo “efeito masculino conservador” (Jylhä e Akrami, 2015). O fenômeno de que um subgrupo demográfico específico mantém atitudes muito distintas em relação a uma série de questões de risco, desde mudanças climáticas e controle de armas até mercados financeiros, surgiu e foi encontrado principalmente nos Estados Unidos (Dunlap e McCright, 2011; Finucane et al., 2000); e essas categorias socioculturais podem significar coisas diferentes em países diferentes. Ou seja, um homem conservador nos Estados Unidos provavelmente não é sócio-culturalmente igual a um homem conservador em outro país. Como agenda de pesquisa, buscaremos responder como as questões de gênero se relacionam com à percepção das mudanças climáticas no Brasil.

Por fim, a amostra não foi selecionada de maneira completamente aleatória para a população brasileira, o que pode ter introduzido algum viés nos resultados. Os critérios de seleção utilizados, a amplitude relativa da amostra e o tamanho da amostra nos levam a supor que as estimativas produzidas são suficientemente precisas. Também não podemos presumir que os resultados deste estudo serão generalizados para o Brasil como um todo. Estudos adicionais serão necessários para estabelecer a validade externa de nossos achados.

Conclusões
O presente estudo fornece evidências preliminares que o reconhecimento da importância do problema climático não está exclusivamente associado a uma identificação ideológica, perfil educacional ou classe social em que um indivíduo está localizado. Nossos resultados indicam que a percepção de mudanças climáticas se comporta de forma difusa entre os diversos perfis de entrevistados. De uma perspectiva prática, isso não significa que intervenções devam ser feitas de forma homogênea, já que a percepção das mudanças climáticas varia de acordo como os indivíduos as sentem e às vivenciam. O estudo também fornece o perfil dos indivíduos que mais destoam dos demais. Por fim, o efeito sobreposição das preferências (Prezworski, 2020) parece fazer sentido para as questões das mudanças climáticas. Finalmente, embora nossos resultados pareçam ser pertinentes para algumas cidades e países, a validade externa dos resultados merece uma investigação mais aprofundada.

Referências
Você pode acessar as referências bibliográficas utilizadas neste trabalho clicando aqui.

Agradecimentos
Agradeço ao Instituto de Tecnologia e Sociedade do Rio (ITS) que pôde tornar esse trabalho viável. Também agradeço a Prof. Dra. Andrea Quirino Steiner, ao Prof. Dr. Rodrigo Martins, ao Prof. Dr. Dalson Figueiredo e ao Prof. Dr. Hugo Medeiros por todo o apoio disponibilizado na realização desta pesquisa.

Você pode ter acesso ao documento completo em: https://pburil.medium.com/mudan%C3%A7as-clim%C3%A1ticas-na-percep%C3%A7%C3%A3o-dos-brasileiros-resultados-de-uma-an%C3%A1lise-de-aglomerados-7d79265cd3a2
