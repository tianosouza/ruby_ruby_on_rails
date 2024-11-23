INSERT INTO clientes (nome, telefone, data_cadastro, address) VALUES ('João', '123456789', '2021-01-01', 'Rua 1');
INSERT INTO clientes (nome, telefone, data_cadastro, address) VALUES ('Maria', '9878888888', '2021-01-01', 'Rua 2');

INSERT INTO fornecedores (nome, telefone, email, data_contratacao, observacoes) VALUES ('Fornecedor 1', '987654321', 'tiano@tiano.com', '2021-01-01', 'Observações do fornecedor 1');

INSERT INTO lanches (nome, descricao, preco) VALUES ('X-Bacon', 'Pão, hambúrguer, bacon, queijo, alface, tomate e maionese', 15.00);

INSERT INTO pedidos (mesa, data_hora_pedido, situacao) VALUES (1, '2021-01-01 12:00:00', 'Em andamento');

INSERT INTO ingredientes_em_estoque (nome, quantidade, categoria) VALUES ('Pão', 100, 'Pães');
INSERT INTO ingredientes_em_estoque (nome, quantidade, categoria) VALUES ('Hambúrguer', 100, 'Carnes');
INSERT INTO ingredientes_em_estoque (nome, quantidade, categoria) VALUES ('Bacon', 100, 'Carnes');
INSERT INTO ingredientes_em_estoque (nome, quantidade, categoria) VALUES ('Queijo', 100, 'Laticínios');