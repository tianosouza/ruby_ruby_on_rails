=begin
  A palavra chave self no contexto do código fornecido
  refere-se à instância atual da class. Ela pode ser usada
  para se referir a métodos ou variáveis de instância.
=end

class Game
  puts "Jogo criado! #{self}"
  def initialize
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

  def to_s
    "#{@name}-#{@genero}-#{@multiplayer}-#{@versions}"
  end

  def details
    puts "Detalhes do jogo: #{self}"
  end
end

game = Game.new
p game
puts game.information
puts game.techinical_sheet
puts game.details