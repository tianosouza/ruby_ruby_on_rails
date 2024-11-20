--   Exercício 01
--   Crie um arquivo sql(no formato do PostgreSQL) com comandos para criar um banco de dados
--   para uma lanchonete armazenar as informações do seu sistema. Esse arquivo deve criar, 
--   caso não exista as seguintes tabelas e colunas:

--   Tabela: clientes
--   - id (int, primary key)
--   - nome (varchar)
--   - telefone (varchar)
--   - data de cadastro (date)
  
--   Tabela: Fornecedores
--   - id (int, primary key)
--   - nome (varchar)
--   - telefone (varchar)
--   - email (varchar)
--   - data de contratação (date)
--   - observações (text)

--   Tabela: Lanches
--   - id (int, primary key)
--   - nome (varchar)
--   - descrição (text)
--   - preco (float)

--   Tabela: Pedidos
--   - id (int, primary key)
--   - mesa (int)
--   = data e hora do pedido (timestamp)
--   - situacao (varchar)

--   Tabela: Ingredientes em estoque
--   - id (int, primary key)
--   - nome (varchar)
--   - quantidade (int)
--   - categoria (varchar)

-- Criação do banco de dados
CREATE DATABASE lanchonete;
\c lanchonete

-- Criação da tabela clientes

CREATE TABLE IF NOT EXISTS clientes (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  telefone VARCHAR(255) NOT NULL,
  data_cadastro DATE DEFAULT CURRENT_DATE
  address VARCHAR(255) NOT NULL
);

-- Criação da tabela fornecedores

CREATE TABLE IF NOT EXISTS fornecedores (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  telefone VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  data_contratacao DATE DEFAULT CURRENT_DATE,
  observacoes TEXT
);

-- Criação da tabela lanches

CREATE TABLE IF NOT EXISTS lanches (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10, 2) NOT NULL
);

-- Criação da tabela pedidos

CREATE TABLE IF NOT EXISTS pedidos (
  id SERIAL PRIMARY KEY,
  mesa INT,
  data_hora_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  situacao VARCHAR(50) NOT NULL
);

-- Criação da tabela ingredientes_em_estoque

CREATE TABLE IF NOT EXISTS ingredientes_em_estoque (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  categoria VARCHAR(255) NOT NULL
);

