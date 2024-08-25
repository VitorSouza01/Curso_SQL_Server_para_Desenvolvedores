
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

Para alterar o código de um trigger, basta utilizar a instrução ALTER TRIGGER,
que é a mesma sintaxe do CREATE TRIGGER. Quando mudamos o nome de um objeto
que é referenciado por um trigger DDL, temos que mudar o trigger a fim de
refletir o novo nome. Portanto, antes de renomear um objeto, é importante
checar suas dependências, para que possamos determinar quais triggers serão
afetados com essa alteração.
*/


/*
TRIGGERS

Quando não precisamos mais utilizar um trigger, podemos excluí-lo
definitivamente ou apenas desabilitá-lo. Quando desabilitamos um trigger,
ele continua existindo no banco de dados, porém, ele não será executado
quando a instrução T-SQL na qual foi programado for executada.

Os triggers desabilitados podem ser habilitados porteriormente, conforme
a necessidade, quaisquer objetos ou dados relacionados não são afetados
com a desabilitação.
*/


/*
DISABLE TRIGGERS

DISABLE TRIGGER {[nome_schema.]nome_trigger[,...n]|ALL}
ON {nome_objeto | DATABASE | ALL SERVER}[;]
*/


/*
DISABLE TRIGGERS

* nome_schema: Trata-se do nome do schema ao qual a trigger pertence;
* nome_trigger: É o nome do trigger a ser desabilitado;
* ALL: Determina a desativação de todos os triggers definidos no
escopo da cláusula ON;
* nome_objeto: Representa o nome da tabela ou view no qual o trigger
a ser desabilitado foi criado para execução;
* DATABASE: Indica, para trigger DDL, que o trigger a ser desabilitado
foi criado ou modificado para ser executado com o escopo de banco
de dados;
* ALL SERVER: Indica, para trigger DDL e até triggers de logon, que
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
* nome_trigger: É o nome do trigger a ser excluído;
* DATABASE: Determina que o escopo do trigger DDL aplica-se
ao banco de dados atual. Sua utilização é obrigatória caso
tenha sido especificada na criação ou modificação do trigger;
* ALL SERVER: Determina que o escopo do trigger DDL aplica-se
ao servidor atual. Sua utilização é obrigatória caso tenha 
sido especificada na criação ou modificação do trigger.
Triggers de logon também aceitam ALL SERVER.111
*/
