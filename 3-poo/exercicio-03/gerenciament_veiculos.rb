=begin
  Crie um sistema para gerenciar veículos em um estacionamento.
  Há dois tipos de veículos que precisam ser tratados: carros e motos.
  Ambos têm algumas informações em comum, como placa e marca, mas també tê
  informações exclusivas, como a quantidade de portas para carros e a cilindrada para motos.

  1 - Crie uma class base chamada veículo com os atributos comnus, placa e marca.
  Ela deve ter um método chamado detralhes que exibe a placa e a marca do veículo.

  2 - Crie duas subclass, Carro e Moto, que herdam de Veículo.
  A classe Carro deve ter um atributo chamado quantidade de portas e a class Moto
  deve ter um atributo chamado cilindrada. Cada uma dessas subclass deve sobrescrever o método detalhes
  para exibir as informações exclusivas de cada tipo de veículo.

  3 - Crie uma função chamada exibir_detalhes que aceitam um objeto de qualque
  uma das class (carro ou moto) e chama o método detalhes sobr ele.
  Use o plolimorfismo para permitir que a função funcione de maneira uniforme 
  com ambos tipos de veículos.
=end

class Veiculo
  attr_accessor :placa, :marca

  def initialize(placa, marca)
    @placa = placa
    @marca = marca
  end

  def detalhes
    puts "Placa: #{@placa}, Marca: #{@marca}"
  end
end

class Carro < Veiculo
  attr_accessor :quantidade_portas

  def initialize(placa, marca, quantidade_portas)
    super(placa, marca)
    @quantidade_portas = quantidade_portas
  end

  def detalhes
    super
    puts "Quantidade de portas: #{@quantidade_portas}"
  end
  
  def exibir_detalhes(veiculo)
    veiculo.detalhes
  end
end

class Moto < Veiculo
  attr_accessor :cilindrada

  def initialize(placa, marca, cilindrada)
    super(placa, marca)
    @cilindrada = cilindrada
  end

  def detalhes
    super
    puts "Cilindrada: #{@cilindrada}"
  end

  def exibir_detalhes(veiculo)
    veiculo.detalhes
  end
end

carro = Carro.new("ABC-1234", "Fiat", 4)
moto = Moto.new("DEF-5678", "Honda", 250)
carro.exibir_detalhes(carro)
moto.exibir_detalhes(moto)
