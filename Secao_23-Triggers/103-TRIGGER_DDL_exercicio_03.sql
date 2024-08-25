
-- TRIGGER DDL - Exerc�cio 02


-- Part1
CREATE TABLE TB_DDL_LOG
(
	DataCriacao DATETIME2,
	DB_User VARCHAR(100),
	EVENTO VARCHAR(100),
	TSQL_COMMAND VARCHAR(5000)
);


-- Part2
CREATE TRIGGER TRG_LOG_DATA_BASE
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS BEGIN

	DECLARE @DATA XML;
	SET @DATA = EVENTDATA();

	INSERT INTO TB_DDL_LOG
	(DataCriacao, DB_User, EVENTO, TSQL_COMMAND)
	VALUES
	(GETDATE(), CONVERT(VARCHAR(100), CURRENT_USER),
	@DATA.value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(5000)'),
	@DATA.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'varchar(5000)'))
END


-- Part3
CREATE TABLE TESTE_TABELA (ID INT);
DROP TABLE TESTE_TABELA

SELECT * FROM TB_DDL_LOG
