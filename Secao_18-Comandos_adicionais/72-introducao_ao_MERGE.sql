
-- INTRODU��O AO MERGE

/*
MERGE
O comando MERGE executa opera��es de inser��o, atualiza��o ou exclus�o
em uma tabela de destino usando os resultados de uma uni�o com uma
tabela de origem, ou seja, sincroniza duas tabelas inserindo,
atualizando ou excluindo linhas em uma tabela com base nas diferen�as
encontradas na outra tabela.
*/


/*
Estrutura MERGE

MERGE
[ TOP (expressao) [ PERCENT ] ]
[ INTO ] tabela_alvo [ [AS ] alias_alvo ]
USING tabela_fonte [ [ AS ] alias_fonte ]
ON < condicao_busca_merge >
[ WHEN MATCHED [ AND < condicao_busca_clausula > ] 
THEN { UPDATE SET nome_coluna = expressao [ ... ] |
DELETE } ]
[ WHEN NOT MATCHED [ BY TARGET ] [ AND < condicao_busca_clausula > ] 
THEN INSERT [ ( lista_coluna ) VALUES ( lista_valores ) ]
[ WHEN NOT MATCHED BY SOURCE [ AND < condicao_busca_clausula > ] 
THEN { UPDATE SET nome_coluna = expressao [ ... ] |
DELETE } ]
*/


/*
MERGE

* TOP (expressao): Avalia somente as N primeiras linhas da tabela.
Se a op��o PERCENT estiver presente, a express�o ser� considerada
como percentual.

* tabela_alvo: A tabela alvo, ou seja, a tabela que sofrer� altera��es.

* alias_alvo: Alias da tabela alvo.

* tabela_fonte: A tabela fonte, ou seja, a tabela que ser� comparada com
a tabela alvo.

* alias_fonte_: Alias da tabela fonte.

* ON <condicao_busca_merge>: Define a express�o condicional que ir�
comparar a tabela fonte com a tabela alvo.

* WHEN MATCHED: Define o que ser� feito quando a condi��o ON for verdadeira.
Opcionalmente, podemos inserir uma condi��o adicional utilizando AND 
<condicao_busca_clausula>. Podemos ter v�rias WHEN MATCHED no mesmo MERGE.
Neste caso, as cl�usulas iniciais ter�o que ter uma condi��o adicional,
obrigatoriamente. Apenas o primeiro WHEN MATCHED verdadeiro ser� executado.

* THEN: Define o que ser� executado caso WHEN MATCHED seja verdadeiro. Pode
ser um UPDATE ou DELETE.

WHEN NOT MATCHED [BY TARGET]: Define uma instru��o INSERT que ser� executada
quando existir um registro na tabela fonte que n�o existe na tabela alvo de
acordo com a condi��o ON. Uma condi��o adicional pode ser inserida com AND
<condicao_busca_clausula>. Podemos ter v�rias WHEN NOT MATCHED no MERGE.
Neste caso, as cl�usulas iniciais ter�o que ter uma condi��o adicional,
obrigatoriamente. Apenas o primeiro WHEN NOT MATCHED verdadeiro ser� executado.

WHEN NOT MATCHED BY SOURCE: Define instru��es UPDATE ou DELETE que ser�o
executadas quando existirem registros na tabela alvo que n�o est�o presentes
na tabela fonte, de acordo com a condi��o ON. Uma condi��o adicional pode
ser inserida com AND <condicao_busca_clausula>. Podemos ter v�rias WHEN NOT
MATCHED BY SOURCE no mesmo MERGE. Neste caso, as cl�usulas iniciais ter�o
que ter uma condi��o adicional, obrigatoriamente. Apenas o primeiro WHEN NOT
MATCHED BY SOURCE verdadeiro ser� executado.
*/