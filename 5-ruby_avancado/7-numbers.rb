=begin
  /\d+/: Um ou mais dígitos numericos de 0 a 9
  /-?\d+/: Um ou mais dígitos numericos de 0 a 9, podendo ou não ter um sinal de menos (-) na frente
=end

string = "A temperatura do dia é 24.5°C. Ontem a temperatura estava em 23.5°C e o preço é R$ 19.99"

num_inteiros = string.scan(/-?\d+/)
num_decimais = string.scan(/-?\d+\.\d+/)

puts "Números inteiros: #{num_inteiros.join(', ')}"
puts "Números decimais: #{num_decimais.join(', ')}"

string_other = "Eu tenho 2 gatos, 3 cachorros e 1 papagaio"

numbers = string_other.scan(/\d+/).map(&:to_i)
sum = numbers.sum

puts "Números encontrados: #{numbers.join(', ')}"
puts "A soma dos números é: #{sum}"
