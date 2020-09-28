Algoritmo "BasketURSS"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : ELY
// Descrição   : aprender comando leia!
// Autor(a)    : Alexandre
// Data atual  : 2/9/2020

Var
// Seção de Declarações das variáveis 

   funcao moverdx (posicao,dx:caracter) :caracter
   var
   inicio
         posicao <- dx + posicao
         retorne posicao
   fimfuncao
   
   funcao moverdy (Voy,Psy,g,t: inteiro) :inteiro
   var   Psi: inteiro
         Intt,Ps: real
   inicio

         Psi <- Voy*t -g*t*t

         se Psi >= 0 entao
            retorne Psi
         senao
            retorne 0
         fimse
   fimfuncao
   
   procedimento espacovert(PosY,alt:inteiro)
   var j: inteiro
   inicio

         se  PosY >= 0 entao
           para j de 1 ate PosY faca
             escreval()
           fimpara
         fimse
      
   fimprocedimento
   
   procedimento moverx()
   var
   inicio
   
   
   fimprocedimento
   

   nome,bolo,bola,bolat,bolatt,Px,dx,dxo,enter,sn: caracter
   k,j,i,g,x,y,vx,voy,psy,alt,soma,vali,chavestop,ncestas: inteiro
   
   val: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

//Tela inical do jogo

Escreval("Bem Vindo")

Escreval("Por favor, Maximize a tela e aperte Enter para Continuar")//Na verdade pode ser

leia(enter)//Na verdade pode ser qualquer tecla

//Abertura e nome do jogo
timer(300)

 escreval("   _               _        _   _           _ _ ")
 escreval("  | |__   __ _ ___| | _____| |_| |__   __ _| | |")
 escreval("  | '_ \ / _` / __| |/ / _ \ __| '_ \ / _` | | |")
 escreval("  | |_) | (_| \__ \   <  __/ |_| |_) | (_| | | |")
 escreval("  |_.__/ \__,_|___/_|\_\___|\__|_.__/ \__,_|_|_|")
 
 escreval()
 escreval()
 
 timer(1000)
 timer(200)
 
 escreva("     ULTRA ")
 escreva("REALISTIC ")
 escreva("SIMULATOR ")
 escreva("SUPREME ")
 
  timer(0)
  
  escreval()
  escreval()
 
 //Objetivos
 
   escreval("Objetivo do jogo é fazer cestas")
   escreval()
   
   escreval("Para lançar a bola será necessário colocar uma força")
   escreval()
   escreval("Aperte Enter para continuar")
   
   leia(enter)
   
   
   limpatela


 //Colocar de novo o nome do jogo
 escreval()
 escreval()
 escreval()
 escreval()
   
 escreval("   _               _        _   _           _ _ ")
 escreval("  | |__   __ _ ___| | _____| |_| |__   __ _| | |")
 escreval("  | '_ \ / _` / __| |/ / _ \ __| '_ \ / _` | | |")
 escreval("  | |_) | (_| \__ \   <  __/ |_| |_) | (_| | | |")
 escreval("  |_.__/ \__,_|___/_|\_\___|\__|_.__/ \__,_|_|_|")

 escreval()
 escreval()

 escreva("     ULTRA ")
 escreva("REALISTIC ")
 escreva("SIMULATOR ")
 escreva("SUPREME ")
 
 escreval()
 escreval()

 escreval("Utilizando apenas números inteiros de 0 até 30")
 escreval()
 escreval("Digite a força para lançar a bola na vertical e aperte enter")
 escreval()
 leia(voy)

 escreval()
 escreval()
 
 escreval("Digite a força para lançar a bola na horizontal e aperte enter")
 leia(vx)
 escreval()
 escreval()
 
 escreval("Aperte enter para lançar a bola")
 leia(enter)

   //Colocar valor nas variáveis
   
   dxo<- "              "
   dx <- " "
   Px <- " "
   bola <- "O"
   bolatt <- "O"
  bolatt <- bolatt + dxo
   
   alt <-40
   //voy <- 15  ?????????????????????????
   //vx <-3
   
   psy<- 0
   g <- 2
   j<- 0
   ncestas <- 0
   i<-0

   limpatela
   
   //Aplicar Velocidade

   


   enquanto i < 6 faca
   
          i<-i+1
          se i > 1 entao //codigo para tentar de novo
                       //Recolocar valor nas variáveis
           bolatt <- "O"
           bolatt <- bolatt + dxo
           dx <- " "
           j<- 0
           psy<- 0
        
           escreval("Utilizando apenas números inteiros")
           escreval()
           escreval("Digite a força para lançar a bola na vertical e aperte enter")
           escreval()
           leia(voy)

           escreval()
           escreval()

           escreval("Digite a força para lançar a bola na horizontal e aperte enter")
           leia(vx)
           escreval()
           escreval()

           escreval("Aperte enter para lançar a bola")
           leia(enter)
        
        fimse
        
   
        para k de 1 até vx faca  //Aplicar Velocidade
             dx <- dx + Px
        fimpara
   
       chavestop <- 0
       bolatt <- dxo + bolatt
       enquanto chavestop < 2 faca
        j<- j+1
        limpatela

        espacovert(alt-psy,alt)
        escreval(bolatt)
        espacovert(psy,alt)
        psy <- moverdy (voy,psy,g,j)
        escreval("     / /                                     __|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)
        timer (200)
        timer (0)
        
        se psy <= 0 entao
           chavestop <-chavestop+1
        fimse
        bolatt <- moverdx(bolatt,dx)

      fimenquanto
      
      se j*vx <> 27 entao
          limpatela
          escreval()
          escreval()
          
          
          timer(100)
          escreval("             .ee$$$$$ee..                ")
          escreval("        .e$*''    $    ''*$e.       *Bola* ")
          escreval("      z$'*.       $         $$c            ")
          escreval("    z$'   *.      $       .P  ^$c             ")
          escreval("   d'      *      $      z'     'b            ")
          escreval("  $'        b     $     4%       ^$           ")
          escreval(" d%         *     $     P         '$          ")
          escreval(".$          'F    $    J'          $r        ")
          escreval("4L...........b....$....$...........J$         ")
          escreval("$F           F    $    $           4$         ")
          escreval("4F          4F    $    4r          4P        ")
          escreval("^$          $     $     b          $%        ")
          escreval(" 3L        .F     $     'r        JP         ")
          escreval("  *c       $      $      3.      z$          ")
          escreval("   *b     J'      $       3r    dP           ")
          escreval("    ^$c  z%       $        'c z$'           ")
          escreval("     '*$L        $        .d$'              ")
          escreval("         '*$ee..  $  ..ze$P'  Alexandre 2020'")
          escreval("             ''*******''                    ")

          escreval()
          escreval()

          timer(0)
          
          escreval("    Quer pegar a bola e tentar de novo? (S/N)")
          leia(sn)
          se sn = "n" então
             i<-6
          fimse
          
          escreval()
          escreval()

      fimse


   
   

   timer (150)
   timer (0)
   limpatela

   se j*vx = 27 entao

        ncestas <- ncestas + 1
   
        espacovert(alt,alt)
   
        escreval("     / /                                     _O|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)
   

   timer (150)
   timer (0)
   limpatela
   

   
        espacovert(alt,alt)

        escreval("     / /                                     __|   ")
        escreval("    O/                                      vO`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)

   

   timer (150)
   timer (0)
   limpatela
   

   
        espacovert(alt,alt)

        escreval("     / /                                     __|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                        O  |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)

   

   timer (150)
   timer (0)
   limpatela


   
        espacovert(alt,alt)

        escreval("     / /                                     __|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                       O  |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)

   

   timer (150)
   timer (0)
   limpatela


   
        espacovert(alt,alt)

        escreval("     / /                                     __|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                      O  |  ")
        escreval("_________________________________________ ______|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)

   

   timer (150)
   timer (0)
   limpatela


   
        espacovert(alt,alt)

        escreval("     / /                                     __|   ")
        escreval("    O/                                      vv`\   ")
        escreval("    &                                           |  ")
        escreval("    |\                                          |  ")
        escreval("    | |                                         |  ")
        escreval("_________________________________________ ___O__|__")
        escreval("Coordenada X = ",j*vx)
        escreval("Coordenada Y = ",psy)
        
        escreval()
        escreval()
        
        escreval("PARABENS!!!")
        
        escreval()
        escreval()
        
        escreval("    Quer pegar a bola e tentar de novo? (S/N)")
        leia(sn)
        se sn = "n" então
           i<-6
        fimse

        escreval()
        escreval()
        
       limpatela
     fimse
       


fimenquanto


 //leia(enter)

 escreval("Obrigado por jogar")
 
 escreval()
 escreval()
 
 escreval("Pontuação Final: ", ncestas," Acertos" )
 

 
 timer(1500)
 timer(0)
 
 
 

Fimalgoritmo