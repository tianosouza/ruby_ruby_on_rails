require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

collection = cliente[:produtos]
documentos = collection.find

documentos.each do |doc|
  puts "Nome: #{doc[:nome]}, Categoria: #{doc[:categoria][:nome]}"
end