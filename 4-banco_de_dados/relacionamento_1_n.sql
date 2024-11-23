CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Relacionamento 1 para n

ALTER TABLE funcionarios ADD COLUMN departamento_id INT;
ALTER TABLE funcionarios ADD CONSTRAINT fk_departamento_id FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

SELECT * FROM departamentos;

INSERT INTO departamentos (nome) VALUES
  ('Imprensa'),
  ('Investigação'),
  ('Diplomacia')
;

SELECT * FROM funcionarios;

INSERT INTO funcionarios (nome, telefone, departamento_id) VALUES
  ('João', '1234-5678', 1),
  ('Maria', '1234-5679', 2),
  ('tiano', '1234-5680', 3)
;

SELECT * FROM enderecos;

INSERT INTO enderecos (rua, numero, bairro, cidade, funcionario_id) VALUES
  ('Rua A', 1, 'Bairro A', 'Cidade A', 1),
  ('Rua B', 2, 'Bairro B', 'Cidade B', 2),
  ('Rua C', 3, 'Bairro C', 'Cidade C', 3)
;

SELECT * FROM funcionarios JOIN enderecos ON funcionarios.id = enderecos.funcionario_id; -- 1 para 1
SELECT * FROM funcionarios JOIN departamentos ON funcionarios.departamento_id = departamentos.id; -- 1 para n
SELECT * FROM departamentos JOIN funcionarios ON funcionarios.departamento_id = departamentos.id;SELECT * FROM funcionarios JOIN departamentos ON funcionarios.departamento_id = departamentos.id; -- n para 1