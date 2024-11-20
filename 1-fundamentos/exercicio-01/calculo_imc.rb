=begin
  Cálculo IMC
    Escreva um programa em Ruby que realize a entrada de dados de duas variáveis: altura e peso.
    E por fim, calcule o imc com base nos valores de duas variáveis criadas anteriormente.

    Formula IMG = peso / (altura * altura)
=end
puts "Ctegorias IMC"
puts "Abaixo de 16.5: peso muito abaixo do normal"
puts "Abaixo de 18.5 Peso abaixo do normal"
puts "18.5 - 24.99 Peso normal"
puts "25 - 29.99 Pré-obeso"
puts "30 - 34.99 Obesidade calsse I"
puts "35 - 39.99 Obesidade calsse II"
puts "Acima de 40 Obesidade calsse III"

puts "Informe seu peso: "
peso = gets.chomp.to_f
puts "Informe sua altura: "
altura = gets.chomp.to_f
imc = peso / (altura / 100) ** 2
puts "Seu IMC é: #{imc.round(2)}"


