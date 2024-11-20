movie_other = { name: "Avatar", year: 2023 }
puts movie_other

# 1- Métodos Úteis

puts movie_other.size # Tamanho do hash
puts movie_other.length # Tamanho do hash
puts movie_other.keys # Chaves do hash
puts movie_other.values # Valores do hash
puts movie_other.to_a # Transforma em array
puts movie_other.min # valor minino
puts movie_other.max # valor maximo
puts movie_other.fetch # buscar valor pela chave
puts movie_other.has_key? # verificar se a chave existe
puts movie_other.has_value? # verificar se o valor existe
puts movie_other.empty? # verificar se o hash está vazio

puts movie_other.clear # limpar o hash
puts movie_other.delete # deletar o hash
puts movie_other.store(:genero, "Aventura") # Adiciona um novo item
