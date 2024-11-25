string = 'A linguagem Ruby é sensacional. Ruby é a melhor linguagem de programação do mundo.'

patern = /Ruby/

results = string.scan(patern)
puts "O padrão foi encontrado #{results.size} vezes" # ou results.length
puts "As ocorrências foram: #{results.join(',')}"

# Extrainodo todos os digitos de uma string

string_other = 'O número 12345 é um número muito grande. O número 123 é menor'

numbers = string_other.scan(/\d+/)

puts "Os números encontrados foram: #{numbers.join(', ')}"