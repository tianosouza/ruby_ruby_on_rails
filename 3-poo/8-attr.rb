class Game

  # attr_reader :name, :genero, :price # Apenas leitura
  # attr_writer :name, :genero, :price # Apenas escrita
  attr_accessor :name, :genero, :price # Leitura e escrita

  def initialize
    # Váriavel de instância
    @name = 'pes'
    @genero = 'esporte'
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def to_s
    "#{@name}-#{@genero}-#{@multiplayer}-#{@versions}"
  end
end

game = Game.new
p game

puts game.name
puts game.genero
puts game.price

game.name="outronome"

puts game.nome
