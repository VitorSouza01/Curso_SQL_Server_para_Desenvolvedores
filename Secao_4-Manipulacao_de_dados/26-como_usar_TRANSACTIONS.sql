
-- Transa��es;

-- Toda vez que realizamos uma conex�o no MS-SQL, essa conex�o recebe um n�mero de
-- sess�o, isso mesmo ocorrendo de uma mesma m�quina e mesmo login.

-- Uma transa��o � uma unidade l�gica de processamento que tem como objetivo preservar
-- a integridade e a consist�ncia dos dados.

-- Um processo de transa��o � aberto por uma sess�o e deve tamb�m ser fechado pela
-- mesma sess�o

-- Durante o processo, as altera��es feitas no banco de dados poder�o se efetivadas
-- ou revertidas quando a transa��o for finalizada.

-- Os comandos DELETE, INSERT e UPDATE abrem uma transa��o de forma autom�tica.
-- Se o comando n�o provocar erro, ele confirma as altera��es no final, caso
-- contr�rio, descarta todas as altera��es.


-- Transa��es Expl�citas;

-- BEGIN TRANSACTION ou BEGIN TRAN
	-- Inicia um processo de transa��o para a sess�o atual.

-- COMMIT TRANSACTION, COMMIT WORK ou COMMIT
	-- Finaliza o processo de transa��o atual, confirmando todas as 
	-- altera��es efetuadas desde o in�cio do processo.

-- ROLLBACK TRANSACTION, ROLLBACK WORK ou ROLLBACK
	-- Finaliza o processo da transa��o atual, descartando todas as
	-- altera��es efetuadas desde o in�cio do processo.

SELECT * FROM TB_CLIENTE

BEGIN TRAN

UPDATE TB_CLIENTE
SET Email = 'TESTE@TESTE.COM'
WHERE Id = 1

COMMIT
ROLLBACK


-- Considera��es Sobre Transa��es expl�citas;

-- Se uma conex�o for fechada com uma transa��o aberta, um 
-- ROLLBACK ser� executado implicitamente.

-- As opera��es feitas por um processo de transa��o ficam
-- armazenadas em um arquivo de log (.ldf), que todo banco
-- de dados possui.

-- Durante um processo de transa��o, as linhas das tabelas
-- que foram alteradas ficam bloqueadas para outras sess�es.