
-- MANIPULANDO �NDICES

-- �ndices

-- CREATE [UNIQUE] [CLUSTERED | NONUCLUSTERED] INDEX
-- IX_<nome_do_indice>
-- ON
-- <nome_tabela_ou_view> (<nome_coluna>[ASC | DESC])


-- �ndices
-- * UNIQUE: N�o ser� permitida a duplicidade do campo chave do �ndice.
-- * CLUSTERED: Indica que as linhas da tabela estar�o fisicamente
-- ordenadas pelo campo que � a chave do �ndice.
-- * NONCLUSTERED: Indica que o �ndice n�o interfere na ordena��o das
-- linhas da tabela (default).
-- * <nome_tabela_ou_view>: Nome da tabela ou view para a qual o �ndice
-- ser� criado.
-- * <nome_coluna>: � a coluna da tabela que ser� a chave do �ndice.
-- * ASC: Esta palavra determina a ordena��o ascedente (padr�o).
-- * DESC: Esta palavra determina a ordena��o descendente.

-- ---------------------------------------------------------------------------

CREATE TABLE dbo.TesteIndex
(
	CPF VARCHAR(11) NOT NULL,
	Nome VARCHAR(50) NULL,
	RG VARCHAR(10) NULL
);

-- Index Clusterizado
CREATE UNIQUE CLUSTERED INDEX IX_CPF
ON dbo.TesteIndex (CPF)

-- Index N�o Clusterizado
CREATE NONCLUSTERED INDEX IX_RG
ON dbo.TesteIndex (RG DESC)

-- Apagar um Index
DROP INDEX dbo.TesteIndex.IX_RG

-- Index N�o Clusterizado Composto
CREATE NONCLUSTERED INDEX IX_RG_Nome
ON dbo.TesteIndex (RG, Nome)

-- Visualizar Informa��o de um Index
EXEC sp_helpindex TesteIndex
