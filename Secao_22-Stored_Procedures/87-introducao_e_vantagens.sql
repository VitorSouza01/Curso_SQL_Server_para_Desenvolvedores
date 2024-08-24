
-- INTRODU��O E VANTAGENS

/*
STORED PROCEDURES - INTRODU��O

Stored procedure � uma cole��o de comandos SQL criada para ser utilizada
de forma permanente ou tempor�ria, em uma sess�o de usu�rio ou por todos
os usu�rios. Uma procedure tempor�ria local � quando uma stored procedure
tempor�ria � utilizada em uma sess�o de usu�rio, ela � chamada de procedure
tempor�ria local e quando � utilizada por todos os usu�rios, a procedure
tempor�ria � chamada de global.
*/


/*
STORED PROCEDURES - INTRODU��O

Alguns tipos de programa��o de execu��o de stored procedures:

* Execu��o no momento em que o SQL Server � inicializado.
* Execu��o em per�odos espec�ficos do dia.
* Execu��o em um hor�rio espec�fico do dia.

Procedimentos criados por meio do SQL Server podem ser armazenados no pr�prio
banco de dados como stored procedures e nossas aplica��es podem executar essas
stores procedures intercalando o processamento entre a aplica��o e o banco de 
dados.
*/


/*
STORED PROCEDURES

As stored procedures do SQL Server podem aceitar par�metros de entrada e de
sa�da. As stored procedures tem um retorno do tipo status, com o objetivo de 
indicar o sucesso ou a falha, e o motivo da falha do processamento.
Elas n�o retornam valores no lugar dos seus nomes e al�m disso, n�o podem
ser utilizadas no lugar de express�es como as fun��es.
Ao criarmos uma stored procedure os comandos de cria��o s�o analisados para
corre��o de erros de sintaxe e armazena o nome da stored procedure na tabela
de sistema sysobjects e os comandos na tabela syscomments.
*/


/*
VANTAGENS

* Execu��o r�pida: A execu��o das stored procedures � mais r�pida do que os
comandos SQL armazenados na aplica��o, porque j� tiveram sua sintaxe
previamente verificada e foram otimizadas durante sua cria��o e podem ser
acessadas a partir do cache, depois de sua primeira execu��o.
* Tr�fego na rede: S�o capazes de diminuir a quantidade de dados que trafegam
pela rede.
* Seguran�a: Podem ser aproveitadas como um mecanismo de seguran�a, restringindo
o acesso �s tabelas.
* Programa��o modular: As stored procedures, ap�s criados podem ser chamadas
a partir de qualquer aplica��o.
*/
