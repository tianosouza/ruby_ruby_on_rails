require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

result = cliente[:produtos].update_one({nome: 'Notebook Dell Inspiron 15'}, {'$set' => {preco: 1899.99}})

if result.successful?
  puts "Produto atualizado com sucesso!"
else
  puts "Erro ao atualizar produto!"
end

