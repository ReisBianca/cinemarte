Algoritmo "Cinemarte"

//Sistema: Cinemarte
//Autora: Bianca Reis Santana do Nascimento
//Data de início: 05/06/2024
//Última atualização: 17/06/2024

Var
   //Variáveis de menu
   opcaoMenu, opcaoConfiguracao, opcaoCliente, senha: inteiro
   voltarMenu, voltarCliente, teclaVoltar, teraFilmeSala1, teraFilmeSala2, configurarSalas, resetarSalas: caractere

   //Variáveis contadoras & validadoras
   i, j, lugarVazioSala1, lugarVazioSala2: inteiro
   salasConfiguradas: logico

   //Variáveis referentes às salas
   nomeFilme1, nomeFilme2 : caractere
   sala1, sala2: vetor[1..5, 1..5] de caractere

   //Variáveis compra do ingresso
   subtotalMeia, subtotalInteira, total: real
   comprarSala1, comprarSala2, resp, nomeAux, lugar, parte1, parte2: caractere
   qtdeIngressos, qtdeMeia, qtdeInteira, linha, coluna, tipoIngresso, v, opcaoCompra, sala, lugarVazioMatrizAux: inteiro
   sair, lugarVazio: logico
   matrizAux: vetor[1..5, 1..5] de caractere

   //RESETAR AS SALAS
Procedimento ResetarAsSalas()
inicio
   teraFilmeSala1 <- ""
   teraFilmeSala2 <- ""
   nomeFilme1 <- ""
   nomeFilme2 <- ""
   salasConfiguradas <- falso

   sala1[1,1] <- "A1"
   sala2[1,1] <- "A1"

   sala1[1,2] <- "A2"
   sala2[1,2] <- "A2"

   sala1[1,3] <- "A3"
   sala2[1,3] <- "A3"

   sala1[1,4] <- "A4"
   sala2[1,4] <- "A4"

   sala1[1,5] <- "A5"
   sala2[1,5] <- "A5"

   sala1[2,1] <- "B1"
   sala2[2,1] <- "B1"

   sala1[2,2] <- "B2"
   sala2[2,2] <- "B2"

   sala1[2,3] <- "B3"
   sala2[2,3] <- "B3"

   sala1[2,4] <- "B4"
   sala2[2,4] <- "B4"

   sala1[2,5] <- "B5"
   sala2[2,5] <- "B5"

   sala1[3,1] <- "C1"
   sala2[3,1] <- "C1"

   sala1[3,2] <- "C2"
   sala2[3,2] <- "C2"

   sala1[3,3] <- "C3"
   sala2[3,3] <- "C3"

   sala1[3,4] <- "C4"
   sala2[3,4] <- "C4"

   sala1[3,5] <- "C5"
   sala2[3,5] <- "C5"

   sala1[4,1] <- "D1"
   sala2[4,1] <- "D1"

   sala1[4,2] <- "D2"
   sala2[4,2] <- "D2"

   sala1[4,3] <- "D3"
   sala2[4,3] <- "D3"

   sala1[4,4] <- "D4"
   sala2[4,4] <- "D4"

   sala1[4,5] <- "D5"
   sala2[4,5] <- "D5"

   sala1[5,1] <- "E1"
   sala2[5,1] <- "E1"

   sala1[5,2] <- "E2"
   sala2[5,2] <- "E2"

   sala1[5,3] <- "E3"
   sala2[5,3] <- "E3"

   sala1[5,4] <- "E4"
   sala2[5,4] <- "E4"

   sala1[5,5] <- "E5"
   sala2[5,5] <- "E5"
FimProcedimento

// RESETAR MATRIZ AUXILIAR
Procedimento ResetarMatrizAux()
inicio
   matrizAux[1,1] <- "A1"
   matrizAux[1,2] <- "A2"
   matrizAux[1,3] <- "A3"
   matrizAux[1,4] <- "A4"
   matrizAux[1,5] <- "A5"
   matrizAux[2,1] <- "B1"
   matrizAux[2,2] <- "B2"
   matrizAux[2,3] <- "B3"
   matrizAux[2,4] <- "B4"
   matrizAux[2,5] <- "B5"
   matrizAux[3,1] <- "C1"
   matrizAux[3,2] <- "C2"
   matrizAux[3,3] <- "C3"
   matrizAux[3,4] <- "C4"
   matrizAux[3,5] <- "C5"
   matrizAux[4,1] <- "D1"
   matrizAux[4,2] <- "D2"
   matrizAux[4,3] <- "D3"
   matrizAux[4,4] <- "D4"
   matrizAux[4,5] <- "D5"
   matrizAux[5,1] <- "E1"
   matrizAux[5,2] <- "E2"
   matrizAux[5,3] <- "E3"
   matrizAux[5,4] <- "E4"
   matrizAux[5,5] <- "E5"
FimProcedimento

//EXIBIR SALA 1
Procedimento ExibirSala1()
inicio
   Escreval("Sala 1: ", nomeFilme1)
   Escreval("")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva("[", sala1[i,j], "] ")
      FimPara
      Escreval("")
   FimPara
   Escreval("")
FimProcedimento

//EXIBIR SALA 2
Procedimento ExibirSala2()
inicio
   Escreval("Sala 2: ", nomeFilme2)
   Escreval("")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva("[", sala2[i,j], "] ")
      FimPara
      Escreval("")
   FimPara
   Escreval("")
FimProcedimento

//EXIBIR MATRIZ AUXILIAR
Procedimento ExibirMatrizAux()
inicio
   Escreval("Sala", sala,": ", nomeAux)
   Escreval("")
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Escreva("[", matrizAux[i,j], "] ")
      FimPara
      Escreval("")
   FimPara
   Escreval("")
FimProcedimento

//VERIFICAR LUGARES VAZIOS NA SALA 1
Procedimento VerificarLugaresSala1()
inicio
   lugarVazioSala1 <- 0
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Se (sala1[i, j] <> "XX") entao
            lugarVazioSala1 <- lugarVazioSala1 + 1
         FimSe
      FimPara
   FimPara
FimProcedimento

//VERIFICAR LUGARES VAZIOS NA SALA 1
Procedimento VerificarLugaresSala2()
inicio
   lugarVazioSala2 <- 0
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Se (sala2[i, j] <> "XX") entao
            lugarVazioSala2 <- lugarVazioSala2 + 1
         FimSe
      FimPara
   FimPara
FimProcedimento

//VERIFICAR LUGARES VAZIOS NA MATRIZ AUXILIAR
Procedimento VerificarLugaresMatrizAux()
inicio
   lugarVazioMatrizAux <- 0
   Para i <- 1 ate 5 faca
      Para j <- 1 ate 5 faca
         Se (matrizAux[i, j] <> "XX") entao
            lugarVazioMatrizAux <- lugarVazioMatrizAux + 1
         FimSe
      FimPara
   FimPara
FimProcedimento

//MENU CINEMARTE
Procedimento MenuCinemarte()
inicio
   Repita
      Escreval("------*Cinemarte*------")
      Escreval("|                     |")
      Escreval("| 1- Configurar salas |")
      Escreval("| 2- Modo cliente     |")
      Escreval("| 3- Sair             |")
      Escreval("|                     |")
      Escreval("------*Cinemarte*------")
      Escreval("")
      Escreva("Opção..: ")
      Leia(opcaoMenu)
      Escreval("------*Cinemarte*------")

      Escolha(opcaoMenu)

      Caso 1
         Repita
            LimpaTela
            Escreva("Digite a senha administradora..:")
            Leia(senha)

            Se (senha <> 152478) entao
               Escreval("")
               Escreval("Senha inválida!")
               Escreval("")

               VoltarMenuCinemarte()
            FimSe

         Ate(senha = 152478)

         senha <- 0
         LimpaTela
         MenuConfiguracao()

      Caso 2
         LimpaTela
         MenuCliente()

      Caso 3
         LimpaTela
         voltarMenuCinemarte()
      OutroCaso
         LimpaTela
         Escreval("Opção inválida! Selecione novamente abaixo.")
         Escreval("")
      FimEscolha

   Ate (opcaoMenu = 1) ou (opcaoMenu = 2) ou(opcaoMenu = 3)
FimProcedimento

//MENU DE CONFIGURAÇÃO (MODO ADMINISTRADOR)
Procedimento MenuConfiguracao()
inicio

   Repita
      Escreval("--------*Configuração Cinemarte*-------")
      Escreval("|                                     |")
      Escreval("| 1- Configurar                       |")
      Escreval("| 2- Reset das salas                  |")
      Escreval("| 3- Voltar ao menu                   |")
      Escreval("|                                     |")
      Escreval("--------*Configuração Cinemarte*-------")
      Escreval("")
      Escreva("Opção..: ")
      Leia(opcaoConfiguracao)
      Escreval("------*Cinemarte*------")

      Escolha(opcaoConfiguracao)

      Caso 1
         Se (salasConfiguradas = falso) entao
            LimpaTela
            ConfigurarAsSalas()
         Senao
            LimpaTela
            Repita
               Escreval("As salas já foram configuradas. Deseja configurar novamente? [S/s - N/n]")
               Leia(configurarSalas)

               Se (configurarSalas = "s") ou (configurarSalas = "S") entao
                  LimpaTela
                  ConfigurarAsSalas()
               Senao
                  Se (configurarSalas = "n") ou (configurarSalas = "N") entao
                     VoltarMenuConfiguracao()
                  Senao
                     LimpaTela
                     Escreval("Opção inválida. Digite novamente.")
                     Escreval("")
                  FimSe
               FimSe
            Ate(configurarSalas = "s") ou (configurarSalas = "S") ou (configurarSalas = "n") ou (configurarSalas = "N")
         FimSe

      Caso 2
         LimpaTela
         VerificarLugaresSala1()
         VerificarLugaresSala2()

         Se (lugarVazioSala1 <> 25) ou (lugarVazioSala2 <> 25) entao
            Repita
               Escreval("Existem salas com lugares ocupados. Deseja realmente resetá-las? [S/s - N/n]")
               Leia(resetarSalas)

               Se (resetarSalas = "s") ou (resetarSalas = "S") entao
                  ResetarAsSalas()
               Senao
                  Se (resetarSalas = "n") ou (resetarSalas = "N") entao
                     LimpaTela
                     Escreval("Ok!")
                     VoltarMenuConfiguracao()
                  Senao
                     LimpaTela
                     Escreval("Opção inválida! Digite novamente.")
                  FimSe
               FimSe
            Ate(resetarSalas = "s") ou (resetarSalas = "S") ou (resetarSalas = "n") ou (resetarSalas = "N")
         Senao
            Se (SalasConfiguradas = verdadeiro) entao
               Repita
                  Escreval("As salas estão vazias, mas foram configuradas. Deseja realmente resetá-las? [S-s / N-n]")
                  Leia(resetarSalas)

                  Se (resetarSalas = "s") ou (resetarSalas = "S") entao
                     ResetarAsSalas()
                  Senao

                     Se(resetarSalas = "n") ou (resetarSalas = "N") entao
                        LimpaTela
                        Escreval("Ok!")
                        VoltarMenuConfiguracao()
                     Senao
                        LimpaTela
                        Escreval("Opção inválida! Digite novamente.")
                        Escreval("")
                     FimSe
                  FimSe

               Ate(resetarSalas = "s") ou (resetarSalas = "S") ou (resetarSalas = "n") ou (resetarSalas = "N")
            Senao
               ResetarAsSalas()
               Escreval("As salas já estavam vazias, mas o reset foi realizado.")
            FimSe
         FimSe

         VoltarMenuConfiguracao()

      Caso 3
         LimpaTela
         MenuCinemarte()

      OutroCaso
         LimpaTela
         Escreval("Opção inválida. Digite novamente.")
         Escreval("")
      FimEscolha

   Ate (opcaoConfiguracao = 1) ou (opcaoConfiguracao = 2) ou (opcaoConfiguracao = 3)
FimProcedimento

//MENU CLIENTE
Procedimento MenuCliente()
inicio
   Repita
      Escreval("------*Cinemarte*------")
      Escreval("|                     |")
      Escreval("| 1- Escolher sessão  |")
      Escreval("| 2- Sair             |")
      Escreval("|                     |")
      Escreval("------*Cinemarte*------")
      Escreval("")
      Escreva("Opção..: ")
      Leia(opcaoCliente)

      Se (opcaoCliente = 1) entao

         MenuIngressos()

      Senao
         Se (opcaoCliente = 2) entao

            LimpaTela

            Repita
               Escreval("Para sair, é necessário inserir a senha administradora.")
               Escreval("")
               Escreval("Deseja realmente sair? [S/s - N/n]")
               Leia(voltarCliente)

               LimpaTela

               Se (voltarCliente = "s") ou (voltarCliente = "S") entao
                  Repita
                     Escreval("Certo! Digite a senha..: ")
                     Leia(senha)

                     Se (senha <> 152478) entao
                        LimpaTela
                        Escreval("Senha inválida!")
                        Escreval("")
                     FimSe
                  Ate(senha = 152478)

                  senha <- 0

                  LimpaTela
                  MenuCinemarte()
               Senao
                  Se (voltarCliente = "n") ou (voltarCliente = "N") entao
                     MenuCliente()
                  Senao
                     LimpaTela
                     Escreval("Opção inválida! Digite novamente.")
                     Escreval("")
                  FimSe
               FimSe
            Ate(voltarCliente = "s") ou  (voltarCliente = "S") ou (voltarCliente = "n") ou (voltarCliente = "N")
         Senao
            LimpaTela
            Escreval("Opção inválida! Digite novamente.")
            Escreval("")
         FimSe
      FimSe
   Ate (opcaoCliente = 1) ou (opcaoCliente = 2)

   opcaoCliente <- 0
FimProcedimento

//MENU COMPRAR INGRESSO NAS SALAS
Procedimento MenuIngressos()
inicio
   LimpaTela

   Escreval("Sessões disponíveis..: ")
   Escreval("")

   Se (teraFilmeSala1 = "") ou (teraFilmeSala1 = "n") ou (teraFilmeSala1 = "N") entao
      Se (teraFilmeSala2 = "") ou (teraFilmeSala2 = "n") ou (teraFilmeSala2 = "N") entao
         Escreval("Desculpe. Não há nenhuma sessão disponível no momento.")
         VoltarMenuCliente()
      FimSe
   FimSe

   Se (teraFilmeSala1 = "s") ou  (teraFilmeSala1 = "S") entao
      ExibirSala1()
   FimSe

   Se (teraFilmeSala2 = "s") ou  (teraFilmeSala2 = "S") entao
      ExibirSala2()
   FimSe

   Se (teraFilmeSala1 = "s") ou  (teraFilmeSala1 = "S") entao
      ComprarIngressoSala1()
   FimSe

FimProcedimento

//VOLTAR AO MENU PRINCIPAL
Procedimento VoltarMenuCinemarte()
inicio
   Repita
      Escreval("Voltar ao menu? [S/s - N/n]")
      Leia(voltarMenu)

      Se (voltarMenu <> "s") e (voltarMenu <> "S") e (voltarMenu <> "n") e (voltarMenu <> "N") entao
         LimpaTela
         Escreval("Opção inválida! Selecione novamente abaixo.")
         Escreval("")
      FimSe


   Ate (voltarMenu = "s") ou (voltarMenu = "S") ou (voltarMenu = "n") ou (voltarMenu = "N")

   Se (voltarMenu = "s") ou (voltarMenu = "S") entao
      voltarMenu <- ""
      opcaoMenu <- 0
      LimpaTela
      MenuCinemarte()
   Senao
      LimpaTela
      Escreval("Programa encerrado.")
   FimSe
FimProcedimento

//VOLTAR AO MENU DE CONFIGURACAO
Procedimento VoltarMenuConfiguracao()
inicio
   Repita
      Escreval("")
      Escreval("Para voltar digite a tecla V..: ")
      Leia(teclaVoltar)

      Se (teclaVoltar <> "v") ou (teclaVoltar <> "V") entao
         LimpaTela
         Escreval("Opção inválida. Digite novamente.")
      FimSe
   Ate (teclaVoltar = "v") ou (teclaVoltar = "V")

   teclaVoltar <- ""
   LimpaTela
   MenuConfiguracao()
FimProcedimento

//VOLTAR AO MENU CLIENTE
Procedimento VoltarMenuCliente()
inicio
   Repita
      Escreval("")
      Escreval("Para voltar digite a tecla V..: ")
      Leia(teclaVoltar)

      Se (teclaVoltar <> "v") ou (teclaVoltar <> "V") entao
         LimpaTela
         Escreval("Opção inválida. Digite novamente.")
      FimSe
   Ate (teclaVoltar = "v") ou (teclaVoltar = "V")

   teclaVoltar <- ""
   LimpaTela
   MenuCliente()
FimProcedimento

//CONFIGURAR AS SALAS
Procedimento ConfigurarAsSalas()
inicio
   Escreval("--------*Configuração Cinemarte*-------")
   Escreval("")
   ExibirSala1()
   Escreval("")
   ExibirSala2()
   Repita
      Escreval("")
      Escreval("A sala 1 terá filme? [S/s - N/n]")
      Leia(teraFilmeSala1)

      Se (teraFilmeSala1 <> "s") e (teraFilmeSala1 <> "S") e (teraFilmeSala1 <> "n") e (teraFilmeSala1 <> "N") entao
         LimpaTela
         Escreval("--------*Configuração Cinemarte*-------")
         Escreval("")
         ExibirSala1()
         Escreval("")
         ExibirSala2()
         Escreval("Opção inválida! Digite novamente.")
      FimSe
   Ate (teraFilmeSala1 = "s") ou (teraFilmeSala1 = "S") ou (teraFilmeSala1 = "n") ou (teraFilmeSala1 = "N")


   Se (teraFilmeSala1 = "s") ou (teraFilmeSala1 = "S") entao
      Escreval("")
      Escreval("Certo! Digite o nome do filme [Sala 1]...: ")
      Leia(nomeFilme1)
   FimSe

   Repita
      Escreval("")
      Escreval("A sala 2 terá filme? [S/s - N/n]")
      Leia(teraFilmeSala2)

      Se (teraFilmeSala2 <> "s") e (teraFilmeSala2 <> "S") e (teraFilmeSala2 <> "n") e (teraFilmeSala2 <> "N") entao
         LimpaTela
         Escreval("--------*Configuração Cinemarte*-------")
         Escreval("")
         ExibirSala1()
         Escreval("")
         ExibirSala2()
         Escreval("")
         Escreval("A sala 1 terá filme? [S/s - N/n]")
         Escreval("S/s")
         Escreval("")
         Escreval("Nome do filme da sala 1..: ", nomeFilme1)
         Escreval("")
         Escreval("Opção inválida! Digite novamente.")
      FimSe
   Ate (teraFilmeSala2 = "s") ou (teraFilmeSala2 = "S") ou (teraFilmeSala2 = "n") ou (teraFilmeSala2 = "N")


   Se (teraFilmeSala2 = "s") ou (teraFilmeSala2 = "S") entao
      Escreval("")
      Escreval("Certo! Digite o nome do filme [Sala 2]...: ")
      Leia(nomeFilme2)
   FimSe

   salasConfiguradas <- verdadeiro
   VoltarMenuConfiguracao()
FimProcedimento

//VOLTAR MENU INGRESSO
Procedimento VoltarMenuIngresso()
inicio

   Repita
      Escreval("")
      Escreval("Para voltar digite a tecla V..: ")
      Leia(teclaVoltar)

      Se (teclaVoltar <> "v") ou (teclaVoltar <> "V") entao
         LimpaTela
         Escreval("Opção inválida. Digite novamente.")
      FimSe
   Ate (teclaVoltar = "v") ou (teclaVoltar = "V")

   teclaVoltar <- ""
   LimpaTela
   MenuIngressos()

FimProcedimento

//SELECIONAR O LUGAR E O TIPO DE INGRESSO
Procedimento SelecionarIngresso()
inicio
   Repita
      ExibirMatrizAux()

      Repita
         resp <- ""
         lugar <- ""
         parte1 <- ""
         parte2 <- ""
         linha <- 0
         coluna <- 0
         tipoIngresso <- 0
         lugarVazio <- falso
         sair <- falso

         Repita
            Escreva("Digite o lugar que deseja..: ")
            Leia (lugar)

            Se (lugar <> "A1") e (lugar <> "A2") e (lugar <> "A3") e (lugar <> "A4") e (lugar <> "A5") e (lugar <> "B1") e (lugar <> "B2") e (lugar <> "B3") e (lugar <> "B4") e (lugar <> "B5") e (lugar <> "C1") e (lugar <> "C2") e (lugar <> "C3") e (lugar <> "C4") e (lugar <> "C5") e (lugar <> "D1") e (lugar <> "D2") e (lugar <> "D3") e (lugar <> "D4") e (lugar <> "D5") e (lugar <> "E1") e (lugar <> "E2") e (lugar <> "E3") e (lugar <> "E4") e (lugar <> "E5") entao
               LimpaTela
               ExibirMatrizAux()
               Escreval("Opção inválida! Digite novamente.")
               Escreval("")

            Senao
               parte1 <- Copia(lugar, 1, 1)
               parte2 <- Copia(lugar, 2, 1)

               Se (parte1 = "A") entao
                  linha <- 1
               Senao
                  Se (parte1 = "B") entao
                     linha <- 2
                  Senao
                     Se (parte1 = "C") entao
                        linha <- 3
                     Senao
                        Se (parte1 = "D") entao
                           linha <- 4
                        Senao
                           Se (parte1 = "E") entao
                              linha <- 5
                           FimSe
                        FimSe
                     FimSe
                  FimSe
               FimSe

               Se (parte2 = "1") entao
                  coluna <- 1
               Senao
                  Se (parte2 = "2") entao
                     coluna <- 2
                  Senao
                     Se (parte2 = "3") entao
                        coluna <- 3
                     Senao
                        Se (parte2 = "4") entao
                           coluna <- 4
                        Senao
                           Se (parte2 = "5") entao
                              coluna <- 5
                           FimSe
                        FimSe
                     FimSe
                  FimSe
               FimSe

            FimSe

         Ate (lugar = "A1") ou (lugar = "A2") ou (lugar = "A3") ou (lugar = "A4") ou (lugar = "A5") ou (lugar = "B1") ou (lugar = "B2") ou (lugar = "B3") ou (lugar = "B4") ou (lugar = "B5") ou (lugar = "C1") ou (lugar = "C2") ou (lugar = "C3") ou (lugar = "C4") ou (lugar = "C5") ou (lugar = "D1") ou (lugar = "D2") ou (lugar = "D3") ou (lugar = "D4") ou (lugar = "D5") ou (lugar = "E1") ou (lugar = "E2") ou (lugar = "E3") ou (lugar = "E4") ou (lugar = "E5")

         Se (matrizAux[linha, coluna] = "XX") entao
            LimpaTela
            ExibirMatrizAux()
            Escreval("Esse lugar está ocupado. Selecione outro.")
            Escreval("")
         Senao
            lugarVazio <- verdadeiro
            matrizAux[linha, coluna] <- "XX"

            LimpaTela
            ExibirMatrizAux()
            Escreval("")
            Escreval("Lugar selecionado..: ", lugar)

            Repita
               Escreval("")
               Escreval("Qual o tipo do ingresso?")
               Escreval("1 - Inteira R$ 30.00")
               Escreval("2 - Meia    R$ 15.00")
               Escreval("")
               Leia(tipoIngresso)

               Se (tipoIngresso = 1) entao
                  qtdeInteira <- qtdeInteira + 1
                  subtotalInteira <- subtotalInteira + 30
               Senao
                  Se (tipoIngresso = 2) entao
                     qtdeMeia <- qtdeMeia + 1
                     subtotalMeia <- subtotalMeia + 15
                  Senao
                     limpaTela
                     ExibirMatrizAux()
                     Escreval("")
                     Escreval("Lugar selecionado..: ", lugar)
                     Escreval("")
                     Escreval("Opção inválida! Digite novamente.")
                  FimSe
               FimSe

            Ate (tipoIngresso = 1) ou (tipoIngresso = 2)
         FimSe
      Ate (lugarVazio = verdadeiro)

      VerificarLugaresMatrizAux()
      Se (lugarVazioMatrizAux = 0) entao
         sair <- verdadeiro
         LimpaTela
         Escreval("A sala já está cheia :(. Finalize a compra ou volte.")
         Escreval("")
      Senao
         Repita
            Escreval("Deseja comprar outro ingresso? [S-s / N-n]")
            Leia(resp)

            Se (resp = "s") ou (resp = "S") entao
               LimpaTela
            Senao
               Se(resp = "n") ou (resp = "N") entao
                  sair <- verdadeiro
                  LimpaTela
               Senao
                  LimpaTela
                  ExibirMatrizAux()
                  Escreval("")
                  Escreval("Lugar selecionado..: ", lugar)
                  Escreval("Tipo do ingresso..: ", tipoIngresso)
                  Escreval("")
                  Escreval("Opção inválida! Digite novamente.")
                  Escreval("")
               FimSe
            FimSe
         Ate(resp = "s") ou (resp = "S") ou (resp = "n") ou (resp = "N")
      FimSe
   FimSe
Ate(sair = verdadeiro)

qtdeIngressos <- qtdeMeia + qtdeInteira
total <- subtotalMeia + subtotalInteira
FimProcedimento

//EXIBIR OS ITENS DA COMPRA
Procedimento ExibirItensCompra()
inicio
   Escreval("-------------------------------------------------")
   Escreval("Total de ingressos..:          ", qtdeIngressos)
   Se (qtdeMeia > 0) entao
      Escreval("Total de meias    ..:          ", qtdeMeia)
      Escreval("Subtotal meias     R$           ", subtotalMeia:3:2)
   FimSe
   Se (qtdeInteira > 0) entao
      Escreval("Total de inteiras ..:          ", qtdeInteira)
      Escreval("Subtotal inteiras  R$           ", subtotalInteira:3:2)
   FimSe
   Escreval("")
   Escreval("Total a pagar      R$           ", total:3:2)
   Escreval("-------------------------------------------------")
   Escreval("")

FimProcedimento

//COMPRAR INGRESSO NA SALA 1
Procedimento ComprarIngressoSala1()
inicio
   qtdeIngressos <- 0
   qtdeInteira <- 0
   qtdeMeia <- 0
   subtotalMeia <- 0
   subtotalInteira <- 0
   total <- 0
   comprarSala1 <- ""
   sala <- 0
   nomeAux <- ""

   Repita
      Escreval("")
      Escreval("Deseja comprar ingresso para ", nomeFilme1 ,"? [S/s - N/n]")
      Leia(comprarSala1)

      Se (comprarSala1 = "s") ou (comprarSala1 = "S") entao
         nomeAux <- nomeFilme1
         sala <- 1

         Para i <- 1 ate 5 faca
            Para j <- 1 ate 5 faca
               matrizAux[i, j] <- sala1[i, j]
            FimPara
         FimPara

         VerificarLugaresSala1()
         Se (lugarVazioSala1 > 0) entao

            LimpaTela
            SelecionarIngresso()

            ExibirItensCompra()

            Repita
               Escreval("1- Finalizar compra")
               Escreval("2- Voltar ao menu de filmes")
               Leia(opcaoCompra)

               Se (opcaoCompra = 1) entao
                  Para i <- 1 ate 5 faca
                     Para j <- 1 ate 5 faca
                        Se (sala1[i, j] <> "XX") e (matrizAux[i, j] = "XX") entao
                           sala1 [i, j] <- "XX"
                        FimSe
                     FimPara
                  FimPara

                  ResetarMatrizAux()

                  Escreval("Compra finalizada com sucesso!")
                  VoltarMenuIngresso()
               Senao
                  Se(opcaoCompra = 2) entao
                     LimpaTela
                     Escreval("Compra cancelada!")
                     VoltarMenuIngresso()
                  Senao
                     LimpaTela
                     ExibirItensCompra()
                     Escreval("Opção inválida! Digite novamente.")
                     Escreval("")
                  FimSe
               FimSe
            Ate(opcaoCompra = 1) ou (opcaoCompra = 2)
         Senao
            Escreval("")
            Escreval("Não há lugares disponíveis nesta sessão :(.")
            ComprarIngressoSala2()
         FimSe

      Senao
         Se (comprarSala1 = "n") ou (comprarSala1 = "N") entao

            Se (teraFilmeSala2 = "s") ou (teraFilmeSala2 = "S") entao
               Escreval("")
               Escreval("Ok!")
               ComprarIngressoSala2()
            Senao
               Escreval("")
               Escreval("Ok!")
               VoltarMenuCliente()
            FimSe

         Senao
            LimpaTela
            Escreval("Sessões disponíveis..: ")
            Escreval("")

            ExibirSala1()

            Se (teraFilmeSala2 = "s") ou  (teraFilmeSala2 = "N") entao
               ExibirSala2()
            FimSe

            Escreval("Opção inválida! Digite novamente.")

         FimSe
      FimSe
   Ate (comprarSala1 = "s") ou (comprarSala1 = "S") ou (comprarSala1 = "n") ou (comprarSala1 = "N")

FimProcedimento

//COMPRAR INGRESSO NA SALA 2
Procedimento ComprarIngressoSala2()
inicio
   qtdeIngressos <- 0
   qtdeInteira <- 0
   qtdeMeia <- 0
   subtotalMeia <- 0
   subtotalInteira <- 0
   total <- 0
   comprarSala1 <- ""
   sala <- 0
   nomeAux <- ""

   Repita
      Escreval("")
      Escreval("Deseja comprar ingresso para ", nomeFilme2 ,"? [S/s - N/n]")
      Leia(comprarSala2)

      Se (comprarSala2 = "s") ou (comprarSala2 = "S") entao
         nomeAux <- nomeFilme2
         sala <- 2

         Para i <- 1 ate 5 faca
            Para j <- 1 ate 5 faca
               matrizAux[i, j] <- sala2[i, j]
            FimPara
         FimPara

         VerificarLugaresSala2()
         Se (lugarVazioSala2 > 0) entao

            LimpaTela
            SelecionarIngresso()

            ExibirItensCompra()

            Repita
               Escreval("1- Finalizar compra")
               Escreval("2- Voltar ao menu de filmes")
               Leia(opcaoCompra)

               Se (opcaoCompra = 1) entao
                  Para i <- 1 ate 5 faca
                     Para j <- 1 ate 5 faca
                        Se (sala2[i, j] <> "XX") e (matrizAux[i, j] = "XX") entao
                           sala2[i, j] <- "XX"
                        FimSe
                     FimPara
                  FimPara

                  ResetarMatrizAux()

                  Escreval("Compra finalizada com sucesso!")
                  VoltarMenuIngresso()
               Senao
                  Se(opcaoCompra = 2) entao
                     LimpaTela
                     Escreval("Compra cancelada!")
                     VoltarMenuIngresso()
                  Senao
                     LimpaTela
                     ExibirItensCompra()
                     Escreval("Opção inválida! Digite novamente.")
                     Escreval("")
                  FimSe
               FimSe
            Ate(opcaoCompra = 1) ou (opcaoCompra = 2)

         Senao
            Escreval("Não há lugares disponíveis nesta sessão :(.")
            VoltarMenuCliente()
         FimSe

      Senao
         Se (comprarSala2 = "n") ou (comprarSala2 = "N") entao
            Escreval("")
            Escreval("Ok!")
            VoltarMenuCliente()
         Senao
            LimpaTela
            Escreval("Sessões disponíveis..: ")
            Escreval("")

            ExibirSala1()
            ExibirSala2()

            Escreval("Deseja comprar ingresso para ", nomeFilme1 ,"? [S/s - N/n]")
            Escreval("N/n")
            Escreval("")
            Escreval("Opção inválida! Digite novamente.")
         FimSe
      FimSe

   Ate (comprarSala2 = "s") ou (comprarSala2 = "S") ou (comprarSala2 = "n") ou (comprarSala2 = "N")

FimProcedimento

//CÓDIGO PRINCIPAL
inicio
   ResetarAsSalas()
   MenuCinemarte()
Fimalgoritmo