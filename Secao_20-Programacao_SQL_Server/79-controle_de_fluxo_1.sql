
-- CONTROLE DE FLUXO 1

/*
BEGIN/END

Os elementos BEGIN e END s�o utilizados por instru��es de controle de
fluxo para delimitar um bloco de instru��es, ou seja, iniciar e finalizar,
respectivamente, um bloco de comandos, de maneira que este possa ser
posteriormente executado.
*/


/*
IF/ELSE

Os elementos IF e ELSE do SQL Server s�o utilizados para testar condi��es
quando um comando Transact-SQL � executado. IF e ELSE funcionam similarmente
aos mesmos comados utilizados em outras linguagens de programa��o para testar
condi��es de execu��o de comandos.


EXTRUTURA:

A sintaxe para a utiliza��o de IF e ELSE � a seguinte:
IF expressao_booleana
{comando_sql | bloco_comando}
[ ELSE
{comando sql| bloco_comando}]
*/


-- EXEMPLO 01
DECLARE @A INT = 10, @B INT = 15;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT '� MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUA��O DO C�DIGO'

-- EXEMPLO 02
SET @A = 15;
SET @B = 10;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT '� MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUA��O DO C�DIGO'

-- EXEMPLO 3
DECLARE @A INT = 15, @B INT = 10;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT '� MAIOR QUE;'
		PRINT @B;
	END
ELSE
	BEGIN
		PRINT @A;
		PRINT 'N�O � MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUA��O DO C�DIGO'


DECLARE @A INT = 10, @B INT = 15;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT '� MAIOR QUE;'
		PRINT @B;
	END
ELSE
	BEGIN
		PRINT @A;
		PRINT 'N�O � MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUA��O DO C�DIGO'