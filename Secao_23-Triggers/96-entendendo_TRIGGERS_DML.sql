
-- ENTENDENDO TRIGGERS DML

/*
TRIGGERS DML

Um trigger DML � uma a��o programada para executar quando um
evento DML ocorre em um servidor de banco de dados. As instru��es
UPDATE, INSERT ou DELETE executadas em uma tabela ou view.

Caracter�sticas Principais:
* Podem afetar outras tabelas e pode incluir Transact-SQL complexas.
* Podem prevenir opera��es incorretas ou mal intecionadas de INSERT,
UPDATE ou DELETE e fazer com que restri��es mais complexas do que
aquelas definidas com constraints CHECK sejam aplicadas.
*/


/*
TRIGGERS DML

* Podem referenciar colunas em outras tabelas, ao contr�rio de
constraints CHECK.
* Podem avaliar o estado de uma tabela antes e depois de uma
modifica��o dos dados e realizar a��es com base nas diferen�as
entre o estado anterior e posterior � modifica��o dos dados.
* Como resposta a uma mesma instru��o de modifica��o de dados,
os triggers DML do mesmo tipo (INSERT, UPDATE ou DELETE)
localizados em uma mesma tabela permitem que diferentes a��es
sejam realizadas.
*/


/*
TRIGGERS DML

Divis�o dos Triggers DML:
* Triggers AFTER: S�o utilizados somente em tabelas, os triggers
AFTER s�o executados ap�s a conclus�o de a��es realizadas por uma
instru��o INSERT, UPDATE ou DELETE.

* Triggers INSTEAD OF: Este trigger � respons�vel por determinar
que o trigger DML seja executado ao inv�s de o comando SQL ser
disparado, Com isso, as a��es realizadas por comandos disparadores
s�o sobrescritas.
*/


/*
TRIGGERS DML

O SQL Server cria na mem�ria uma ou duas tabelas no decorrer da
execu��o de um trigger. Essas tabelas t�m a fun��o de armazenar
os dados com os quais trabalhamos. A cria��o de uma ou duas
tabelas depende do tipo de trigger que est� sendo utilizado.

* Dentro de triggers do tipo INSERT podemos acessar duas tabelas
tempor�rias chamadas INSERTED e DELETED. A tabela INSERTED
armazena os registros que acabaram de ser inseridos e provocaram
a execu��o do trigger, enquanto que a tabela DELETED estar� 
sempre vazia.
*/


/*
TRIGGERS DML

* Dentro do triggers do tipo DELETE podemos acessar duas tabelas
tempor�rias chamadas INSERTED e DELETED. A tabela DELETED armazena
os registros que acabaram de ser exclu�dos e provocaram a execu��o
do trigger, enquanto que a tabela INSERTED estar� sempre vazia.

* Dentro de triggers do tipo UPDATE podemos acessar duas tabelas
tempor�rias chamadas INSERTED e DELETED. A tabela DELETED armazena
os registros com os dados anteriores � altera��o e a tabela
INSERTED armazena os dados posteriores � altera��o.
*/


/*
TRIGGERS DML

* TRIGGER INSERT: � aquele que � executado quando uma instru��o
INSERT insere dados em uma tabela ou view na qual o trigger est�
configurado.

* TRIGGER DELETE: � aquele que � executado quando uma instru��o
DELETE � executada para excluir dados em uma tabela ou view.

* TRIGGER UPDATE: � aquele que � executadp quando uma intru��o
UPDATE altera dados em uma tabela ou view na qual o trigger
est� configurado.
*/
