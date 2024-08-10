
-- LOCAIS E GLOBAIS

/*
AS TABELAS TEMPOR�RIAS QUANDO CRIADAS S�O SALVAS NO BANCO DE DADOS DE SISTEMA TempoDB
e podem ser de dois tipos:

- Locais
- Globais

Locais:
	S�o criadas com o prefixo '#' antes do nome da tabela,
	s�o vis�veis apenas na conex�o respons�vel por sua cria��o.

Globais:
	S�o criados com dois prefixos '##' antes do nome da tabela,
	s�o vis�veis por todas conex�es.
*/

-- Tabela Local

CREATE TABLE #TB_TEMP
(
	NOME VARCHAR(50) NULL
)

INSERT #TB_TEMP
VALUES
('JOS� ROBERTO')

SELECT * FROM #TB_TEMP


-- Tabela Global

CREATE TABLE ##TB_TEMP_02
(
	NOME VARCHAR(50) NULL
)

INSERT ##TB_TEMP_02
VALUES
('MARCOS PAULO')

SELECT * FROM ##TB_TEMP_02
