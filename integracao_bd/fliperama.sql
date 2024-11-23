CREATE DATABASE fliperama;
\c fliperama;

CREATE TABLE IF NOT EXISTS jogos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ano INT NOT NULL,
    score DOUBLE PRECISION NOT NULL
);

INSERT INTO jogos (nome, ano, score) VALUES
    ('Super Mario Bros', 1985, 9.5),
    ('The Legend of Zelda', 1986, 9.0),
    ('Donkey Kong', 1981, 8.5);