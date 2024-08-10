
-- Comandos LAG e LEAD

/*
Em uma consulta (SELECT), os operadores LAG e LEAD permitem recuperar um campo
de N linhas anteriores à atual (LAG) ou posteriores à atual (LEAD).

LAG( coluna, offset,[ default])
LEAD( coluna, offset,[ default])
*/

SELECT  NomeCompleto,
		Salario,
		LAG(Salario, 1, 0) OVER(ORDER BY NomeCompleto) AS SALARIO_ANTERIOR,
		LEAD(Salario, 1, 0) OVER(ORDER BY NomeCompleto) AS PROXIMO_SALARIO
FROM TB_FUNCIONARIO

SELECT  NomeCompleto,
		Salario
	FROM TB_FUNCIONARIO
	ORDER BY NomeCompleto
