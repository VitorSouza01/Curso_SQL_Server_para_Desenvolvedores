
-- TRIGGER DDL - Exercício 02


-- Part1
CREATE TRIGGER TRG_BLOQUEIO_CREATE_TABLE
ON DATABASE
FOR CREATE_TABLE
AS BEGIN
	SELECT EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'varchar(max)');
	RAISERROR('Não é possível criar novas tabelas, procure o admin para isso.', 16, 1);
	ROLLBACK
END


-- Part2
CREATE TABLE TB_TABELA_TESTE (ID INT);
