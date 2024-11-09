# 1- Utilizando argumentos em tempo de execusão

# ARGV.each { |arg| puts arg }
# ARGV.each { |arg| puts arg.class }

# 2- Potência de um número

# ARGV.each do |arg|
#   pot = arg.to_I ** 2
#   puts "#{arg} ao quadrado é: #{pot}"
# end


# 3- Salvando conteúdo de argumento em arquivo

File.open('data/games.txt', 'a') do |file|
  ARGV.each do |game|
    file.puts game
  end
end