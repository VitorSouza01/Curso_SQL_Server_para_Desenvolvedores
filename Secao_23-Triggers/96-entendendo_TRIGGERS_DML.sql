
-- ENTENDENDO TRIGGERS DML

/*
TRIGGERS DML

Um trigger DML é uma ação programada para executar quando um
evento DML ocorre em um servidor de banco de dados. As instruções
UPDATE, INSERT ou DELETE executadas em uma tabela ou view.

Características Principais:
* Podem afetar outras tabelas e pode incluir Transact-SQL complexas.
* Podem prevenir operações incorretas ou mal intecionadas de INSERT,
UPDATE ou DELETE e fazer com que restrições mais complexas do que
aquelas definidas com constraints CHECK sejam aplicadas.
*/


/*
TRIGGERS DML

* Podem referenciar colunas em outras tabelas, ao contrário de
constraints CHECK.
* Podem avaliar o estado de uma tabela antes e depois de uma
modificação dos dados e realizar ações com base nas diferenças
entre o estado anterior e posterior à modificação dos dados.
* Como resposta a uma mesma instrução de modificação de dados,
os triggers DML do mesmo tipo (INSERT, UPDATE ou DELETE)
localizados em uma mesma tabela permitem que diferentes ações
sejam realizadas.
*/


/*
TRIGGERS DML

Divisão dos Triggers DML:
* Triggers AFTER: São utilizados somente em tabelas, os triggers
AFTER são executados após a conclusão de ações realizadas por uma
instrução INSERT, UPDATE ou DELETE.

* Triggers INSTEAD OF: Este trigger é responsável por determinar
que o trigger DML seja executado ao invés de o comando SQL ser
disparado, Com isso, as ações realizadas por comandos disparadores
são sobrescritas.
*/


/*
TRIGGERS DML

O SQL Server cria na memória uma ou duas tabelas no decorrer da
execução de um trigger. Essas tabelas têm a função de armazenar
os dados com os quais trabalhamos. A criação de uma ou duas
tabelas depende do tipo de trigger que está sendo utilizado.

* Dentro de triggers do tipo INSERT podemos acessar duas tabelas
temporárias chamadas INSERTED e DELETED. A tabela INSERTED
armazena os registros que acabaram de ser inseridos e provocaram
a execução do trigger, enquanto que a tabela DELETED estará 
sempre vazia.
*/


/*
TRIGGERS DML

* Dentro do triggers do tipo DELETE podemos acessar duas tabelas
temporárias chamadas INSERTED e DELETED. A tabela DELETED armazena
os registros que acabaram de ser excluídos e provocaram a execução
do trigger, enquanto que a tabela INSERTED estará sempre vazia.

* Dentro de triggers do tipo UPDATE podemos acessar duas tabelas
temporárias chamadas INSERTED e DELETED. A tabela DELETED armazena
os registros com os dados anteriores à alteração e a tabela
INSERTED armazena os dados posteriores à alteração.
*/


/*
TRIGGERS DML

* TRIGGER INSERT: é aquele que é executado quando uma instrução
INSERT insere dados em uma tabela ou view na qual o trigger está
configurado.

* TRIGGER DELETE: é aquele que é executado quando uma instrução
DELETE é executada para excluir dados em uma tabela ou view.

* TRIGGER UPDATE: é aquele que é executadp quando uma intrução
UPDATE altera dados em uma tabela ou view na qual o trigger
está configurado.
*/
