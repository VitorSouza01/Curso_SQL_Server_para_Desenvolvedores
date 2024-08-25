
-- TRIGGER LOGON - TEORIA E EXERCÍCIOS


/*
Triggers de logon = Permitem auditar o acesso e também bloquear acessos indevidos.
*/


-- Part1
CREATE LOGIN ADMIN_TESTE WITH PASSWORD = 'Admin@123'


-- Part2
CREATE TRIGGER TRG_BLOQUEIO_SSMS
ON ALL SERVER
FOR LOGON
AS BEGIN
	IF (ORIGINAL_LOGIN() LIKE 'Admin_%' AND APP_NAME() LIKE 'Microsoft SQL Server Management Studio%')
	ROLLBACK;
END
