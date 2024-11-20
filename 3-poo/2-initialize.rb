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
end

game = Game.new
p game