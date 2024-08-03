-- Criando database 
CREATE DATABASE Senai;
USE Senai;
-- //////////////////////////////////////////////////////////////
CREATE  TABLE professores(
-- INT inteiro
-- Primary Key (chave unica)
-- Not Null -> Nunca vai ser vazio
-- Auto_Increment -> Auto adicionar novo numero 
	id INT PRIMARY KEY NOT NULL auto_increment,
    nome VARCHAR(60) not null, 
	materia VARCHAR(30)not null
);

INSERT INTO professores(nome, materia) VALUES
('Athur Rosa', 'Banco de Dados'),
('Samuel Bruce', 'Flutter'),
('Giovanni Vickng', 'React Native');

-- * -> Indica que estou buscando todoas as colunas
SELECT * FROM professores;
-- Atualize dados 
-- Atualize a tabela professores, ajuste materia BackEnd
-- Onde o id = 1
-- If (id == 1) {atualiza a materia}

-- ////////////////////////////////////////////////////////////////
UPDATE professores SET materia = "Back End" WHERE id = 1;
-- Onde o id for = 1
DELETE FROM professores WHERE id = 1;


-- Criar tabela Alunos 
-- id, nome, idade
-- Inserir 3 alunos na tabela


CREATE TABLE alunos(
id INT PRIMARY KEY NOT NULL auto_increment,
nome VARCHAR(60) not null, 
idade INT not null
);


INSERT INTO alunos(nome,idade) VALUES
('AnaBea', 17),
('Rafa', 17),
('Gaby',18);
SELECT * FROM alunos;

-- Deleta dados
TRUNCATE TABLE aluno;
-- Deletada tabela
DROP TABLE alunos;
-- Deletar mais de um id
DELETE FROM alunos WHERE id IN(1,2,3);
-- Atualizar mais de um id
UPDATE alunos SET nome = 'Arthur', idade = 22 WHERE id IN (1,2,3);

-- Colunas 
ALTER TABLE alunos
MODIFY COLUMN nome VARCHAR(40);
-- Adicionar nova coluna
ALTER TABLE alunos
ADD COLUMN matricula VARCHAR(10);
-- Deletar coluna 
ALTER TABLE alunos
DROP COLUMN matricula ;
-- Trocar o nome 
ALTER TABLE alunos 
CHANGE COLUMN novoNome nome VARCHAR(30);
-- Alterar o nome 
ALTER TABLE alunos
RENAME TO estudantes;   
