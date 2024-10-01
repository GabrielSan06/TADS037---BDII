-- Comandos SQL DDL: Alter table

-- Alterando a tabela departamento adicionando a coluna descrição
ALTER TABLE departamento
	ADD COLUMN descricao VARCHAR(100) NULL;

-- Exibindo a tabela departamento
desc departamento;

-- ALterando o nome da coluna descrição para detalhamento e mudando a quantidade do VARCHAR na tabela departamento (CHANGE possibilita modificar também o nome)
ALTER TABLE departamento
	CHANGE COLUMN descricao detalhamento VARCHAR(130) NULL;

-- Modify não muda o nome, apenas a estrutura da coluna
ALTER TABLE departamento
	MODIFY COLUMN nome varchar(25) NOT NULL;
    
-- Alterando a tabela departamento adicionando a coluna telefone depois do email (não existe BEFORE)
ALTER TABLE departamento
	ADD COLUMN telefone VARCHAR(11) NOT NULL AFTER email;

-- Alterando a posição da coluna telefone para ficar após a coluna local
ALTER TABLE departamento
	MODIFY COLUMN telefone varchar(11) NOT NULL AFTER `local`; -- O local está entre crases pq também é um comando do sql

-- Deletando a coluna telefone na tabela departamento
ALTER TABLE departamento
	DROP COLUMN telefone;
	