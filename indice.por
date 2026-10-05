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
      
      // Esta função é responsável por mostrar a tela do jogo
      graficos.renderizar()
      escreva("Janela gráfica! Utilizando a biblioteca de gráfico do Portugol! ")
      // A função aguarde irá executar a janela por 5 segundos
      util.aguarde(5000)

     

    }
}