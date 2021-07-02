PROCEDIMENTO rgb (INTEIRO: r[3][3],
                  INTEIRO: g[3][3],
                   INTEIRO: b[3][3])
VAR
   INTEIRO: i, j;
INICIO
// *** Para leitura da matriz R ***
   PARA (i = 0; i < 3; i++) FA�A
      PARA (j = 0; j < 3; j++) FA�A
       //*** repita == verifica��o do limite ***
         REPITA
            ESCREVA(�Informe o valor da coordenada �, i, �, �, j, � da matriz R: �);
            LEIA(r[i][j]);
         ENQUANTO (r[i][j] < 0 OU r[i][j] > 255)
      FIM_PARA
    FIM_PARA

 //*** Para leitura da matriz G ***
    PARA (i = 0; i < 3; i++) FA�A
      PARA (j = 0; j < 3; j++) FA�A
      //*** repita == verifica��o do limite ***
         REPITA
	       ESCREVA(�Informe o valor da coordenada �, i, �, �, j, � da matriz G: �);
             LEIA(g[i][j]);
          ENQUANTO (g[i][j] < 0 OU g[i][j] > 255)
       FIM_PARA
     FIM_PARA

  //*** Para leitura da matriz B ***
     PARA (i = 0; i < 3; i++) FA�A
         PARA (j = 0; j < 3; j++) FA�A
            REPITA
		    ESCREVA(�Informe o valor da coordenada �, i, �,�, j, � da matriz B: �);
               LEIA(b[i][j]);
            ENQUANTO (b[i][j] < 0 OU b[i][j] > 255)
         FIM_PARA
     FIM_PARA

 FIM.

 PROCEDIMENTO cinza(INTEIRO: r[3][3], 
                    INTEIRO: g[3][3],
                    INTEIRO: b[3][3], 
                    INTEIRO: c[3][3])     
 VAR
    INTEIRO: i, j;
 INICIO
    PARA (i = 0; i < 3; i++) FA�A
       PARA (j = 0; j < 3; j++) FA�A
          c[i][j]= (r[i][j]+g[i][j]+b[i][j])/3;
       FIM_PARA
    FIM_PARA

 FIM.

 PROCEDIMENTO impressora(INTEIRO: r[3][3], 
                          INTEIRO: g[3][3],
                          INTEIRO: b[3][3], 
                          INTEIRO: c[3][3])
 VAR
    INTEIRO: i, j;
 INICIO
 //*** impress�o da Imagem Colorida (R,G,B) ***
    PARA (i = 0; i < 3; i++) FA�A
       PARA (j = 0; j < 3; j++) FA�A
          ESCREVA(�*Impress�o da imagem colorida: �);
          SE (j == 2) ENT�O
             ESCREVA(r[i][j], �, �, g[i][i],�, �, b[i][j], �  \n�);
          SEN�O
             ESCREVA(r[i][j],�, �, g[i][i],�, �, b[i][j], � | �);
          FIM_SE
       FIM_PARA
    FIM_PARA
  

 //*** impress�o matriz cinza ***
   PARA (i = 0; i < 3; i++) FA�A
      PARA (j = 0; j < 3; j++) FA�A
         ESCREVA(*Impress�o da imagem em tons de cinza: �);
         SE (j == 2) ENT�O
            ESCREVA(c[i][j], �  \n�);
         SEN�O
            ESCREVA(c[i][j], � �, � | �, � �);
         FIM_SE
      FIM_PARA
   FIM_PARA

 FIM.

ALGORITMO montagemPDI
VAR
	INTEIRO: r[3][3], g[3][3], b[3][3], c[3][3],op,v;
INICIO
    v = 0;
            REPITA
          ESCREVA(�Escolha uma das op��es abaixo: �);
          ESCREVA(�Preencher a imagem colorida [1]�);
          ESCREVA(�Transformar em tons cinzas [2]�);
          ESCREVA(�Imprimir as duas imagens [3]�);
          ESCREVA(�Sair [4]�);
          LEIA(op);
        
          ESCOLHA(op)
             CASO 1: 
                rgb (r,g,b);
                v = 1 ; 
             CASO 2:
                SE (v == 1) ENT�O
                   cinza (r,g,b,c);
                   v = 2;
                SEN�O
                   ESCREVA(�Enquanto a op��o 1 n�o for realizada, n�o � poss�vel realizar a op��o 2. �);
                FIM_SE
             CASO 3:
                SE (v == 2) ENT�O
                   impressora (r,g,b,c);
                SEN�O
                   ESCREVA(�Enquanto a op��o 1 e 2 n�o forem realizadas, n�o � poss�vel realizar a op��o 3. �);
                FIM_SE
             CASO 4:
                	ESCREVA(�Encerrando o programa.�);
             CASO_CONTRARIO:
                ESCREVA(�A op��o digitada � inv�lida.�);
          FIM_ESCOLHA

       ENQUANTO(op != 4) 

     FIM.