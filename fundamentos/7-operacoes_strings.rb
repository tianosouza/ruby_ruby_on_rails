# Dados do filme

name = "De volta para o Futuro"
description = "O filme trata de uma viagem no tempo"

description_other = <<Text
  O filme #{name} trata de uma viagem no tempo
Text

# 1- Indexação

puts name[0] # imprime o primeiro caractere do nome do filme
puts name[-1] # imprime o último caractere do nome do filme
puts name[0..2] # imprime os caracteres do nome do filme de 0 a 2
puts name[0...3] # imprime os caracteres do nome do filme de 0 a 3
puts name.slice(0) # imprime a fatia no qual o index e chamado
puts name.slice(0..3) # imprime a fatia no qual o index e chamado
puts name.slice(0,4) # imprime a fatia no qual o index e chamamado

# 2- Quebrando uma string

puts name.split(" , ") # imprime a string quebrada em array
puts name.split(" ") # imprime a string quebrada em array

# 3- Quebrando em caracteres

puts name.chars # imprime a string quebrada em array de caracteres

# 4- Conta ocorrÊncia de caracteres

puts name.count("o") # imprime a quantidade de vezes que o caractere aparece

# 5- Maiúsculo e Minúsculo

puts name.upcase # imprime a string em maiúsculo
puts name.downcase # imprime a string em minúsculo
puts name.swapcase # imprime a string com maiúsculo e minúsculo invert
puts name.capitalize # imprime a string com a primeira letra em maiúsculo

# 6- Verifica o index

puts name.index("o") # imprime o index do caractere

# 7- Alterar palavras

puts name.gsub("o", "a") # imprime a string com a palavra substituida 

# 8- Outras ocorrências

puts name.include?("o") # imprime true se a palavra estiver na string
puts name.start_with?("o") # imprime true se a palavra começar com a string
puts name.end_with?("o") # imprime true se a palavra terminar com a string
puts name.match(/o/) # imprime true se a palavra estiver na string
puts "Ruby".center(10, "-") # imprime a string centralizada com o caract ---Ruby---
puts "=" * 20 # imprime 20 vezes o =
puts "Ruby".ljust(10, "-") # imprime a string justificada a esquerda
puts "Ruby".rjust(10, "-") # imprime a string justificada a direita
puts "Ruby       ".strip # imprime a string sem espaços em branco
puts "Ruby       ".rstrip # imprime a string sem espaços em branco na direita
puts "       Ruby".lstrip # imprime a string sem espaços em branco na esquerda
