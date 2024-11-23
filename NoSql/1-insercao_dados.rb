require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

result = cliente[:produtos].insert_one({
  nome: 'Notebook Dell Inspiron 15', 
  preco: 1999.99, 
  descricao: 'Notebook Dell Inspiron 15, Intel Core i5, 8GB RAM, 256GB SSD, Tela Full HD 15.6", Windows 10',
  categoria: {
    nome: 'Eletrônicos'
  }
})

if result.successful?
  puts "Produto inserido com sucesso! ID: #{result.inserted_id}"
else
  puts "Erro ao inserir o produto"
end