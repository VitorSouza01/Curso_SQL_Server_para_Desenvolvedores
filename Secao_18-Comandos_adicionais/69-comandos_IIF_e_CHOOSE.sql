
-- Comandos IIF e CHOOSE

/*
O comando IIF retorna um dos dois argumentos passados, dependendo do valor
obtido em uma express�o booleana.

IFF(<expressao_booleana>, <valor_positivo>, <valor_negativo>)

*/

SELECT IIF(2 = 2, 'VERDADE', 'MENTIRA')

SELECT IIF(2 = 4, 'VERDADE', 'MENTIRA')

SELECT NomeCompleto, IIF(Salario >= 5000, 'PADR�O', 'FORA DO PADR�O') FROM TB_FUNCIONARIO


/*
O comando CHOOSE age com um �ndice em uma lista de valores. O argumento
�ndice determina qual dos valores seguintes ser� retornado.

CHOOSE(<indice>, <valor_1>, <valor_2>, [<valor_n>])

*/

SELECT CHOOSE(3,'PRIMEIRO', 'SEGUNDO', 'TERCEIRO', 'QUARTO', 'QUINTO')

SELECT CHOOSE(5,'PRIMEIRO', 'SEGUNDO', 'TERCEIRO', 'QUARTO', 'QUINTO')
