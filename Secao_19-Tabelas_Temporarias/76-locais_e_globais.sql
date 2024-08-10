
-- LOCAIS E GLOBAIS

/*
AS TABELAS TEMPORÁRIAS QUANDO CRIADAS SÃO SALVAS NO BANCO DE DADOS DE SISTEMA TempoDB
e podem ser de dois tipos:

- Locais
- Globais

Locais:
	São criadas com o prefixo '#' antes do nome da tabela,
	são visíveis apenas na conexão responsável por sua criação.

Globais:
	São criados com dois prefixos '##' antes do nome da tabela,
	são visíveis por todas conexões.
*/

-- Tabela Local

CREATE TABLE #TB_TEMP
(
	NOME VARCHAR(50) NULL
)

INSERT #TB_TEMP
VALUES
('JOSÉ ROBERTO')

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
