require_relative 'conection'

conn = create_connection

# Atualizando dados
id_resgistro = 1

new_name = 'mortal kombate'
new_year = 2024
new_score = 10.0

update_query = "UPDATE jogos SET nome = '#{new_name}', ano = #{new_year}, score = #{new_score} WHERE id = #{id_resgistro};"

conn.exec(update_query)
puts "Registro atualizado com sucesso!"
conn.close if conn