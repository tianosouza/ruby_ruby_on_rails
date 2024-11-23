require_relative 'conection'

conn = create_connection

query = 'SELECT * FROM jogos;'

begin
  result = conn.exec(query)
  result.each do |row|
    puts "ID: #{row['id']} - Nome: #{row['nome']} - Ano: #{row['ano']} - Score: #{row['score']}"
  end
ensure
  conn.close if conn  
end