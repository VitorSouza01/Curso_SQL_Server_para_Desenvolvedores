
-- CRIANDO STORED PROCEDURE

/*
CREATE STORED PROCEDURE

Para criarmos uma stored procedure, devemos utilizar a instru��o CREATE
PROCEDURE, antes de criarmo a stored procedure, primeiro devemos escrever
e testar as instru��es, a fim de verificar se os resultados obtidos s�o
realmente os esperados. No corpo de uma stored procedure podem ser
inclu�das instru��es T-SQL, instru��es l�gicas e transacionais. Para
chamarmos uma stored procedure, utilizamos a instru��o EXECUTE.
*/


/*
CREATE STORED PROCEDURE - ESTRUTURA

CREATE PROC[EDURE] [nome_schema.]nome_procedure
[({@parametro1}tipo1 [VARYING] [=default1] [OUTPUT])] {,...}
[WITH {RECOMPILE | ENCRYPTION | EXECUTE AS 'nome_usuario'}]
[FOR REPLICATION]
AS batch | EXTERNAL NAME metodo
*/


/*
CREATE STORED PROCEDURE

* nome_schema: � o nome do esquema ao qual est� atribu�do o proprietario
da stored procedure que vai ser criada.
* nome_procedure: � o nome da procedure que est� sendo criada.
* tipo1: � o tipo de dados do par�metro.
* VARYING: Aplic�vel somente para par�metros cursor. Define o conjunto de
resultados suportado como um par�metro de sa�da.
* default1: � um valor padr�o (constante ou NULL) para o par�metro. A
procedure poder� ser executada sem que especifiquemos um valor para o
par�metro, caso um valor padr�o seja definido.
* OUTPUT: Indica que o par�metro � de retorno. Ele poder� ser retornado
tanto para o sitema quanto para a procedure de chamada.
* WITH RECOMPILE: N�o pode ser utilizado como FOR REPLICATION e determina
que o Database Engine n�o armazene em cache um plano para a procedure, a
qual ser� compilada em tempo de execu��o.
* WITH ENCRYPTION: Faz como o texto original do comando CREATE PROCEDURE
seja convertido em um formato que n�o seja diretamente vis�vel no SQL Server.
* EXECUTE AS: Define o contexto de seguran�a no qual a stored procedure
ser� executada (CALLER, SELF e OWNER).
* CALLER: Especifica que as instru��es dentro do m�dulo s�o executadas
no contexto do chamador do m�dulo. O usu�rio que executa o m�dulo deve
ter permiss�es apropriadas n�o apenas no pr�prio m�dulo, mas tamb�m
em quaisquer objetos de banco de dados referenciados pelo m�dulo.
*SELF: EXECUTE AS SELF � equivalente a EXECUTE AS user_name, onde o
usu�rio especificado � a pessoa que cria ou altera o m�dulo.
* OWNER: Especifica que as instru��es dentro do m�dulo s�o executadas
no contexto do propriet�rio atual do m�dulo. Se o m�dulo n�o tiver
um pr�priet�rio especificado, ser� usado o propriet�rio do esquema do
m�dulo.
* FOR REPLICATION: � utilizado como filtro de stored procedure, � 
executado somente durante a replica��o. Caso especifiquemos FOR
REPLICATION, a declara��o de par�metros n�o pode ser feita.
*/


/*
CONSIDERA��ES STORED PROCEDURE

Antes de criarmos uma stored procedure devemos planejar a stored
procedure para que realize apenas uma tarefa, devemos testar as 
instru��es que vamos utilizar para ter certeza que n�o tenham
erros ao depurar no servidor.
Por conven��o evitar o uso do prefixo sp_ nos nomes de stored
procedures locais para evitar confus�o ao diferenci�-las com 
stored procedures do sistema. Procurar utilizar o m�nimo de 
stored procedures tempor�rias para n�o onerar tempdb pois pode
gerar problemas de desempenho.
*/


/*
CONSIDERA��ES STORED PROCEDURE

Comandos que n�o podem ser usados dentro do stored procedure:

* CREATE PROCEDURE.
* CREATE DEFAULT.
* CREATE RULE.
* CREATE TRIGGER.
* CREATE VIEW.
*/


/*
CONSIDERA��ES STORED PROCEDURE

Uma store procedure pode referenciar tabelas tempor�rias,
tabelas parmanentes, views e outras stored procedures, ao
criar uma tabela tempor�ria em uma stored procedure, est�
existir� enquanto a procedure estiver sendo executada.
� poss�vel aninhar at� 32 stored procedures, ou seja, 32
chamadas consecutivas que uma procedure faz para outras
procedures ou para ela pr�pria e poder utilizar @@nestlevel
para saber qual � o n�vel de aninhamento atual.
*/