
-- CRIANDO STORED PROCEDURE

/*
CREATE STORED PROCEDURE

Para criarmos uma stored procedure, devemos utilizar a instrução CREATE
PROCEDURE, antes de criarmo a stored procedure, primeiro devemos escrever
e testar as instruções, a fim de verificar se os resultados obtidos são
realmente os esperados. No corpo de uma stored procedure podem ser
incluídas instruções T-SQL, instruções lógicas e transacionais. Para
chamarmos uma stored procedure, utilizamos a instrução EXECUTE.
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

* nome_schema: É o nome do esquema ao qual está atribuído o proprietario
da stored procedure que vai ser criada.
* nome_procedure: É o nome da procedure que está sendo criada.
* tipo1: É o tipo de dados do parâmetro.
* VARYING: Aplicável somente para parâmetros cursor. Define o conjunto de
resultados suportado como um parâmetro de saída.
* default1: É um valor padrão (constante ou NULL) para o parâmetro. A
procedure poderá ser executada sem que especifiquemos um valor para o
parâmetro, caso um valor padrão seja definido.
* OUTPUT: Indica que o parâmetro é de retorno. Ele poderá ser retornado
tanto para o sitema quanto para a procedure de chamada.
* WITH RECOMPILE: Não pode ser utilizado como FOR REPLICATION e determina
que o Database Engine não armazene em cache um plano para a procedure, a
qual será compilada em tempo de execução.
* WITH ENCRYPTION: Faz como o texto original do comando CREATE PROCEDURE
seja convertido em um formato que não seja diretamente visível no SQL Server.
* EXECUTE AS: Define o contexto de segurança no qual a stored procedure
será executada (CALLER, SELF e OWNER).
* CALLER: Especifica que as instruções dentro do módulo são executadas
no contexto do chamador do módulo. O usuário que executa o módulo deve
ter permissões apropriadas não apenas no próprio módulo, mas também
em quaisquer objetos de banco de dados referenciados pelo módulo.
*SELF: EXECUTE AS SELF é equivalente a EXECUTE AS user_name, onde o
usuário especificado é a pessoa que cria ou altera o módulo.
* OWNER: Especifica que as instruções dentro do módulo são executadas
no contexto do proprietário atual do módulo. Se o módulo não tiver
um próprietário especificado, será usado o proprietário do esquema do
módulo.
* FOR REPLICATION: É utilizado como filtro de stored procedure, é 
executado somente durante a replicação. Caso especifiquemos FOR
REPLICATION, a declaração de parâmetros não pode ser feita.
*/


/*
CONSIDERAÇÕES STORED PROCEDURE

Antes de criarmos uma stored procedure devemos planejar a stored
procedure para que realize apenas uma tarefa, devemos testar as 
instruções que vamos utilizar para ter certeza que não tenham
erros ao depurar no servidor.
Por convenção evitar o uso do prefixo sp_ nos nomes de stored
procedures locais para evitar confusão ao diferenciá-las com 
stored procedures do sistema. Procurar utilizar o mínimo de 
stored procedures temporárias para não onerar tempdb pois pode
gerar problemas de desempenho.
*/


/*
CONSIDERAÇÕES STORED PROCEDURE

Comandos que não podem ser usados dentro do stored procedure:

* CREATE PROCEDURE.
* CREATE DEFAULT.
* CREATE RULE.
* CREATE TRIGGER.
* CREATE VIEW.
*/


/*
CONSIDERAÇÕES STORED PROCEDURE

Uma store procedure pode referenciar tabelas temporárias,
tabelas parmanentes, views e outras stored procedures, ao
criar uma tabela temporária em uma stored procedure, está
existirá enquanto a procedure estiver sendo executada.
É possível aninhar até 32 stored procedures, ou seja, 32
chamadas consecutivas que uma procedure faz para outras
procedures ou para ela própria e poder utilizar @@nestlevel
para saber qual é o nível de aninhamento atual.
*/