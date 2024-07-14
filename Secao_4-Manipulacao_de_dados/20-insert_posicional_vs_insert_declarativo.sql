
SELECT * FROM TB_CLIENTE

-- Insert Declarativo
INSERT INTO TB_CLIENTE
(Nome, CPF, DataNascimento, Email)
VALUES
('Maria Almeida', '11122233344', '1981-01-23 11:23:45', 'mari@gmail.com');

-- Insert Posicional
INSERT INTO TB_CLIENTE
VALUES
('Maria Almeida', '11122233344', '1981-01-23 11:23:45', 'mari@gmail.com');