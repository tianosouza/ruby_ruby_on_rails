=begin
  Entrar no mongo
  mongosh

  Listar os bancos de dados
  show dbs;

  Usar um banco de dados
  use nome_do_banco;

  Listar as coleções
  show collections;

  Criar uma coleção
  db.createCollection(nome_da_coleção);

  Listar os documentos
  db.nome_da_coleção.find();

  Inserir um documento
  db.nome_da_coleção.insertOne({nome: 'nome', idade: 20});

  Inserir vários documentos
  db.nome_da_coleção.insertMany([
    {nome: 'nome1', idade: 20},
    {nome: 'nome2', idade: 21}
  ]);

  Atualizar um documento
  db.nome_da_coleção.updateOne({nome: 'nome'}, {$set: {idade: 21}});
  db.nome_da_coleção.updateMany({nome: 'nome'}, {$set: {idade: 21}});
  db.nome_da_coleção.updateOne({nome: 'nome'}, {$inc: {idade: 1}});
  db.nome_da_coleção.updateMany({nome: 'nome'}, {$inc: {idade: 1}});


  Deletar um documento
  db.nome_da_coleção.deleteOne({nome: 'nome'});
  db.nome_da_coleção.deleteMany({nome: 'nome'});
  db.nome_da_coleção.deleteOne({nome: 'nome', idade: 20});
  db.nome_da_coleção.deleteMany({nome: 'nome', idade: 20});

  Deletar todos os documentos
  db.nome_da_coleção.deleteMany({});
  db.nome_da_coleção.drop();

  Deletar um banco de dados
  db.dropDatabase

  Criar um índice

=end