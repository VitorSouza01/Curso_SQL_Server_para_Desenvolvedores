
-- INTRODU��O

/*
TRIGGERS

Um trigger, tamb�m popularmente chamado de gatilho, � um tipo especial de 
stored procedure que � automaticamente disparado quando h� um evento de
linguagem, ou seja, quando � realizada alguma altera��o nos dados de uma
tabela, sua principal usabilidade � automatizar processos.

Tr�s tipos de triggers gen�ricos no SQL Server:
* Triggers DML (Data Manipulation Language).
* Triggers DDL (Data Definition Language).
* Triggers de Logon.
*/


/*
TRIGGERS

Triggers DDL tem como fun��o disparar stored procedures para responder
comandos iniciados com ALTER, DROP E CREATE. J� os triggers DML s�o
utilizados em situa��es de comandos INSERT, DELETE e UPDATE que realizam
altera��es de dados presentes em views ou tabelas, os triggers DML s�o
classificados em triggers INSTEAD OF a triggers AFTER.

Triggers de logon, como o pr�prio nome sugestiona, disparam stored procedures
em eventos do tipo logon (quando uma sess�o de usu�rio � estabelicida com
uma inst�ncia SQL Server). Triggers desse tipo podem ser utilizados para
gerenciar e auditar sess�es de servidor.
*/


/*
TRIGGERS

O acionamento dos triggers � realizado de forma autom�tica. Eles n�o recebem
e n�o retornam par�metros. Tanto o trigger como o comando que o acionou s�o
tratados como sendo uma �nica transa��o, essa transa��o pode ser desfeita
em qualquer parte dentro de um trigger utilizando ROLLBACK TRANSACTION.
*/


/*
TRIGGERS VS CONSTRANINTS

As constraints s�o estruturas prontas que podem ser adicionadas na tabela
com o objetivo de que as regras de um neg�cio sejam mantidas, em contrapartida,
quando existem regras de neg�cio sejam mantidas, em contrapartida, quando
existem regras de neg�cio mais complexas, � preciso utilizar os triggers,
que diferentemente das constraints, atual de forma reativa.

Quando � utilizado um trigger, o SQL Server primeiramente executa o comando
que o acionou para depois verificar se houve erros, caso haja algum erro,
o comando � desfeito.

J� as constraints s�o pr�-ativas, ou seja, s�o verificadas pelo SQL Server
a fim de assegurar que n�o sejam violadas antes do comando ser executado,
se a constraint estiver com problema a opera��o � abortada.
*/


/*
TRIGGERS

Triggers n�o podem ser criados em tabelas tempor�rias, mas eles podem
referenciar elas, triggers podem ser criados apenas no banco de dados
atual, mas podem fazer refer�ncias aos objetos que se encontram fora
desse banco de dados.

� permitido adicionar triggers a outros triggers j� existentes, desde
que n�o tenham nomes iguais, ou seja, um trigger pode acionar outro que
pode acionar outro at� 70 vezes.
*/