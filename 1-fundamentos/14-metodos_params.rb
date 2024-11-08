# 1- Método que recebe dois parametros sobre nome

def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

full_name("tiano", "souza")

# 2- Método para somar dois números

def sum(num1, num2)
  num1 + num2
end

puts sum(10, 20)

# 3- Argumentos default nos métodos

def address(country="Brasil")
  puts "Você é do #{country}"
end

address
address("Portugal")

# 4- Avaliação de Filmes

def rating_movie(qtd_rating)
  puts "Informe o nome do filem: "
  movie_name = gets.chomp
  sum = 0

  for i in 1..qtd_rating
    puts "Digite a nota para o filme: "
    note = gets.chomp.to_f
    sum += note
  end

  puts "Média de avaliação do filme #{movie_name} é: #{sum / qtd_rating}"
end

puts "Deseja fazer quantas avaliações: "
rating = gets.chomp.to_i

rating_movie(rating)