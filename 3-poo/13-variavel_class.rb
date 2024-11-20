class Game
  # attr_reader :name, :genero, :price # Apenas leitura
  # attr_writer :name, :genero, :price # Apenas escrita
  attr_accessor :name, :genero, :price # Leitura e escrita

  @@num_jogos = 0

  def initialize(name, genero, multiplayer, versions=[], price)
    # Váriavel de instância
    @name = name
    @genero = genero
    @multiplayer = multiplayer
    @versions = versions
    @price = price

    @@num_jogos += 1
  end

  def to_s
    "#{@name}-#{@genero}-#{@multiplayer}-#{@versions}"
  end

  def techinical_sheet
    puts "Dados do jogo"
    puts "Nome do jogo: #{@name}"
    puts "Genero do jogo: #{@genero}"
    puts "Preco do jogo: #{@price}"
  end

  def self.num_jogos
    @@num_jogos
  end
end

game_one = Game.new("pes", "esporte", true, [2015, 2016], 100)

game_two = Game.new("fifa", "esporte", false, [2014, 2015], 200)
game_three = Game.new("fifa", "esporte", false, [2014,2015], 200)
game_four = Game.new("fifa", "esporte", false, [2014,2015], 200)


puts Game.num_jogos
