
-- COMO REALIZAR CREATE, ALTER E DROP TRIGGER

/*
TRIGGERS

CREATE TRIGGER <NOME_DO_TRIGGER>
ON <NOME_DA_TABELA>
[FOR/AFTER/INSTED OF/[INSERT/UPDATE/DELETE]]
AS
<CORPO_DA_TRIGGER>

FOR => Executa ao mesmo tempo que o comando.
AFTER => Executa depois do comando.
INSTEAD OF => Executa no lugar do comando.
*/


/*
TRIGGERS

Para alterar o c�digo de um trigger, basta utilizar a instru��o ALTER TRIGGER,
que � a mesma sintaxe do CREATE TRIGGER. Quando mudamos o nome de um objeto
que � referenciado por um trigger DDL, temos que mudar o trigger a fim de
refletir o novo nome. Portanto, antes de renomear um objeto, � importante
checar suas depend�ncias, para que possamos determinar quais triggers ser�o
afetados com essa altera��o.
*/


/*
TRIGGERS

Quando n�o precisamos mais utilizar um trigger, podemos exclu�-lo
definitivamente ou apenas desabilit�-lo. Quando desabilitamos um trigger,
ele continua existindo no banco de dados, por�m, ele n�o ser� executado
quando a instru��o T-SQL na qual foi programado for executada.

Os triggers desabilitados podem ser habilitados porteriormente, conforme
a necessidade, quaisquer objetos ou dados relacionados n�o s�o afetados
com a desabilita��o.
*/


/*
DISABLE TRIGGERS

DISABLE TRIGGER {[nome_schema.]nome_trigger[,...n]|ALL}
ON {nome_objeto | DATABASE | ALL SERVER}[;]
*/


/*
DISABLE TRIGGERS

* nome_schema: Trata-se do nome do schema ao qual a trigger pertence;
* nome_trigger: � o nome do trigger a ser desabilitado;
* ALL: Determina a desativa��o de todos os triggers definidos no
escopo da cl�usula ON;
* nome_objeto: Representa o nome da tabela ou view no qual o trigger
a ser desabilitado foi criado para execu��o;
* DATABASE: Indica, para trigger DDL, que o trigger a ser desabilitado
foi criado ou modificado para ser executado com o escopo de banco
de dados;
* ALL SERVER: Indica, para trigger DDL e at� triggers de logon, que
o trigger a ser desabilitado foi criado ou modificado para ser
executado com o escopo do servidor.
*/


/*
ENABLE TRIGGERS

ENABLE TRIGGER {[nome_schema.] nome_trigger[,...n]|ALL}
ON {nome_objeto | DATABASE | ALL SERVER}[;]
*/


/*
DROP TRIGGER

* Triggers DML
DROP TRIGGER [nome_schema.]nome_trigger[,...][;]

* Triggers DDL
DROP TRIGGER nome_trigger [,...n]
ON {DATABASE | ALL SERVER}[;]

* Triggers de logon
DROP TRIGGER nome_trigger [,...n]
ON ALL SERVER
*/


/*
DROP TRIGGER

* nome_schema: Representa o nome do schema ao qual pertence
o trigger DML;
* nome_trigger: � o nome do trigger a ser exclu�do;
* DATABASE: Determina que o escopo do trigger DDL aplica-se
ao banco de dados atual. Sua utiliza��o � obrigat�ria caso
tenha sido especificada na cria��o ou modifica��o do trigger;
* ALL SERVER: Determina que o escopo do trigger DDL aplica-se
ao servidor atual. Sua utiliza��o � obrigat�ria caso tenha 
sido especificada na cria��o ou modifica��o do trigger.
Triggers de logon tamb�m aceitam ALL SERVER.111
*/
