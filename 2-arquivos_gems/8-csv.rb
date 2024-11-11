require 'csv'

# 1- Escrevendo dados em csv
CSV.open('./data/example.csv', 'w') do |csv|
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["João", 25, "São Paulo"]
  csv << ["Maria", 30, "Rio de Janeiro"]
end

# 2- Lendo dados em csv
CSV.foreach('./data/example.csv', headers: true) do |row|
  nome = row['Nome']
  idade = row['Idade']
  cidade = row['Cidade']

  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end
