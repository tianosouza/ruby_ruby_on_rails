=begin
  Escreva um programa Ruby para lê três variáveis: nome, idade, cidade.
  A despeito desse valores você deve utiliza-los para alimentar uma planilha
  de conttos e posteriormente, salvar o arquivo com o nome contatatos.csv
=end

require 'csv'

puts '====AGENDA DE CONTATOS===='
puts 'Digite o nome do contato: '
nome = gets.chomp
puts 'Digite a idade do contato: '
idade = gets.chomp.to_i
puts 'Digite a cidade do contato: '
cidade = gets.chomp


CSV.open('../data/contatos.csv', 'w') do |csv|
  csv << ['Nome', 'Idade', 'Cidade']
  csv << [nome, idade, cidade]
end

CSV.foreach('../data/contatos.csv', headers: true) do |row|
  puts "Nome: #{row['Nome']}, Idade: #{row['Idade']}, Cidade: #{row['Codade']}"
end