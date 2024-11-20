# 1- Alternativa 1
# 
# w - write - escrever


# File.open('data/courses.txt', 'w') do |file|
#   file.puts 'Criando arquivos de texto'
#   file.write 'Hello world!' # Não tem qubra de linha
#   file.puts 'ola mundo!'
# end

# 2- Alternativa 2
# 
# a - append - acrescentar
# 
# obs: Ao usar o w para capturar daodos de entradada do usuário
#      o mesmo irá sobrescrever, use o 'a'.

File.open('data/courses.txt', 'a') do |file|
  puts 'Qual o curso que deseja fazer?'
  curso = gets.chomp

  file.puts curso
end