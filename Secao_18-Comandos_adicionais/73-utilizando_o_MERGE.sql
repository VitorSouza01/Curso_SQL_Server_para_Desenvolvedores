
-- UTILIZANDO O MERGE

CREATE TABLE dbo.TB_FUNCIONARIO_TEMP
(
	FuncionarioId INT NOT NULL PRIMARY KEY,
	NomeCompleto VARCHAR(70) NOT NULL,
	Cargo VARCHAR(50) NOT NULL,
	DataNascimento DATETIME2(7) NOT NULL,
	Salario MONEY NOT NULL,
);

INSERT INTO dbo.TB_FUNCIONARIO_TEMP
(FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario)
SELECT FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario FROM TB_FUNCIONARIO

DELETE dbo.TB_FUNCIONARIO_TEMP WHERE FuncionarioId IN(1, 2, 3);

UPDATE dbo.TB_FUNCIONARIO_TEMP SET Salario = 500 WHERE FuncionarioId IN (9, 8, 7);

SELECT * FROM TB_FUNCIONARIO_TEMP
SELECT * FROM TB_FUNCIONARIO

-- SET IDENTITY_INSERT dbo.TB_FUNCIONARIO_TEMP ON;

MERGE dbo.TB_FUNCIONARIO_TEMP AS ALVO
USING TB_FUNCIONARIO AS ORIGEM
	ON ALVO.FuncionarioId = ORIGEM.FuncionarioId
WHEN MATCHED AND ALVO.Salario <> ORIGEM.Salario
	THEN UPDATE SET ALVO.Salario = ORIGEM.Salario
WHEN NOT MATCHED
	THEN
		INSERT (FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario)
		VALUES (FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario);

-- SET IDENTITY_INSERT dbo.TB_FUNCIONARIO_TEMP OFF;