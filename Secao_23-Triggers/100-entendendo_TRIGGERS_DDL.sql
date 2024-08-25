
-- ENTENDENDO TRIGGERS DDL

/*
TRIGGERS DDL

Os triggers DDL, assim como os triggers regulares, executam stored
procedures em respostas a um evento. Entretanto, diferentamente dos
triggers DML, n�o s�o executados em resposta a uma instru��o UPDATE,
INSERT ou DELETE em uma tabela ou view. Os triggers DDL s�o executados
em resposta a eventos DDL, que correspondem �s instru��es Transact-SQL,
que come�am com as seguintes palavras chave: CREATE, ALTER e DROP.

Os triggers DDL s�o disparados somente ap�s uma instru��o Transact-SQL
ter sido executada. Diferentemente dos triggers comuns, que respondem
somente �s altera��es nos dados, os triggers DDL podem ser utilizados
para alter���es de objetos em banco de dados. Nesse sentindo, esses
triggers s�o uma ferramenta importante para registrar as a��es
administrativas do sistema.
*/


/*
TRIGGERS DDL

Triggers DDL s�o usados nas seguintes a��es:

* Prevenir certas altera��es no esquema do banco de dados ou determinar
que algo ocorra no banco de dados conforme a altera��o sofrida por esse
esquema.
* Registrar altera��es ou eventos realizados no esquema do banco de dados.
* Regular opera��es de banco de dados.
*/


/*
TRIGGERS DDL

CREATE TRIGGER nome_trigger ON {DATABASE | ALL SERVER}
FOR lista_de_eventos
AS
<corpo_do_trigger>

* DATABASE: O escopo de execu��o do trigger se restringe ao banco de dados
em uso no momento.
* ALL SERVER: O escopo de execu��o do trigger � no servidor onde ele foi
criado, portanto, funciona para todos os bancos de dados existentes.
* lista_de_eventos: Eventos que ir�o disparar o trigger.
*/
