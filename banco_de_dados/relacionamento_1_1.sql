CREATE DATABASE aula_relacionamento_1_1;
\c
use aula_relacionamento_1_1;

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(255) NOT NULL
);

CREATE TABLE enderecos (
    id SERIAL PRIMARY KEY,
    rua VARCHAR(255) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    funcionario_id INT UNIQUE NOT NULL,
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);

-- ALTER TABLE enderecos ADD CONSTRAINT unique_funcionario_id UNIQUE (funcionario_id);