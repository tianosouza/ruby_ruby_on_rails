class Game

  # attr_reader :name, :genero, :price # Apenas leitura
  # attr_writer :name, :genero, :price # Apenas escrita
  attr_accessor :name, :genero, :price # Leitura e escrita

  def initialize(name, genero, multiplayer, versions=[], price)
    # Váriavel de instância
    @name = name
    @genero = genero
    @multiplayer = multiplayer
    @versions = versions
    @price = price
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
end

class DownloadGame < Game
  attr_accessor :dowload_size
  
  def initialize(name, genero, multiplayer, versions=[], price, dowload_size)
    super(name, genero, multiplayer, versions, price)
    @dowload_size = dowload_size
    
  end
end

game_one = Game.new("pes", "esporte", true, [2015, 2016], 100)
puts game_one.to_s
game_one.techinical_sheet

game_two = DownloadGame.new("fifa", "esporte", false, [2014, 2015], 200, 10)
puts game_two.to_s
game_two.techinical_sheet