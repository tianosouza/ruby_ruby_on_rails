-- sudo -u postgres psql  =  entra no postgres
-- \l = lista os bancos de dados
-- \c nome_do_banco = conecta com o banco de dados
-- \dt = lista as tabelas
-- \d nome_da_tabela = lista a estrutura da tabela
-- \q = sai do postgres
-- \i nome_do_arquivo.sql = executa o arquivo sql
-- pg_dump -U postgres -v -f ./backup/filmes_backup.backup filmes_series = cria um backup
-- sudo -u postgres psql bd_filmes < backup/filmes_backup.backup = restaura o backup
-- pg_dump -U postgres -F c -f backup/table_filmes_series.pgbackup -t filmes filmes_series
-- psql -U postgres filmes_and_series < backup/filmes_backup.backup

-- Atualização
SELECT * FROM series;
UPDATE series SET situacao = 'Finalizada' WHERE situacao = 'Em Andamento';

UPDATE series SET situacao = 'Em andamento' WHERE titulo ILIKE '_%S';

SELECT * FROM filmes;
UPDATE filmes SET avaliacao = 6.7 WHERE custo < 10000000;

DELETE FROM filmes WHERE titulo = 'Super Mario Bros';

DELETE FROM series WHERE titulo = 'Cobra Kai';
DELETE FROM series WHERE ano < 2008 AND situacao = 'Finalizada';


