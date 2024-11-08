=begin
  Escreva um programa que calcula a frequência de uma letra
  dado uma determinada palavra ou texto que o usuário vier a digitar nesse
  programa. Você de utilizar a estrutura Hash para armazenar os itens (chave e valor),
  onde a chave representa o caractere e o valor representa a frequência de ocorrência
  daquele caractere na palavra do texto.
=end

# Frequência de letra

puts "Digite uma palavra ou texto:"
texto = gets.chomp

frequencia = Hash.new(0)
result = Hash.new

texto.each_char do |char|
  frequencia[char] += 1 if char.match?(/[a-zA-Z]/)
end

puts "Frequência das letras:"
frequencia.each do |letra, qtd|
  result.store(:"#{letra}", "#{qtd}")
  puts "#{letra}: #{qtd}"
end

puts result

# Resolução do prof

# def letter_frequency(text)
#   chars = ("a".."z").to_a + ("A".."Z").to_a
#   frequency = {}
#   text.each_char do |char|
#     if chars.include?(char)
#       unless frequency.key?(char)
#         frequency[char] = 1
#       else
#         frequency[char] += 1
#       end
#     end
#   end
#   frequency
# end

# puts "Frequência de letra"
# puts "Digite o texto: "
# text = gets.chomp

# puts letter_frequency(text)