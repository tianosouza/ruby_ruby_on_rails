#  psql -U postgres -h localhost
require_relative 'conection'

conn = create_connection

# Adicionando dados

registros = [
  {nome: 'Donkey', year: 2023, score: 9.5},
  {nome: 'Pato', year: 2022, score: 8.5},
  {nome: 'Cavalo', year: 2021, score: 7.5},
  {nome: 'Elefante', year: 2020, score: 6.5},
  {nome: 'Leão', year: 2019, score: 5.5}
]

registros.each do |registro|
  conn.exec("INSERT INTO jogos (nome, ano, score) VALUES ('#{registro[:nome]}', #{registro[:year]}, #{registro[:score]})")
end

puts "Registros inseridos com sucesso!"
conn.close if conn