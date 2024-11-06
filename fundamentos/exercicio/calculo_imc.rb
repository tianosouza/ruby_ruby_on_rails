=begin
  Cálculo IMC
    Escreva um programa em Ruby que realize a entrada de dados de duas variáveis: altura e peso.
    E por fim, calcule o imc com base nos valores de duas variáveis criadas anteriormente.

    Formula IMG = peso / (altura * altura)
=end


puts "Informe seu peso: "
peso = gets.chomp.to_f
puts "Informe sua altura: "
altura = gets.chomp.to_f
imc = peso / (altura * altura)
puts "Seu IMC é: #{imc.round(2)}"
