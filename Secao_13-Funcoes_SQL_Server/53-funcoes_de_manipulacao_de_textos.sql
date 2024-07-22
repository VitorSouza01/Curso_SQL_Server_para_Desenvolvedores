
-- CONCAT - converte implicitamente todos os argumentos nos
-- tipos de cadeia de caracteres antes da concatenação.
PRINT CONCAT('A','B','C','D')
PRINT CONCAT(' A',' B',' C',' D')


-- LTRIM - retorna uma cadeia de caracteres após truncar
-- os caracteres principais.
PRINT CONCAT('TESTE', '  TESTE')
PRINT CONCAT('TESTE', LTRIM('  TESTE'))


-- RTRIM - apara um conjunto especifico de caracteres
-- do final de uma string.
PRINT CONCAT('TESTE', '  TESTE')
PRINT CONCAT(RTRIM('TESTE  '), 'TESTE')


-- TRIM - remove o caractere de espaço ou outros
-- caracteres especificados do inicio e do final de
-- uma cadeia de caracteres.
PRINT ' TESTE ' + 'T'
PRINT TRIM(' TESTE ') + 'T'


-- LEFT - retorna todos os registros à esquerda.
PRINT LEFT('TESTE', 3)
PRINT LEFT('TESTE', 4)


-- RIGHT - retorna todos os registros à direita.
PRINT RIGHT('TESTE', 3)
PRINT RIGHT('TESTE', 4)


-- SUBSTRING - retorna uma parte de uma expressão
-- de caractere.
PRINT SUBSTRING('TESTES', 1, 3)
PRINT SUBSTRING('TESTES', 1, 5)


-- LEN - retorna o número de caracteres codificados
-- em determinada expressão de cadeia de caracteres.
PRINT LEN('TESTE')


-- UPER - retorna todos os carecteres de respostas
-- à consulta em letras maiúsculas.
PRINT UPPER('teste')


-- LOWER - retorna uma expressão de caractere depois
-- de converter para minúsculas os dados de
-- caracteres em maiúsculas.
PRINT LOWER ('TESTE')


-- REPLICATE - é uma expressão de um tipo de dados
-- binário ou cadeia de carecteres.
PRINT REPLICATE('T', 40)
PRINT CONCAT(REPLICATE('0', 6), 0.44)


-- REPLACE - é uma cadeia de carecteres, com
-- substituições feitas, que começa na posição
-- especificada pelo início e termina no final 
-- da cadeia de caracteres de expressão.
PRINT REPLACE('TESTE', 'T', 'M')


-- REVERSE - opera em uma string e retorna os
-- caracteres na ordem reversa.
PRINT REVERSE('TESTES')
