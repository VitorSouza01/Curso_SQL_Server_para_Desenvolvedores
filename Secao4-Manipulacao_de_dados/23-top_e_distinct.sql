
SELECT * FROM TB_CLIENTE

INSERT INTO TB_CLIENTE
VALUES
('Marcos Pereira', '44444444455', '1985-11-25 12:01:21', 'marcos@email.com'),
('Ana Lúcia', '55555555566', '1980-03-15 14:51:21', 'ana@email.com'),
('Marta Fonseca', '66666666677', '1988-07-05 21:33:41', 'marta@email.com'),
('Marta Fonseca', '66666666677', '1988-07-05 21:33:41', 'marta@email.com')

-- TOP = Quantas linhas está querendo selecionar
SELECT TOP 4 * FROM TB_CLIENTE

-- DISTINCT = Não mostra campos duplicados
SELECT DISTINCT Nome, CPF, DataNascimento, Email FROM TB_CLIENTE