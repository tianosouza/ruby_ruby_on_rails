-- Crie um banco de dados usando SQL para um sistema hospitalar para controle de pacientes e consultas. Serão 5 tabelas, para pacientes, consultas, médicos, especialidades e tratamentos. que deverão ser criadas seguindo os seguintes requisitos de relacionamento:

-- Os pacientes devem possuir nome completo, data de nascimento, gênero, telefone e endereço.

-- Os médicos devem possuir nome completo, telefone e também uma especialização (da tabela de especializações).

-- As especializações só precisam de um nome/título, e podem ser usadas para múltiplos médicos (ex.: a linha “Cardiologia” pode ser a especialização de 3 médicos simultaneamente)

-- As consultas são intermediárias entre pacientes e médicos, onde um paciente pode se consultar com vários médicos diferentes e um médico pode atender vários pacientes. As consultas também precisam possuir as informações: data de quando foi realizada, observações e tipo de atendimento (ex.: plano de saúde ou particular)

-- Por fim, os tratamentos só podem ser criados para uma consulta específica, porém uma mesma consulta pode ter mais de um tratamento associado a ela. O tratamento deve possuir informações sobre os medicamentos a serem usados e uma descrição do tratamento em si.

-- Além das tabelas, crie também as seguintes consultas SQL:

-- Obter todos os pacientes juntamente com suas consultas e os médicos que os atenderam.

-- Obter todas as consultas de um determinado médico, incluindo informações dos pacientes e observações.

-- Obter uma lista de todos os tratamentos prescritos em consultas, incluindo informações dos médicos e pacientes.

-- Obter todos os médicos com suas respectivas especializações.

-- Obter todas as consultas realizadas em uma data específica, incluindo informações de pacientes e médicos.

-- Obter uma lista de todos os pacientes que foram atendidos por médicos de uma determinada especialização.

-- Obter todos os tratamentos em andamento de um determinado paciente.

CREATE DATABASE sys_hospitalar;
\c sys_hospitalar;

-- Pacientes
CREATE TABLE IF NOT EXISTS pacientes (
  id SERIAL PRIMARY KEY,
  nome_completo VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL,
  genero VARCHAR(10) NOT NULL,
  endereco TEXT NOT NULL,
  telefone VARCHAR(20) NOT NULL
);

-- Especializações

CREATE TABLE IF NOT EXISTS especializacoes (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

-- Médicos

CREATE TABLE IF NOT EXISTS medicos (
  id SERIAL PRIMARY KEY,
  nome_completo VARCHAR(255) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  especializacao_id INT NOT NULL,
  FOREIGN KEY (especializacao_id) REFERENCES especializacoes(id)
);

-- Consultas
CREATE TABLE IF NOT EXISTS consultas (
  id SERIAL PRIMARY KEY,
  paciente_id INT NOT NULL,
  medico_id INT NOT NULL,
  data_consulta DATE NOT NULL,
  observacoes TEXT,
  tipo_atendimento VARCHAR(20) NOT NULL,
  FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
  FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

-- Tratamentos

CREATE TABLE IF NOT EXISTS tratamentos (
  id SERIAL PRIMARY KEY,
  consulta_id INT NOT NULL,
  medico_id INT NOT NULL,
  descricao TEXT NOT NULL,
  medicamentos TEXT NOT NULL,
  FOREIGN KEY (consulta_id) REFERENCES consultas(id),
  FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

-- Consultas SQL
-- Inserir paciente
INSERT INTO pacientes (nome_completo, data_nascimento, genero, endereco, telefone)
  VALUES ('João Silva', '1990-01-01', 'Masculino', 'Rua A, 123', '(11) 99999-9999'),
        ('Maria Souza', '1985-05-10', 'Feminino', 'Rua B, 456', '(11) 99999-9999'),
        ('José Santos', '1970-12-31', 'Masculino', 'Rua C, 789', '(11) 99999-9999'),
        ('Ana Lima', '1995-08-15', 'Feminino', 'Rua D, 012', '(11) 99999-9999'),
        ('Carlos Oliveira', '1980-03-20', 'Masculino', 'Rua E, 345', '(11) 99999-9999'),
        ('Lucas Almeida', '1992-11-25', 'Masculino', 'Rua F, 678', '(11) 99999-9999'),
        ('Fernanda Costa', '1988-07-05', 'Feminino', 'Rua G, 901', '(11) 99999-9999'),
        ('Mariana Pereira', '1975-04-30', 'Feminino', 'Rua H, 234', '(11) 99999-9999'),
        ('Paulo Rocha', '1998-09-10', 'Masculino', 'Rua I, 567', '(11) 99999-9999'),
        ('Aline Fernandes', '1983-02-05', 'Feminino', 'Rua J, 890', '(11) 99999-9999');

-- Inserir especializações
INSERT INTO especializacoes (nome)
  VALUES ('Cardiologia'),
        ('Ortopedia'),
        ('Pediatria'),
        ('Ginecologia'),
        ('Neurologia'),
        ('Oftalmologia'),
        ('Dermatologia'),
        ('Oncologia'),
        ('Urologia'),
        ('Psiquiatria'),
        ('Reumatologia'),
        ('Endocrinologia'),
        ('Nutrologia'),
        ('Infectologia'),
        ('Nefrologia');

-- Inserir médicos
INSERT INTO medicos (nome_completo, telefone, especializacao_id)
  VALUES ('Dr. Carlos Silva', '(11) 99999-9999', 1),
        ('Dra. Ana Souza', '(11) 99999-9999', 2),
        ('Dr. José Santos', '(11) 99999-9999', 3),
        ('Dra. Maria Lima', '(11) 99999-9999', 4),
        ('Dr. João Oliveira', '(11) 99999-9999', 5),
        ('Dra. Carla Almeida', '(11) 99999-9999', 6),
        ('Dr. Lucas Costa', '(11) 99999-9999', 7),
        ('Dra. Fernanda Pereira', '(11) 99999-9999', 8),
        ('Dr. Paulo Rocha', '(11) 99999-9999', 9),
        ('Dra. Aline Fernandes', '(11) 99999-9999', 10),
        ('Dr. Carlos Silva', '(11) 99999-9999', 11),
        ('Dra. Ana Souza', '(11) 99999-9999', 12),
        ('Dr. José Santos', '(11) 99999-9999', 13),
        ('Dra. Maria Lima', '(11) 99999-9999', 14),
        ('Dr. João Oliveira', '(11) 99999-9999', 15);

-- Inserir consultas
INSERT INTO consultas (data_consulta, paciente_id, medico_id, observacoes, tipo_atendimento)
  VALUES ('2021-01-01', 1, 1, 'Paciente com pressão alta', 'Particular'),
        ('2021-01-02', 2, 2, 'Paciente com fratura no braço', 'Plano de saúde'),
        ('2021-01-03', 3, 3, 'Paciente com febre alta', 'Particular'),
        ('2021-01-04', 4, 4, 'Paciente com suspeita de gravidez', 'Plano de saúde'),
        ('2021-01-05', 5, 5, 'Paciente com dor de cabeça', 'Particular'),
        ('2021-01-06', 6, 6, 'Paciente com problema de visão', 'Plano de saúde'),
        ('2021-01-07', 7, 7, 'Paciente com manchas na pele', 'Particular'),
        ('2021-01-08', 8, 8, 'Paciente com suspeita de câncer', 'Plano de saúde'),
        ('2021-01-09', 9, 9, 'Paciente com dor ao urinar', 'Particular'),
        ('2021-01-10', 10, 10, 'Paciente com depressão', 'Plano de saúde');

-- Inserir tratamentos
INSERT INTO tratamentos (medicamentos, descricao, medico_id, consulta_id)
  VALUES ('Dipirona', 'Tomar 1 comprimido a cada 6 horas', 1, 1),
        ('Gesso', 'Imobilizar o braço', 2, 2),
        ('Paracetamol', 'Tom ar 1 comprimido a cada 4 horas', 3, 3),
        ('Beta-hidroxicotinona', 'Tomar 1 comprimido ao dia', 4, 4);

-- Obter todos os pacientes juntamente com suas consultas e os médicos que os atenderam
SELECT
  p.nome_completo AS paciente,
  c.data_consulta,
  m.nome_completo AS medico
FROM
pacientes p
JOIN consultas c ON p.id = c.paciente_id
JOIN medicos m ON c.medico_id = m.id;


-- Obter todas as consultas de um determinado médico, incluindo informações dos pacientes e observações
SELECT
  m.nome_completo AS medico,
  p.nome_completo AS paciente,
  c.data_consulta,
  c.observacoes
FROM
consultas c
JOIN medicos m ON c.medico_id = m.id
JOIN pacientes p ON c.paciente_id = p.id
WHERE
m.nome_completo = 'Dr. Carlos Silva';

-- Obter uma lista de todos os tratamentos prescritos em consultas, incluindo informações dos médicos e pacientes

SELECT
  p.nome_completo AS paciente,
  m.nome_completo AS medico,
  t.descricao,
  t.medicamentos
FROM
consultas c
JOIN tratamentos t ON c.id = t.consulta_id
JOIN medicos m ON c.medico_id = m.id
JOIN pacientes p ON c.paciente_id = p.id;

-- Obter todos os médicos com suas respectivas especializações
SELECT
m.nome_completo AS medico,
especializacoes.nome AS especializacao
FROM medicos m
JOIN especializacoes ON m.especializacao_id = especializacoes.id;

-- Obter todos os pacientes com suas respectivas consultas e os médicos que os atender
SELECT
p.nome_completo AS paciente
FROM pacientes p
JOIN consultas c ON p.id = c.paciente_id
JOIN medicos m ON c.medico_id = m.id
GROUP BY p.nome_completo;

-- Obter todas as consultas realizadas em uma data específica, incluindo informações de pacientes e médicos
SELECT
p.nome_completo AS paciente,
m.nome_completo AS medico,
c.data_consulta,
c.observacoes
FROM consultas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN medicos m ON c.medico_id = m.id
WHERE c.data_consulta = '2022-01-01';

-- Obter uma lista de todos os pacientes que foram atendidos por médicos de uma determinada especialização
SELECT
p.nome_completo AS paciente
FROM pacientes p
JOIN consultas c ON p.id = c.paciente_id
JOIN medicos m ON c.medico_id = m.id
JOIN especializacoes es ON m.especializacao_id = es.id
WHERE es.nome = 'Cardiologia';




