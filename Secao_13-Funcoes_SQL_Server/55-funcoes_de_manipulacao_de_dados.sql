
-- Funções que retorna a data do sistema

SELECT SYSDATETIME() -- horario local

SELECT SYSDATETIMEOFFSET() -- diferença do horario de greenwich

SELECT SYSUTCDATETIME() -- horario de greenwich


SELECT CURRENT_TIMESTAMP -- horario local resumido

SELECT GETDATE() -- horario local resumido

SELECT GETUTCDATE() -- horario de greenwich resumido


-- DATENAME - Data por Extenso

SELECT DATENAME(YEAR, GETDATE()) -- ano

SELECT DATENAME(MONTH, GETDATE()) -- mês

SELECT DATENAME(DAY, GETDATE()) -- dia

SELECT DATENAME(WEEK, GETDATE()) -- semana do mês

SELECT DATENAME(WEEKDAY, GETDATE()) -- dia da semana


-- DATEPART - Data por número

SELECT DATEPART(WEEKDAY, GETDATE()) -- dia da semana

SELECT DATEPART(MONTH, GETDATE()) -- mês


-- Retorno um inteiro de uma data

SELECT DAY(GETDATE())

SELECT MONTH(GETDATE())

SELECT YEAR(GETDATE())


-- Diferença entre datas
SELECT DATEDIFF(HOUR, '2000-01-01', '2000-03-03')

SELECT DATEDIFF(DAY, '2000-01-01', '2000-03-03')

SELECT DATEDIFF(MONTH, '2000-03-03', '2000-01-01')

SELECT DATEDIFF(YEAR, '2000-01-01', '2012-03-03')

SELECT DATEDIFF(MINUTE, '2000-01-01', '2012-03-03')

SELECT DATEDIFF(SECOND, '2000-01-01', '2012-03-03')

SELECT DATEDIFF_BIG(MICROSECOND, '2000-01-01', '2012-03-03')


-- Como adicionar valores na data
SELECT DATEADD(DAY, 10, GETDATE())

SELECT DATEADD(MONTH, 4, GETDATE())

SELECT DATEADD(YEAR, 5, GETDATE())


-- Verifica se a data é verdadeira
PRINT ISDATE('2020-13-44')

PRINT ISDATE('2020-12-01')

PRINT ISDATE('TESTE')
