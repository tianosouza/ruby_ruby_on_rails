=begin
  Escreva um programa Ruby que calcula a área de um quadrado e um retângulo
  Em cada um dos casos, deve ser criado um módulo a parte, para que seja executado de
  forma independente de outro, ainda que ambos estenha no mesmo arquivo.
=end

require_relative 'formulas_calculo'

puts 'Opções'
puts '1 - Área do quadrado'
puts '2 - Área do retângulo'

opcao = gets.chomp

case opcao
when '1'
  puts 'Digite o tamanho de um dos lados do quadrado: '
  lado = gets.chomp.to_f
  puts CalculoAreaQuadrado.area_quadrado(lado)
when '2'
  puts 'Digite a base do retângulo: '
  base = gets.chomp.to_f
  puts 'Digite a altura do retângulo: '
  altura = gets.chomp.to_f
  puts CalculoAreaRetangulo.area_retangulo(base, altura)
else
  puts 'Opção inválida'
end
