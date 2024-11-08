=begin
  Escreva um programa em Ruby para lê tres variáveis: 
  - first_name
  - last_name
  - company
  A despeito desses valores você deve concatenar as informações
  para gerar um endereço de e-mail. A variável entre first_name
  e last_name deve ser separado por um ponto e a variável last_name e
  company deve ser separado por um @.

  ex:
  first_name = "João"
  last_name = "Silva"
  company = "Google"
  email = "joao.silva@google.com"
=end
puts "Digite seu primeiro nome: "
first_name = gets.chomp.downcase
puts "Digite seu ultimo nome: "
last_name = gets.chomp.downcase
puts "Digite o nome da empresa: "
company = gets.chomp.downcase

email = "#{first_name}.#{last_name}@#{company}.com"
puts email

# Resolução professor

=begin
  email = ""
  email << Irst_name.split.join(".")
  email << "."
  email << last_name.split.join(".")
  email << "@"
  email << company.split.join(".")
  email << ".com"

  puts email
=end
