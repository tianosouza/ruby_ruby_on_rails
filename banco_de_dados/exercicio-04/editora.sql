CREATE DATABASE editora;
\c editora;

CREATE TABLE IF NOT EXISTS autores (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  biografia TEXT,
  data_nascimento DATE
);

CREATE TABLE IF NOT EXISTS generos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS livros {
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  isbn VARCHAR(32) NOT NULL,
  ano_publicacao INT NOT NULL,
  genero_id INT NOT NULL REFERENCES generos(id)
};

CREATE TABLE IF NOT EXISTS livro_autores {
  livro_id INT NOT NULL REFERENCES livros(id),
  autor_id INT NOT NULL REFERENCES autores(id),
  PRIMARY KEY (livro_id, autor_id),
  FOREIGN KEY (livro_id) REFERENCES livros(id) ON DELETE CASCADE,
  FOREIGN KEY (autor_id) REFERENCES autores(id) ON DELETE CASCADE
}

CREATE TABLE IF NOT EXISTS leitores {
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL
  genero char(1) NOT NULL
    CHECK (genero IN ('M', 'F', 'O'))
};

CREATE TABLE IF NOT EXISTS resenhas {
  id SERIAL PRIMARY KEY,
  leitor_id INT NOT NULL REFERENCES leitores(id),
  livro_id INT NOT NULL REFERENCES livros(id),
  avaliacao INT NOT NULL
    CHECK (avaliacao BETWEEN 1 AND 5),
  comentario TEXT,
};