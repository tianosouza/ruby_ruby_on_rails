puts "Informe o nome do filme: "
name = gets.chomp # Sempre vai retornar uma string!

puts "Informe o ano de lançament0: "
year_launch = gets.chomp.to_i # Aqui converto para inteiros

puts "Informe o preço do filme: "
price = gets.chomp.to_f # Aqui converto para float

# 1-Concatenação e exibição de texto

puts "Nome do filme: " + name
puts "Ano de Lançamento: " + year_launch.to_s
puts "Preço do filme: " + price.to_s

# 2- Utilizando #{}

puts "Nome do filme: #{name}"
puts "Ano de Lançamento: #{year_launch}"
puts "Preço do filme: #{price}"

# 3- Unico puts

puts "Nome do filme: #{name}, Ano de Lançamento: #{year_launch}, Preço do filme: #{price}"

# 4- String multi-linha

puts <<~MULTILINE_STRING
  Nome do filme: #{name}
  Ano de Lançamento: #{year_launch}
  Preço do filme: #{price}
MULTILINE_STRING