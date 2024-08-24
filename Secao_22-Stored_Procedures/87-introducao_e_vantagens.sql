
-- INTRODUÇÃO E VANTAGENS

/*
STORED PROCEDURES - INTRODUÇÃO

Stored procedure é uma coleção de comandos SQL criada para ser utilizada
de forma permanente ou temporária, em uma sessão de usuário ou por todos
os usuários. Uma procedure temporária local é quando uma stored procedure
temporária é utilizada em uma sessão de usuário, ela é chamada de procedure
temporária local e quando é utilizada por todos os usuários, a procedure
temporária é chamada de global.
*/


/*
STORED PROCEDURES - INTRODUÇÃO

Alguns tipos de programação de execução de stored procedures:

* Execução no momento em que o SQL Server é inicializado.
* Execução em períodos específicos do dia.
* Execução em um horário específico do dia.

Procedimentos criados por meio do SQL Server podem ser armazenados no próprio
banco de dados como stored procedures e nossas aplicações podem executar essas
stores procedures intercalando o processamento entre a aplicação e o banco de 
dados.
*/


/*
STORED PROCEDURES

As stored procedures do SQL Server podem aceitar parâmetros de entrada e de
saída. As stored procedures tem um retorno do tipo status, com o objetivo de 
indicar o sucesso ou a falha, e o motivo da falha do processamento.
Elas não retornam valores no lugar dos seus nomes e além disso, não podem
ser utilizadas no lugar de expressões como as funções.
Ao criarmos uma stored procedure os comandos de criação são analisados para
correção de erros de sintaxe e armazena o nome da stored procedure na tabela
de sistema sysobjects e os comandos na tabela syscomments.
*/


/*
VANTAGENS

* Execução rápida: A execução das stored procedures é mais rápida do que os
comandos SQL armazenados na aplicação, porque já tiveram sua sintaxe
previamente verificada e foram otimizadas durante sua criação e podem ser
acessadas a partir do cache, depois de sua primeira execução.
* Tráfego na rede: São capazes de diminuir a quantidade de dados que trafegam
pela rede.
* Segurança: Podem ser aproveitadas como um mecanismo de segurança, restringindo
o acesso às tabelas.
* Programação modular: As stored procedures, após criados podem ser chamadas
a partir de qualquer aplicação.
*/
