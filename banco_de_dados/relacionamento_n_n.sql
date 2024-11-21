CREATE DATABASE aula_relacionamento_n_n;
\c aula_relacionamento_n_n;

CREATE TABLE estudantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE estudantes_cursos (
    estudante_id INT NOT NULL,
    curso_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id),
    -- chave estrangeira composta
    PRIMARY KEY (estudante_id, curso_id),
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO estudantes (nome) VALUES
  ('João'),
  ('Maria'),
  ('José')
;

INSERT INTO cursos (nome) VALUES
  ('Matemática'),
  ('Português'),
  ('História')
;

INSERT INTO estudantes_cursos (estudante_id, curso_id) VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 3)
;

SELECT * FROM estudantes;

SELECT * FROM cursos;

SELECT * FROM estudantes_cursos;

SELECT estudantes.nome, cursos.nome 
  FROM estudantes JOIN estudantes_cursos 
    ON estudantes.id = estudantes_cursos.estudante_id 
      JOIN cursos ON cursos.id = estudantes_cursos.curso_id;

-- Nesse exemplo, a tabela `estudantes_cursos` tem uma chave estrangeira composta, que é formada pelas colunas `estudante_id` e `curso_id`. Essa chave estrangeira composta é formada por duas chaves estrangeiras simples, que referenciam as tabelas `estudantes` e `cursos`, respectivamente.
-- Aqui está a explicação do código:
-- - As linhas `CREATE TABLE estudantes_cursos (...)` e `CREATE TABLE cursos (...)`
-- criam as tabelas `estudantes_cursos` e `cursos`, respectivamente
-- - As linhas `INSERT INTO estudantes (...)` e `INSERT INTO cursos (...)`
-- inserem dados nas tabelas `estudantes` e `cursos`, respectivamente
-- - A linha `INSERT INTO estudantes_cursos (...)` insere dados na tabela `estud
-- antes_cursos`
-- - A linha `SELECT * FROM estudantes;` seleciona todos os dados da tabela `estudantes`
-- - A linha `SELECT * FROM cursos;` seleciona todos os dados da tabela `cursos
-- - A linha `SELECT * FROM estudantes_cursos;` seleciona todos os dados da tabela `estudantes_cursos`
-- - A linha `SELECT estudantes.nome, cursos.nome FROM estudantes JOIN estudantes_cursos ON estudantes.id = estudantes_cursos.estudante_id JOIN cursos ON cursos.id = estudantes_cursos.curso_id;` faz um join entre as tabelas `estudantes`, `estudantes_cursos` e `cursos` para mostrar os nomes dos estudantes e dos cursos que eles estão fazendo
-- Aqui está a explicação do join:
-- - O join é feito entre as tabelas `estudantes`, `estudantes_cursos` e `cursos`
-- - A condição de join é que o `id` da tabela `estudantes` seja igual ao `estudante_id` da tabela `estudantes_cursos` e que o `id` da tabela `cursos` seja igual ao `curso_id` da tabela `estudantes_cursos`
-- - O resultado do join é uma tabela que contém os nomes dos estudantes e dos cursos que eles estão fazendo
-- Aqui está a explicação do resultado do join:
-- - A tabela resultante do join contém os nomes dos estudantes e dos cursos que eles estão fazendo
-- - Cada linha da tabela resultante contém o nome de um estudante e o nome do curso que ele está fazendo
-- - O resultado do join é uma tabela que contém os dados dos estudantes e dos cursos que eles estão fazendo
-- Aqui está a explicação do resultado do join em termos de relações entre as tabelas
-- - A tabela `estudantes` é relacionada com a tabela `estudantes_curso` por meio da chave estrangeira `estudante_id`
-- - A tabela `estudantes_curso` é relacionada com a tabela `cursos` por meio da chave estrangeira `curso_id`
-- - O resultado do join é uma tabela que contém os dados dos estudantes e dos cursos que eles estão fazendo