# 1- Alternativa 1
# 
# r - read - ler

movies = File.open('data/filmes.txt')
puts movies
puts movies.class

movies.each do |mov|
  puts mov
end

puts "======================="
# 2- Alternativa 2

file_path = 'data/filmes.txt'

File.open(file_path, 'r') do |file|
  file.each_line do |line|
    puts line.strip unless line.strip.empty?
  end
end