# 1- Método para imprimir Hello world

def hello
  puts "hello world!"
end

hello

# 2- Método para somar dois números

def sum
  puts 10 + 20
end

sum

# 3- Método para cadatrar Filmes

def create_movie
  puts "Informe o nome do filme: "
  name = gets.chomp
  puts "Informe o ano de lançament0: "
  year_launch = gets.chomp.to_i 
  puts "Informe o preço do filme: "
  price = gets.chomp.to_f

  puts "#{name} - R$ #{price}"
end

create_movie