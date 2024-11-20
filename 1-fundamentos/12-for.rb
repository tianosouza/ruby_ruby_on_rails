# for

# Aternativa 1 - for

for i in 1..5
  puts i
end

# Alternativa 2 - Each
puts "======================"

(1..5).each do |i|
  puts i
end

movies_list = ["O Mascara", "Homem Aranha", "Batman", "Super Mário"]

# Iterando valores de Array

movies_list.each do |movie|
  puts movie
end

# utilizando break

movies_list.each do |movie|
  break if movie == "Homem Aranha"
  puts movie
end

# utilizando o next

movies_list.each do |movie|
  next if movie == "Batman"
  puts movie
end

# Avaliação do filme

puts "Digite o nome do filme: "
movie_name = gets.chomp

puts "Digite quantas avaliações deseja fazer no filme: "
movie_rating = gets.chomp.to_i

sum = 0
movie_rating.times do
  puts "Digite a nota para o filme"
  note = gets.chomp.to_f
  sum += note
end

average = sum / movie_rating

puts "Média de avaliação do filme #{movie_name} é %2.f" %average