
-- MANIPULANDO ÍNDICES

-- Índices

-- CREATE [UNIQUE] [CLUSTERED | NONUCLUSTERED] INDEX
-- IX_<nome_do_indice>
-- ON
-- <nome_tabela_ou_view> (<nome_coluna>[ASC | DESC])


-- Índices
-- * UNIQUE: Não será permitida a duplicidade do campo chave do índice.
-- * CLUSTERED: Indica que as linhas da tabela estarão fisicamente
-- ordenadas pelo campo que é a chave do índice.
-- * NONCLUSTERED: Indica que o índice não interfere na ordenação das
-- linhas da tabela (default).
-- * <nome_tabela_ou_view>: Nome da tabela ou view para a qual o índice
-- será criado.
-- * <nome_coluna>: É a coluna da tabela que será a chave do índice.
-- * ASC: Esta palavra determina a ordenação ascedente (padrão).
-- * DESC: Esta palavra determina a ordenação descendente.

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

-- Index Não Clusterizado
CREATE NONCLUSTERED INDEX IX_RG
ON dbo.TesteIndex (RG DESC)

-- Apagar um Index
DROP INDEX dbo.TesteIndex.IX_RG

-- Index Não Clusterizado Composto
CREATE NONCLUSTERED INDEX IX_RG_Nome
ON dbo.TesteIndex (RG, Nome)

-- Visualizar Informação de um Index
EXEC sp_helpindex TesteIndex
