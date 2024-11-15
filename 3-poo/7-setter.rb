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

  # getter

  def name
    @name
  end

  def price
    @price
  end

  def genero
    @genero
  end

  def multiplayer
    @multiplayer
  end

  def versions
    @versions
  end

  # setter

  def name=(new_name)
    @name = new_name
  end

  def price=(new_price)
    @price = new_price
  end

  def genero=(new_genero)
    @genero = new_genero
  end

  def multiplayer=(new_multiplayer)
    @multiplayer = new_multiplayer
  end

  def versions=(new_version)
    @versions = new_version
  end
  
end

game = Game.new
p game.name, game.versions, game.multiplayer


puts game.price=60

