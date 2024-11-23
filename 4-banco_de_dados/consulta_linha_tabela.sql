SELECT * FROM clientes;

SELECT nome, telefone, email FROM fornecedores;

SELECT * FROM ingredientes_em_estoque WHERE quantidade < 200;

-- Renomeando a exibição de colunas
-- AS = como
SELECT nome AS nome_do_cliente, telefone FROM clientes;

-- Filtrando resultados
-- WHERE = onde
-- AND = e
-- OR = ou
-- NOT = não
-- IN = em
SELECT * FROM ingredientes_em_estoque WHERE categoria = 'Carnes' AND quantidade < 200;
SELECT * FROM ingredientes_em_estoque WHERE categoria = 'Carnes' OR categoria = 'Laticínios';
SELECT * FROM ingredientes_em_estoque WHERE categoria NOT IN ('Carnes', 'Laticínios');


INSERT INTO clientes (nome, telefone, address) VALUES
  ('Nadeen Nassy', '(894) 3770999', '344 Comanche Circle'),
  ('Rufe Woolforde', '(876) 3190195', '1199 Garrison Junction'),
  ('Erl Bumphrey', '(828) 4611193', '279 Carey Way'),
  ('Libbey Allbut', '(780) 9682663', '0 Tennyson Pass'),
  ('Vick Saterthwait', '(858) 2707342', '8098 Carpenter Crossing'),
  ('Valma Leathlay', '(988) 1855788', '52 Pankratz Point'),
  ('Cathrin Balcers', '(854) 2908154', '58 Kipling Alley'),
  ('Fidelity Hurleston', '(169) 2896946', '99412 Nova Place'),
  ('Lane Beggio', '(102) 4251437', '625 Mcguire Place'),
  ('Abigale Ofield', '(414) 2709709', '4526 Ronald Regan Point'),
  ('Melisse Stappard', '(828) 1752818', '4 Sunnyside Lane'),
  ('Vito Breach', '(516) 2554781', '86120 Towne Court'),
  ('Jessalin Duckett', '(333) 6498842', '02 Artisan Center'),
  ('Bo Collie', '(163) 2032492', '0 Straubel Terrace'),
  ('Raphaela Krates', '(916) 8872820', '7798 3rd Street'),
  ('Lucian Draxford', '(827) 4937186', '739 Toban Way'),
  ('Philippa Sidon', '(475) 4933015', '64985 Clarendon Way'),
  ('Cordie Voce', '(937) 6629079', '767 Prairieview Road'),
  ('Easter Petrescu', '(135) 9137473', '32 Dayton Crossing');

-- Ordena pelo nome em ordem alfabética decrescente
SELECT * FROM Clientes ORDER BY nome DESC;

-- Ordena por telefone baseado nos primeiros dígitos em ordem crescente
SELECT * FROM Clientes ORDER BY telefone ASC;

-- limitar os resultados:
SELECT * FROM Clientes LIMIT 4;

-- E que usamos com frequência em conjunto com o comando de 
--pular resultados OFFSET para criar um mecanismo de paginação:
SELECT * FROM Clientes LIMIT 4 OFFSET 4;

--Também podemos usar comandos para contagem de registros, 
--média aritmética, soma, etc:

SELECT COUNT(id) AS Usuários FROM Clientes;

SELECT SUM(quantidade) AS Total FROM ingredientes_em_estoque;

SELECT AVG(quantidade) AS Média FROM ingredientes_em_estoque;

-- Por fim, existem vários operadores mais avançados para serem 
-- utilizados em conjunto com o WHERE, podemos destacar o LIKE como 
-- sendo um dos mais interessantes:

-- Obs.: para o comando LIKE o caractere ‘%’ significa qualquer 
-- número de caracteres e o caractere ‘_’ representa um único caractere qualquer.

-- Obtém todos os clientes com nome começando com 'V'
SELECT * FROM Clientes WHERE nome LIKE 'V%';

-- Obtém todos os clientes onde a segunda letra do nome é 'a'
SELECT * FROM Clientes WHERE nome LIKE '_a%';

-- Obtém todos os clientes onde a última letra do nome é 'd'
SELECT * FROM Clientes WHERE nome LIKE '%d';

-- Obtém todos os clientes que possuem 'an' em alguma parte do nome
SELECT * FROM Clientes WHERE nome LIKE '%an%';

-- No PostgreSQL também temos o comando ILIKE, que funciona como o LIKE, 
-- porém é case-insensitive, ou seja, 
-- não diferencia maiúsculas e minúsculas:

-- Obtém os clientes com a letra 'B' em qualquer parte do nome
SELECT * FROM Clientes WHERE nome LIKE '%B%';

-- Obtém os clientes com as letras 'B' ou 'b' em qualquer parte do nome
SELECT * FROM Clientes WHERE nome ILIKE '%B%';