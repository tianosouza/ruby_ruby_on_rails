# 1- Criando Hash

mov = Hash.new
puts mov.class

movie = { "name" => "Avatar", "year" => 2023 }
movie_other = { name: "Avatar", year: 2023 }

# 2- Iterando valores (for, while, Each)

puts movie.keys
puts movie.values

for key, value in movie
  puts "Key: #{key}, Value: #{value}"
end

i = 0
while i < movie.length
  puts "#{movie.keys[i]} - #{movie.values[i]}"
  i += 1
end

movie.each { |key, value| puts "#{key} - #{value}" }