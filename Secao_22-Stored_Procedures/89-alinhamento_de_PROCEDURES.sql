
-- ANINHAMENTO DE PROCEDURES

-- CRIA��O SIMPLES STORE PROCEDURE

-- CASCATA DE ALINHAMENTO

CREATE PROCEDURE PROC_A
AS
BEGIN
	PRINT 'PROC_A' + CAST(@@NESTLEVEL AS VARCHAR(2));
	EXEC PROC_B;
	PRINT 'VOLTEI PARA PROC_A';
END

CREATE PROCEDURE PROC_B
AS
BEGIN
	PRINT 'PROC_B' + CAST(@@NESTLEVEL AS VARCHAR(2));
	EXEC PROC_C;
	PRINT 'VOLTEI PARA PROC_B';
END

CREATE PROCEDURE PROC_C
AS
BEGIN
	PRINT 'PROC_C' + CAST(@@NESTLEVEL AS VARCHAR(2));
END


EXEC PROC_A;
