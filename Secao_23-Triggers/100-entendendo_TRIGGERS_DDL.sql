
-- ENTENDENDO TRIGGERS DDL

/*
TRIGGERS DDL

Os triggers DDL, assim como os triggers regulares, executam stored
procedures em respostas a um evento. Entretanto, diferentamente dos
triggers DML, não são executados em resposta a uma instrução UPDATE,
INSERT ou DELETE em uma tabela ou view. Os triggers DDL são executados
em resposta a eventos DDL, que correspondem às instruções Transact-SQL,
que começam com as seguintes palavras chave: CREATE, ALTER e DROP.

Os triggers DDL são disparados somente após uma instrução Transact-SQL
ter sido executada. Diferentemente dos triggers comuns, que respondem
somente às alterações nos dados, os triggers DDL podem ser utilizados
para alterãções de objetos em banco de dados. Nesse sentindo, esses
triggers são uma ferramenta importante para registrar as ações
administrativas do sistema.
*/


/*
TRIGGERS DDL

Triggers DDL são usados nas seguintes ações:

* Prevenir certas alterações no esquema do banco de dados ou determinar
que algo ocorra no banco de dados conforme a alteração sofrida por esse
esquema.
* Registrar alterações ou eventos realizados no esquema do banco de dados.
* Regular operações de banco de dados.
*/


/*
TRIGGERS DDL

CREATE TRIGGER nome_trigger ON {DATABASE | ALL SERVER}
FOR lista_de_eventos
AS
<corpo_do_trigger>

* DATABASE: O escopo de execução do trigger se restringe ao banco de dados
em uso no momento.
* ALL SERVER: O escopo de execução do trigger é no servidor onde ele foi
criado, portanto, funciona para todos os bancos de dados existentes.
* lista_de_eventos: Eventos que irão disparar o trigger.
*/
