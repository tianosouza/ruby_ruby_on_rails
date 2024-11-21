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



SELECT 
  estudantes.id AS id_estudante,
  estudantes.nome AS estudante,
  cursos.id AS id_curso,
  cursos.nome AS curso
FROM cursos
JOIN estudantes_cursos ON cursos.id = estudantes_cursos.curso_id
JOIN estudantes ON estudantes_cursos.estudante_id = estudantes.id;
