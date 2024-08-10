
-- Comandos IIF e CHOOSE

/*
O comando IIF retorna um dos dois argumentos passados, dependendo do valor
obtido em uma expressão booleana.

IFF(<expressao_booleana>, <valor_positivo>, <valor_negativo>)

*/

SELECT IIF(2 = 2, 'VERDADE', 'MENTIRA')

SELECT IIF(2 = 4, 'VERDADE', 'MENTIRA')

SELECT NomeCompleto, IIF(Salario >= 5000, 'PADRÃO', 'FORA DO PADRÃO') FROM TB_FUNCIONARIO


/*
O comando CHOOSE age com um índice em uma lista de valores. O argumento
índice determina qual dos valores seguintes será retornado.

CHOOSE(<indice>, <valor_1>, <valor_2>, [<valor_n>])

*/

SELECT CHOOSE(3,'PRIMEIRO', 'SEGUNDO', 'TERCEIRO', 'QUARTO', 'QUINTO')

SELECT CHOOSE(5,'PRIMEIRO', 'SEGUNDO', 'TERCEIRO', 'QUARTO', 'QUINTO')
