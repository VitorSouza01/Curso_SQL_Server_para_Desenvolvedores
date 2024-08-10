
-- INTRODUÇÃO AO MERGE

/*
MERGE
O comando MERGE executa operações de inserção, atualização ou exclusão
em uma tabela de destino usando os resultados de uma união com uma
tabela de origem, ou seja, sincroniza duas tabelas inserindo,
atualizando ou excluindo linhas em uma tabela com base nas diferenças
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
Se a opção PERCENT estiver presente, a expressão será considerada
como percentual.

* tabela_alvo: A tabela alvo, ou seja, a tabela que sofrerá alterações.

* alias_alvo: Alias da tabela alvo.

* tabela_fonte: A tabela fonte, ou seja, a tabela que será comparada com
a tabela alvo.

* alias_fonte_: Alias da tabela fonte.

* ON <condicao_busca_merge>: Define a expressão condicional que irá
comparar a tabela fonte com a tabela alvo.

* WHEN MATCHED: Define o que será feito quando a condição ON for verdadeira.
Opcionalmente, podemos inserir uma condição adicional utilizando AND 
<condicao_busca_clausula>. Podemos ter várias WHEN MATCHED no mesmo MERGE.
Neste caso, as cláusulas iniciais terão que ter uma condição adicional,
obrigatoriamente. Apenas o primeiro WHEN MATCHED verdadeiro será executado.

* THEN: Define o que será executado caso WHEN MATCHED seja verdadeiro. Pode
ser um UPDATE ou DELETE.

WHEN NOT MATCHED [BY TARGET]: Define uma instrução INSERT que será executada
quando existir um registro na tabela fonte que não existe na tabela alvo de
acordo com a condição ON. Uma condição adicional pode ser inserida com AND
<condicao_busca_clausula>. Podemos ter várias WHEN NOT MATCHED no MERGE.
Neste caso, as cláusulas iniciais terão que ter uma condição adicional,
obrigatoriamente. Apenas o primeiro WHEN NOT MATCHED verdadeiro será executado.

WHEN NOT MATCHED BY SOURCE: Define instruções UPDATE ou DELETE que serão
executadas quando existirem registros na tabela alvo que não estão presentes
na tabela fonte, de acordo com a condição ON. Uma condição adicional pode
ser inserida com AND <condicao_busca_clausula>. Podemos ter várias WHEN NOT
MATCHED BY SOURCE no mesmo MERGE. Neste caso, as cláusulas iniciais terão
que ter uma condição adicional, obrigatoriamente. Apenas o primeiro WHEN NOT
MATCHED BY SOURCE verdadeiro será executado.
*/