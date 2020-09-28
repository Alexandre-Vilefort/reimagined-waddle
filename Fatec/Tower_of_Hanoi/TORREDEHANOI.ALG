Algoritmo "TorreDeHanoi"
// Disciplina   : [Algoritmos e Lógica de Programação]
// Professor   :Ely 
// Descrição   : Torre de Hanoi
// Autor(a)    : Alexandre
// Data atual  : 9/27/2020
Var

// Seção de Declarações das variáveis 

  PA: vetor [1..8,0..132] de inteiro //PA[i,j] i = nun do disco
                    //                         j = rodada
                    // o jogo tem m-1 turnos onde m = 2^n
                    // PA[i,0] passo para decidir a peça que move
                    // PA[i,m] guarda a torre que vai mover
                    // PA[i,m+1] passo para decidir a torre que move
                    // PA[i,m+2] guarda o número da peça

PB: vetor[1..8,1..3] de inteiro // variável para facilitar a visualização
l,i,j,k,n,m,t: inteiro              // variáveis inteiras para o cálculo
                    
Inicio

// Seção de Comandos, procedimento, funções, operadores, etc... 


   escreval("escreva no número de discos, máximo 7")
   leia(n)
   //n <- 3

   m <- int(2^n)
   
   para i de 1 ate n faca
        PA[i,m+2] <- i
        PA[i,0] <- int(2^i/2)
        se n%2 = 0 entao

             se i%2<>0 entao
                PA[i,m] <- 2
                PA[i,m+1] <- 1
             senao
                PA[i,m] <- 3
                PA[i,m+1] <- -1
             fimse
        senao
             se i%2=0 entao
                PA[i,m] <- 2
                PA[i,m+1] <- 1
             senao
                PA[i,m] <- 3
                PA[i,m+1] <- -1
             fimse
        fimse
        
   fimpara
   
   para i de 1 ate n faca
        para j de 1 ate m-1 faca
        
             se (PA[i,0]= (2^i)-1)   entao
                PA[i,j] <- PA[i,m]
                PA[i,0] <- 0
                PA[i,m] <- PA[i,m] + PA[i,m+1]
                
                se PA[i,m] = 4 entao
                   PA[i,m] <- 1
                fimse

                se PA[i,m] = 0 entao
                   PA[i,m] <- 3
                fimse
                
             senao
                PA[i,0] <- PA[i,0] + 1
             fimse
             
        fimpara
   fimpara
             
   para i de 1 ate n faca
        escreval()
        para j de 1 ate m -1 faca
             escreva(PA[i,j])
        fimpara
   fimpara
   
   escreval()
   escreval()

   //para j de 1 ate m-1 faca
   //     escreva("rodada:",j)
   //     para i de 1 ate n faca
   //
   //          se PA[i,j]<> 0 entao
   //             escreval("   mova a peça ", i,"   para a torre ",PA[i,j] )
   //          fimse
   //
   //     fimpara
   //fimpara
   
   //Parte gráfica
   //PB[i][j] vai simbolizar a torre real
   
   //colocar todos os discos na primeira torre
   para i de 1 ate n faca
        para j de 1 ate 3 faca
             se j = 1 entao
                  PB[i,1] <- i
             senao
                  PB[i,j] <- 0
             fimse
        fimpara
 fimpara
 
   
   //mover peça de uma torre para a outra usando o PA[i,j]
para l de 1 ate m faca // loop para mostrar a movimentação


   //Mostrar torre
   escreval()
   escreval("------------------")
   escreval()
   para i de 1 ate n faca
        escreval()
        para j de 1 ate 3 faca
             escreva(PB[i,j])
        fimpara
   fimpara
   
   //primeiro passo é apagar a peça que irá ser movida
   para i de 1 ate n faca
        para j de 1 ate 3 faca
             se (PA[i,l]<>0) entao
                para k de 1 ate n faca
                   se PB[k,j] = i entao
                      PB[k,j] <- 0
                   fimse
                fimpara
             fimse
        fimpara
   fimpara
   
   //mover peça para a nova posição
   // variável para que o código mova apenas uma peça
   t<-0
   para i de 1 ate n faca
        para j de 1 ate 3 faca
             se (j=PA[i,l]) e (PA[i,l]<>0) entao
                para k de n ate 1 passo -1 faca
                     se (PB[k,j]=0) e (t=0) entao
                        PB[k,j]<-i
                        t<-1
                     fimse
                fimpara
             fimse
        fimpara
   fimpara
   
   escreval()
   escreval()
   escreval("rodada:",l)
   se l = m entao
       escreval("A Torre está Completa")
   fimse
   para i de 1 ate n faca
        se (PA[i,l]<> 0) e (l<m) entao
           escreval("mova a peça ", i,"   para a torre ",PA[i,l] )
        fimse
   fimpara
   escreval()
   escreval()
   //timer(400)
   //timer(0)
   
fimpara // fim do loop na variável "l"
   
   

Fimalgoritmo

