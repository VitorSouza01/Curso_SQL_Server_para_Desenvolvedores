
-- FUNÇÕES TABULARES (TEORIA)

/*
Funções Tabulares

Funções tabulares são aquelas que, utilizando uma cláusula SELECT
para retornar um conjunto de resultados em forma de tabela. Ou
seja , o valor retornado por uma função tabular é do tipo table.

As funções tabulares podem ser categorizadas como funções tabulares
in-line ou como funções tabulares com várias instruções.
*/


/*
Funções Tabulares In-Line

Uma função tabular in-line não possui corpo de função e pode ser
utilizada para conseguir a funcionalidade de views, porém com a
utilização de parâmetros.

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro> [...])
RETURNS TABLE [WITH[ENCRYOTION][SCHEMABINDING]]
[AS]
RETURN [(]<instrucao_select>[)]
*/


/*
Funções Tabulares C/ Várias Instruções

Uma função tabular pode possuir uma ou várias instruções select e/ou
views que pode utilizar múltiplas instruções T-SQL para construir uma
tabela, inserindo as linhas das diversas dessas instruções à tabela
retornada. E, da mesma forma que uma view, pode ser usada em uma cláusula
FROM em uma instrução.

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro>[...])
RETURNS [@variavel_tabular] TABLE[<estrutura>][WITH[ENCRYPTION]
[SCHEMABINDING]]
[AS]
BEGIN
	<corpo_da_funcao>
	RETURN
END
*/


/*
Funções Tabulares C/ Várias Instruções

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro>[...])
RETURNS [@variavel_tabular] TABLE[<estrutura>][WITH[ENCRYPTION]
[SCHEMABINDING]]
[AS]
BEGIN
	<corpo_da_funcao>
	RETURN
END
*/


/*
Funções Tabulares C/ Várias Instruções

@variavel_tabular: Representa uma variável TABLE que armazena
linhas que deveriam ser retornadas como valor da função.
/*