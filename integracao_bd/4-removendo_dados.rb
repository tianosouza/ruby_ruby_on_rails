require_relative '0-conection'

conn = create_connection

id_resgistro = 5

delete_query = "DELETE FROM jogos WHERE id = #{id_resgistro};"

conn.exec(delete_query)
puts "Registro deletado com sucesso!"
conn.close if conn