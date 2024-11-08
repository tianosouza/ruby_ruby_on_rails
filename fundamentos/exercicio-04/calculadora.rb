=begin
  Desenvolva um programa que simule uma calculadora matemática
  possuindo as seguintes operações: soma, subtração, multiplicação e divisão.

  1. Os dois números que serão utilizados nas operações devem ser
    utilizados como entrada de dados do no programa.
  2. As operações devem ser definidas utilizando função lambda
  
  3. O programa deve ser execultado a todo momento e só será fechado a menos que
    uma tecla especifica seja pressionada.
=end

# def opcao
#   puts "==== OPERAÇÕES ===="
#   puts "1 - Soma (+)"
#   puts "2 - Subtração (-)"
#   puts "3 - Multiplicação (*)"
#   puts "4 - Divisão (/)"
#   puts "6 - Sair"
#   puts "==================="

#   print "Escolha uma opção: "
#   gets.chomp.to_i
# end

# def realizar_operacao(operacao)
#   puts "Escolha dois números para aplicar a operação escolhida!"
#   print "Digite o primeiro número: "
#   num1 = gets.chomp.to_f
#   print "Digite o segundo número: "
#   num2 = gets.chomp.to_f

#   case operacao
#   when 1
#     result = lambda { |num1, num2| num1 + num2 }
#     puts "O resultado da soma é #{result.call(num1, num2)}"
#   when 2
#     result = lambda { |num1, num2| num1 - num2 }
#     puts "O resultado da subtração é #{result.call(num1, num2)}"
#   when 3
#     result = lambda { |num1, num2| num1 * num2 }
#     puts "O resultado da multiplicação é #{result.call(num1, num2)}"
#   when 4
#     if num2 != 0
#       result = lambda { |num1, num2| num1 / num2 }
#       puts "O resultado da divisão é #{result.call(num1, num2)}"
#     else
#       puts "Não é possível dividir por zero."
#     end
#   else
#     puts "Opção inválida!"
#   end
# end

# def calculadora
#   operacao = opcao

#   if operacao == 6
#     puts "Programa encerrado!"
#   elsif (1..4).include?(operacao)
#     realizar_operacao(operacao)
#     print "Deseja realizar outra operação? (s/n): "
#     continuar = gets.chomp.downcase
#     calculadora if continuar == 's'
#   else
#     puts "Opção inválida!"
#     calculadora
#   end
# end


# calculadora


# Resolução do prof

sum = lambda do |num1, num2|
  num1 + num2
end

subt = lambda do |num1, num2|
  num1 - num2
end

multi = lambda do |num1, num2|
  num1 * num2
end

div = lambda do |num1, num2|
  num1 / num2
end

def operation(function)
  puts "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  puts "Digite o segundo número: "
  num2 = gets.chomp.to_f

  result = function.call(num1, num2)
  puts "O resultado é: #{result}".center(50, "-")
end

begin
  puts "Calculadora"
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "5 - Sair"
  choice = gets.chomp
  case choice
    when "1" then operation sum
    when "2" then operation subt
    when "3" then operation multi
    when "4" then operation div        
  end
end while choice != "5"

