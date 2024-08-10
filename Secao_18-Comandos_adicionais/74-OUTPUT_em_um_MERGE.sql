
-- OUTPUT EM UM MERGE

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

INSERT INTO dbo.TB_FUNCIONARIO_TEMP
(FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario)
VALUES
(123, 'MARIA DA SILVA', 'VENDEDOR(A)', '1968-12-08 00:00:00.0000000', 3333),
(321, 'JO�O PRADO', 'VENDEDOR(A)', '1968-12-08 00:00:00.0000000', 3333);

SELECT * FROM TB_FUNCIONARIO_TEMP
SELECT * FROM TB_FUNCIONARIO

MERGE dbo.TB_FUNCIONARIO_TEMP AS ALVO
USING TB_FUNCIONARIO AS ORIGEM
	ON ALVO.FuncionarioId = ORIGEM.FuncionarioId
WHEN MATCHED AND ALVO.Salario <> ORIGEM.Salario
	THEN UPDATE SET ALVO.Salario = ORIGEM.Salario
WHEN NOT MATCHED
	THEN
		INSERT (FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario)
		VALUES (FuncionarioId, NomeCompleto, Cargo, DataNascimento, Salario)
	WHEN NOT MATCHED BY SOURCE THEN
		DELETE
		OUTPUT
			$ACTION AS [A��O],
			INSERTED.FuncionarioId AS [FuncionarioId Ap�s],
			DELETED.FuncionarioId AS [FuncionarioId Antes],
			INSERTED.NomeCompleto AS [NomeCompleto Ap�s],
			DELETED.NomeCompleto AS [NomeCompleto Antes],
			INSERTED.Salario AS [Salario Ap�s],
			DELETED.Salario AS [Salario Antes];

