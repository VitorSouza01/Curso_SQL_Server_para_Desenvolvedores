
--WITH CHECK OPTION

-- Views
-- WITH CHECK OPTION: Est� cl�usula faz com que os crit�rios definidos
-- na cl�usula WHERE sejam seguidos no momento em que s�o executados
-- os comandos que realizam a altera��o de dados com rela��o �s VIEWS.


CREATE TABLE TB_TESTE
(
	Nome VARCHAR(50) NULL,
	Telefone VARCHAR(30) NULL
);

INSERT INTO TB_TESTE
(Nome)
VALUES
('Jos�'),('Maria'),('Jo�o')

CREATE VIEW VIE_TESTE
WITH ENCRYPTION
AS
SELECT  Nome,
		Telefone
	FROM
	TB_TESTE
WHERE Telefone IS NULL

SELECT * FROM VIE_TESTE
SELECT * FROM TB_TESTE

INSERT INTO VIE_TESTE
(Nome, Telefone)
VALUES
('Marcos', '1123235656')

ALTER VIEW VIE_TESTE
WITH ENCRYPTION
AS
SELECT  Nome,
		Telefone
	FROM
	TB_TESTE
WHERE Telefone IS NULL
WITH CHECK OPTION

INSERT INTO VIE_TESTE
(Nome, Telefone)
VALUES
('Pedro', '1123235656')

INSERT INTO VIE_TESTE
(Nome, Telefone)
VALUES
('Pedro', null)

SELECT * FROM VIE_TESTE
