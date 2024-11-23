require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

result = cliente[:produtos].delete_one({nome: 'Notebook Dell Inspiron 15'})

if result.deleted_count > 0
  puts "Produto deletado com sucesso!"
else
  puts "Erro ao deletar produto!"
end