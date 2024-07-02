
CREATE TABLE TB_CLIENTE
(
	Id INT IDENTITY(1,1),
	Nome VARCHAR(70),
	CPF VARCHAR(11),
	DataNascimento DATETIME2,
	Email VARCHAR(70),
	CONSTRAINT PK_CLIENT PRIMARY KEY (Id)
);

SELECT * FROM TB_CLIENTE

INSERT INTO TB_CLIENTE
(Nome, CPF, DataNascimento, Email)
VALUES
('Jos� de Almeida', '22233344455', '1985-05-12 15:14:22', 'jose@gmail.com');

SELECT * FROM TB_CLIENTE