
-- Transações;

-- Toda vez que realizamos uma conexão no MS-SQL, essa conexão recebe um número de
-- sessão, isso mesmo ocorrendo de uma mesma máquina e mesmo login.

-- Uma transação é uma unidade lógica de processamento que tem como objetivo preservar
-- a integridade e a consistência dos dados.

-- Um processo de transação é aberto por uma sessão e deve também ser fechado pela
-- mesma sessão

-- Durante o processo, as alterações feitas no banco de dados poderão se efetivadas
-- ou revertidas quando a transação for finalizada.

-- Os comandos DELETE, INSERT e UPDATE abrem uma transação de forma automática.
-- Se o comando não provocar erro, ele confirma as alterações no final, caso
-- contrário, descarta todas as alterações.


-- Transações Explícitas;

-- BEGIN TRANSACTION ou BEGIN TRAN
	-- Inicia um processo de transação para a sessão atual.

-- COMMIT TRANSACTION, COMMIT WORK ou COMMIT
	-- Finaliza o processo de transação atual, confirmando todas as 
	-- alterações efetuadas desde o início do processo.

-- ROLLBACK TRANSACTION, ROLLBACK WORK ou ROLLBACK
	-- Finaliza o processo da transação atual, descartando todas as
	-- alterações efetuadas desde o início do processo.

SELECT * FROM TB_CLIENTE

BEGIN TRAN

UPDATE TB_CLIENTE
SET Email = 'TESTE@TESTE.COM'
WHERE Id = 1

COMMIT
ROLLBACK


-- Considerações Sobre Transações explícitas;

-- Se uma conexão for fechada com uma transação aberta, um 
-- ROLLBACK será executado implicitamente.

-- As operações feitas por um processo de transação ficam
-- armazenadas em um arquivo de log (.ldf), que todo banco
-- de dados possui.

-- Durante um processo de transação, as linhas das tabelas
-- que foram alteradas ficam bloqueadas para outras sessões.