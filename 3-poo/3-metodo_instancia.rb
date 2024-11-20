class Game
  def initialize
    puts "Jogo criado!"
    # Váriavel de instância
    @name = 'pes'
    @genero = 'esporte'
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def information
    puts "O jogo é do genero #{@genero} e as versoes: #{@versions}"
  end

  def techinical_sheet
    puts "Dados do jogo"
    puts "Nome do jogo: #{@name}"
    puts "Genero do jogo: #{@genero}"
    puts "Preco do jogo: #{@price}"
  end
end

game = Game.new
p game
puts game.information
puts game.techinical_sheet