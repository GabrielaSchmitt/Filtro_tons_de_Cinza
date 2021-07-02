# Filtro tons de cinza

## Introdução

Olá, este algoritmo foi desenvolvido por Gabriela Cristina Schmitt e Jennifer Mayara de Paiva Goberski com o intuito escolher uma imagem colorida (RGB) e adicionar o filtro de Tons de Cinza. 
Como foi desenvolvido no primeiro semestre de ciência da computação, **a nomenclatura da linguagem Portugol foi modificada em sala** . 

## Instruções passadas para a construção do algoritmo 

Para realizar um Processamento Digital de Imagens (PDI) é necessário aplicar diversos filtros nas imagens. Um dos tipos de filtro mais conhecidos é o que transforma uma imagem colorida em tons de cinza. A análise de imagens em tons de cinza muitas vezes pode ser mais interessante para a extração de características, que podem ser base para reconhecimento de padrões em imagens, como é feito em reconhecimento de doenças como câncer, identificação de faces humanas, movimentação de bandidos pelas ruas, placas de carros, digitais ou até mesmo para íris humana, por exemplo.

Existem vários processos para a transformação de imagens em tons de cinza, cada um apresentando um diferente resultado. Essa avaliação diz respeito a criação de um filtro real e funcional para transformação de imagens coloridas em tons de cinza.

Para tal, é necessário termos a representação de uma imagem colorida e de uma imagem em tons de cinza, exatamente como é feito em várias bibliotecas gráficas. Mas, como não utilizaremos uma biblioteca gráfica, criaremos as estruturas nós mesmos.

Para representação de uma imagem colorida, precisaremos definir matrizes que representem as 3 informações básicas de uma imagem colorida no padrão mais utilizado no mundo: o RGB (vermelho, verde e azul). Assim, teremos 3 matrizes para definir uma imagem colorida, uma matriz chamada R, outra G e a terceira chamada B. A junção dessas 3 informações é que gera uma cor de um ponto na tela e cada um dos elementos de cada matriz pode ter um valor entre 0 e 255. Para representar a imagem de forma que consigamos testar sem perdermos muito tempo na avaliação, teremos cada uma dessas matrizes com apenas 3x3 de tamanho. Ou seja, 3 matrizes de 3x3 cada uma, para representar o R, o G e o B de um ponto colorido.

Para representação de uma imagem em tons de cinza é bem mais fácil. Uma imagem em tons de cinza possui apenas 1 informação para cada ponto, um inteiro que vai de 0 a 255. Assim, teremos apenas uma matriz 3x3 de inteiros para representar a imagem em tons de cinza.

Exemplo:
 

O programa deverá possuir um menu com as seguintes opções:

1. Preencher a imagem colorida

2. Transformar em Tons de Cinza

3. Imprimir as 2 imagens

4. Sair

A opção 1 é para digitarmos os dados da imagem colorida pelo teclado. Isso é necessário, pois não carregaremos uma imagem do computador. Ou seja, nessa opção temos que criar um módulo (uma função ou um procedimento) que receba a imagem colorida (as 3 matrizes) por referência (como sempre é feito quando se passa uma matriz para um módulo) e dentro desse módulo pediremos para o usuário digitar todos os dados da imagem colorida. Explicando ainda mais: o usuário digitará os valores de R, G e B de todos os pontos da imagem com valores entre 0 e 255 (deve ser feito verificação para que não tenha valores fora desses limites). Como nossa imagem tem 3x3 e cada ponto tem R, G e B, o usuário preencherá 9 Rs, 9 Gs e 9 Bs. Para isso utilize laços de repetição dentro do módulo e informe para o usuário qual tipo de informação e em qual coordenada ele está digitando o valor.

A opção 2 deve chamar um módulo (função ou procedimento) que é o coração do nosso algoritmo, o módulo para transformar em tons de cinza. Esse módulo deverá receber as matrizes tanto da imagem colorida quanto da de tons de cinza, por referência. O processo que utilizaremos é bastante simples, porém é um dos processos mais utilizados para essa transformação. Considerando que C é o valor do ponto na imagem de tons de cinza, a fórmula para transformação é a seguinte:

**_C = (R + G + B)/3_**

Ou seja, deve-se pegar os valores de R, G e B de cada ponto na imagem colorida, aplicar a fórmula (média aritmética) e o resultado colocar na imagem em tons de cinza. Para esse processo deve-se utilizar laços de repetição.

Resumindo, essa opção pegará a imagem colorida, representada pelas nossas matrizes de imagem colorida, transformará em tons de cinza e gravará na imagem em tons de cinza, representada pela nossa matriz de tons de cinza.

A opção 3 deve chamar um módulo que imprime as 2 imagens na tela no seguinte formato, por exemplo (**com números aleatórios criados pelo professor**):

*** Imagem Colorida (R,G,B) ***

5,200,3 | 2,4,130 | 2,0,1

2,2,3 | 8, 200,250 | 255,255,255

202,205,255 | 145,103,109 | 198,177,130

*** Imagem em Tons de Cinza ***

69 | 255 | 0

7 | 9 | 1

189 | 204 | 111

