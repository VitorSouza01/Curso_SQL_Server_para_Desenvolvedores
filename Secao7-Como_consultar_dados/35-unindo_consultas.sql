
SELECT NomeCompleto, Contato, Cargo FROM TB_CLIENTE
SELECT Empresa, Contato, Cargo FROM TB_FORNECEDOR

-- A quantidade e valor das colunas tem que ser a mesma!
SELECT NomeCompleto, Contato, Cargo FROM TB_CLIENTE
UNION
SELECT Empresa, Contato, Cargo FROM TB_FORNECEDOR

-- Colocar um apelido
SELECT NomeCompleto AS Empresa, Contato, Cargo FROM TB_CLIENTE
UNION
SELECT Empresa, Contato, Cargo FROM TB_FORNECEDOR

-- Não mostra itens repetidos
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
UNION
SELECT Pais FROM TB_ENDERECO
WHERE FornecedorId IS NOT NULL

-- Mostra itens repetidos
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
UNION ALL
SELECT Pais FROM TB_ENDERECO
WHERE FornecedorId IS NOT NULL

SELECT Pais, 'CLIENTE' FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
UNION ALL
SELECT Pais, 'FORNECEDOR' FROM TB_ENDERECO
WHERE FornecedorId IS NOT NULL
