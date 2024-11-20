# Array
# 1- Criação do Array

movies = []
movies_other = Array.new

puts movies.class
puts movies_other.class

# 2- Utilizando exponenciação

numbers = Array.new(5) { |x| x ** 2 }
puts numbers

# 3- Arrays de números
num = Array.[](1,2,3)
puts num

num_other = Array(1..5)
puts num_other

# 4- Arrays com múltiplos valores

movie = ["Homem Aranha", 2010, 50.00, true]
puts movie

# 5- Iterando itens (for, while e Each)

["Homem Aranha", "Super Mário Bros"].each do |movie|
  movies << movie
end

puts movies

for mov in movies
  puts mov
end

while i < movies.length
  puts movies[i]
  i += 1
end

movies.each { |mov| puts mov }


