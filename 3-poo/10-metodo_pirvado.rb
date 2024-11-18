=begin
  Metodos privados
  Os metodos privados são metodos que só podem ser chamados dentro da classe onde foram definidos.
=end

class Game
  attr_accessor :name, :genero, :multiplayer, :versions, :price
  
  puts "Jogo criado! #{self}"
  def initialize(name, genero, multiplayer, versions, price)
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

  private

  def apply_discount(discount)
    @price -= (discount * @price / 100)
  end

  public

  def apply_10_porcent_discount
    apply_discount(10)
  end
end

game = Game.new("Fifa", "esporte", true, [], 200)
puts game.price
puts game.apply_10_porcent_discount
