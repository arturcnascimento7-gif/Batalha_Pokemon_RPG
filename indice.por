programa {
    inclua biblioteca Graficos --> graficos
    inclua biblioteca Util --> util
    const inteiro LARGURA = 800
    const inteiro ALTURA = 500
    funcao inicio() {
      graficos.iniciar_modo_grafico(verdadeiro)
      graficos.definir_dimensoes_janela(LARGURA, ALTURA)
      graficos.definir_titulo_janela("Batalha Pokemóm RPG")
      /**
       * Tipos de variáveis: 
       * Inteiro: tipo de responsável por conter o números inteiros, sem casa decimal, exemplo: idade = 12 
       * Real: tipo responsável por conter números com casas decimais, exemplo: preco = 5.99
       * Caractere: tipo responsável por conter apenas um caracter, exemplo: sexo = "M"
       * Cadeia: tipo responsável por conter texto, exemplo: nome = "João"
       * Lógico: tipo responsável por conter valores lógicos, exemplo: cadastrado = falso
       * Vazio: Tipo responsável para executar funções que não retornam valor, exemplo: função escreva
       */

      cadeia nome_meu_pokemon = "Pikachu"
      inteiro hp_meu_pokemon = 100
      inteiro max_hp_meu_pokemon = 100
      // Informações do pokemón inimigo
      cadeia nome_pokemon_inimigo = "Gengar" 
      inteiro hp_pokemon_inimigo = 120
      inteiro max_hp_pokemon_inimigo = 120
      /**
       * Operadores aritméticos
       * Soma(+): realizar a soma de dois ou mais números, exemplo: soma = 2 + 2 
       * Subtração (-) = realizar a subtração de dois ou mais números, exemplo:  sub = 3 - 2
       * Multiplicação (*) = realizar a multiplicação de dois números, exemplo: multiplicação = 2 * 2
       * Divisão (/) = realizar a divisão de dois números, exemplo: divisão = 2/2
       * Môdulo (%) = calcula o resto de uma divisão, exemplo = 3 % 2
       */
  
      inteiro dano = util.sorteia(22, 35)
      hp_pokemon_inimigo = hp_pokemon_inimigo - dano
      escreva("=== FICHA DA BATALHA ===", "\n")
      escreva(nome_meu_pokemon, " - HP: ", hp_meu_pokemon, "/", max_hp_meu_pokemon, "\n")
      escreva(nome_pokemon_inimigo, " - HP: ", hp_pokemon_inimigo, "/", max_hp_pokemon_inimigo, " (sofreu ",dano, " de dano)", "\n")
       

      // Desenho do céu da tela
      graficos.definir_cor(graficos.criar_cor(150, 216, 250))
      graficos.desenhar_retangulo(0, 0, LARGURA, 260, falso, verdadeiro)
     
      // Desenho da grama da tela do jogo
      graficos.definir_cor(graficos.criar_cor(120, 190, 100))
      graficos.desenhar_retangulo(0, 260, LARGURA, 240, falso, verdadeiro)
    
      // Desenhar a grama do pokemón inimigo
      graficos.definir_cor(graficos.criar_cor(90, 130, 80))
      graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)
    
      // Desenhar a grama do nosso pokemón
      graficos.definir_cor(graficos.criar_cor(80, 120, 70))
      graficos.desenhar_elipse(90, 365, 290, 75, verdadeiro)
    
      // Desenho inicial do pokemón inimigo
      graficos.definir_cor(graficos.criar_cor(110, 60, 150))
      graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)
     
      // Desenho inicial do nosso pokemón
      graficos.definir_cor(graficos.criar_cor(255, 215, 0))
      graficos.desenhar_retangulo(180, 300, 110, 100, falso, verdadeiro)

      // Textos de informações dos pokemóns
      graficos.definir_cor(graficos.COR_PRETO)
      graficos.desenhar_texto(60, 55, nome_pokemon_inimigo + " HP: " + hp_pokemon_inimigo + "/" + max_hp_pokemon_inimigo)
      
      graficos.desenhar_texto(480, 372, nome_meu_pokemon + " HP: " + hp_meu_pokemon + "/" + max_hp_meu_pokemon)

      
      // Esta função é responsável por mostrar a tela do jogo
      graficos.renderizar()
      escreva("Janela gráfica! Utilizando a biblioteca de gráfico do Portugol! ")
      // A função aguarde irá executar a janela por 5 segundos
      util.aguarde(5000)

     

    }
}