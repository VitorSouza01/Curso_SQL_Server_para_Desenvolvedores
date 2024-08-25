
-- INTRODUÇÃO

/*
TRIGGERS

Um trigger, também popularmente chamado de gatilho, é um tipo especial de 
stored procedure que é automaticamente disparado quando há um evento de
linguagem, ou seja, quando é realizada alguma alteração nos dados de uma
tabela, sua principal usabilidade é automatizar processos.

Três tipos de triggers genéricos no SQL Server:
* Triggers DML (Data Manipulation Language).
* Triggers DDL (Data Definition Language).
* Triggers de Logon.
*/


/*
TRIGGERS

Triggers DDL tem como função disparar stored procedures para responder
comandos iniciados com ALTER, DROP E CREATE. Já os triggers DML são
utilizados em situações de comandos INSERT, DELETE e UPDATE que realizam
alterações de dados presentes em views ou tabelas, os triggers DML são
classificados em triggers INSTEAD OF a triggers AFTER.

Triggers de logon, como o próprio nome sugestiona, disparam stored procedures
em eventos do tipo logon (quando uma sessão de usuário é estabelicida com
uma instância SQL Server). Triggers desse tipo podem ser utilizados para
gerenciar e auditar sessões de servidor.
*/


/*
TRIGGERS

O acionamento dos triggers é realizado de forma automática. Eles não recebem
e não retornam parâmetros. Tanto o trigger como o comando que o acionou são
tratados como sendo uma única transação, essa transação pode ser desfeita
em qualquer parte dentro de um trigger utilizando ROLLBACK TRANSACTION.
*/


/*
TRIGGERS VS CONSTRANINTS

As constraints são estruturas prontas que podem ser adicionadas na tabela
com o objetivo de que as regras de um negócio sejam mantidas, em contrapartida,
quando existem regras de negócio sejam mantidas, em contrapartida, quando
existem regras de negócio mais complexas, é preciso utilizar os triggers,
que diferentemente das constraints, atual de forma reativa.

Quando é utilizado um trigger, o SQL Server primeiramente executa o comando
que o acionou para depois verificar se houve erros, caso haja algum erro,
o comando é desfeito.

Já as constraints são pré-ativas, ou seja, são verificadas pelo SQL Server
a fim de assegurar que não sejam violadas antes do comando ser executado,
se a constraint estiver com problema a operação é abortada.
*/


/*
TRIGGERS

Triggers não podem ser criados em tabelas temporárias, mas eles podem
referenciar elas, triggers podem ser criados apenas no banco de dados
atual, mas podem fazer referências aos objetos que se encontram fora
desse banco de dados.

É permitido adicionar triggers a outros triggers já existentes, desde
que não tenham nomes iguais, ou seja, um trigger pode acionar outro que
pode acionar outro até 70 vezes.
*/