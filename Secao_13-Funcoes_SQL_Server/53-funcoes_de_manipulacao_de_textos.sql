
-- CONCAT - converte implicitamente todos os argumentos nos
-- tipos de cadeia de caracteres antes da concatena��o.
PRINT CONCAT('A','B','C','D')
PRINT CONCAT(' A',' B',' C',' D')


-- LTRIM - retorna uma cadeia de caracteres ap�s truncar
-- os caracteres principais.
PRINT CONCAT('TESTE', '  TESTE')
PRINT CONCAT('TESTE', LTRIM('  TESTE'))


-- RTRIM - apara um conjunto especifico de caracteres
-- do final de uma string.
PRINT CONCAT('TESTE', '  TESTE')
PRINT CONCAT(RTRIM('TESTE  '), 'TESTE')


-- TRIM - remove o caractere de espa�o ou outros
-- caracteres especificados do inicio e do final de
-- uma cadeia de caracteres.
PRINT ' TESTE ' + 'T'
PRINT TRIM(' TESTE ') + 'T'


-- LEFT - retorna todos os registros � esquerda.
PRINT LEFT('TESTE', 3)
PRINT LEFT('TESTE', 4)


-- RIGHT - retorna todos os registros � direita.
PRINT RIGHT('TESTE', 3)
PRINT RIGHT('TESTE', 4)


-- SUBSTRING - retorna uma parte de uma express�o
-- de caractere.
PRINT SUBSTRING('TESTES', 1, 3)
PRINT SUBSTRING('TESTES', 1, 5)


-- LEN - retorna o n�mero de caracteres codificados
-- em determinada express�o de cadeia de caracteres.
PRINT LEN('TESTE')


-- UPER - retorna todos os carecteres de respostas
-- � consulta em letras mai�sculas.
PRINT UPPER('teste')


-- LOWER - retorna uma express�o de caractere depois
-- de converter para min�sculas os dados de
-- caracteres em mai�sculas.
PRINT LOWER ('TESTE')


-- REPLICATE - � uma express�o de um tipo de dados
-- bin�rio ou cadeia de carecteres.
PRINT REPLICATE('T', 40)
PRINT CONCAT(REPLICATE('0', 6), 0.44)


-- REPLACE - � uma cadeia de carecteres, com
-- substitui��es feitas, que come�a na posi��o
-- especificada pelo in�cio e termina no final 
-- da cadeia de caracteres de express�o.
PRINT REPLACE('TESTE', 'T', 'M')


-- REVERSE - opera em uma string e retorna os
-- caracteres na ordem reversa.
PRINT REVERSE('TESTES')
