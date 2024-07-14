
-- Retorna todos os itens que est�o em comum entre duas Querys.

-- INTERSECT -> Retorna linhas distintas que s�o produzidas pelo operador 
-- das consultas de entrada � esquerda e � direita.
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
INTERSECT
SELECT Pais FROM TB_ENDERECO
WHERE FuncionarioId IS NOT NULL

-- EXCEPT -> Retorna linhas distintas da consulta de entrada � esquerda 
-- que n�o s�o produzidas pela consulta de entrada � direita.
SELECT Pais FROM TB_ENDERECO
WHERE ClienteId IS NOT NULL
EXCEPT
SELECT Pais FROM TB_ENDERECO
WHERE FuncionarioId IS NOT NULL