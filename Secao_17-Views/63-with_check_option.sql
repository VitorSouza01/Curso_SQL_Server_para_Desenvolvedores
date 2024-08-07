
--WITH CHECK OPTION

-- Views
-- WITH CHECK OPTION: Está cláusula faz com que os critérios definidos
-- na cláusula WHERE sejam seguidos no momento em que são executados
-- os comandos que realizam a alteração de dados com relação às VIEWS.


CREATE TABLE TB_TESTE
(
	Nome VARCHAR(50) NULL,
	Telefone VARCHAR(30) NULL
);

INSERT INTO TB_TESTE
(Nome)
VALUES
('José'),('Maria'),('João')

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
