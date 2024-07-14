
-- Retorna todos os itens que estão em comum entre duas Querys.

-- INTERSECT -> Retorna linhas distintas que são produzidas pelo operador 
-- das consultas de entrada à esquerda e à direita.
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
INTERSECT
SELECT Pais FROM TB_ENDERECO
WHERE FuncionarioId IS NOT NULL

-- EXCEPT -> Retorna linhas distintas da consulta de entrada à esquerda 
-- que não são produzidas pela consulta de entrada à direita.
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
EXCEPT
SELECT Pais FROM TB_ENDERECO
WHERE FuncionarioId IS NOT NULL