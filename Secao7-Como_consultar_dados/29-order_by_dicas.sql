
SELECT * FROM TB_CLIENTE

-- Ordenar de forma Ascendente
SELECT * FROM TB_CLIENTE
ORDER BY CPF ASC

-- Ordenar de forma Descendente
SELECT * FROM TB_CLIENTE
ORDER BY CPF DESC

SELECT TOP 1 * FROM TB_CLIENTE
ORDER BY DataNascimento

SELECT TOP 1 * FROM TB_CLIENTE
ORDER BY DataNascimento DESC

SELECT TOP 4 * FROM TB_CLIENTE
ORDER BY CPF

UPDATE TB_CLIENTE
SET CPF = '12345678900'
WHERE Id = 1

SELECT TOP 3 WITH TIES * FROM TB_CLIENTE
ORDER BY CPF
