movies = ["Homem Aranha", "O mascara", "super mario"]

# 1- indexação e atribuição

puts movies[0] # primeiro filme
puts movies[-1] # Último filme
puts movies[1, 2] # retorna o item do index 1 e 2
movies[0] = "Homem Aranha 2" # Substitui o item do index 0
puts movies
movies << "avatar" # Adiciona um item no final do array
puts movies

# 2- Metódos úteis

puts movies.size # tamanho do array
puts movies.length # tamanho do array
puts movies.empty? # verifica se o array está vazio
puts movies.include?("Homem Aranha") # verifica se o item está no array
puts movies.index("Homem Aranha") # retorna o index do item
puts movies.reverse # inverte o array
puts movies.sort # ordena o array
puts movies.uniq # remove itens duplicados
puts movies.delete("Homem Aranha") # remove o item do array
puts movies.delete_at(0) # remove o item do index 0
puts movies.insert(0, "Homem Aranha 3") # insere o item
puts movies.push("Homem Aranha 4") # insere o item no final do
puts movies.pop # remove o item do final do array
puts movies.shift # remove o item do inicio do array
puts movies.unshift("Homem Aranha 5") # insere o item no inicio do
puts movies.join(", ") # junta os itens do array em uma string
puts movies.join(" - ") # junta os itens do array em uma string
puts movies.join("\n") # junta os itens do array em uma string
puts movies.join("") # junta os itens do array em uma string
puts movies.join() # junta os itens do array em uma string
puts movies.join # junta os itens do array em uma string
puts movies.first # retorna o primeiro
puts movies.last # retorna o último

# 3- Recuperando indice e valor
movies.each_with_index { |index, value| puts "#{index} - #{value}" }