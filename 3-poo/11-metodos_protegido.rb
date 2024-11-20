=begin
  Metodos protegidos podem ser chamados por qualquer instância da classe onde foram definidos.
  Eles podem ser chamados também por instâncias de subclasses.
=end

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

  protected

  def discount_price(discount)
    @price -= @price / (discount.to_f * 100)
  end
end

game_one = Game.new("pes", "esporte", true, [2015, 2016], 100)
puts game_one.to_s
game_one.techinical_sheet
game_one.discount_price(10)
puts game_one.send(:discount_price, 10)

