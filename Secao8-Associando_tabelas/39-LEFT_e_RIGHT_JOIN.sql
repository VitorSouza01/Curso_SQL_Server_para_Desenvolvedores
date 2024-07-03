
-- LEFT JOIN -> Retorna todos os registros da tabela esquerda (tabela A) 
-- e as correspondências que existirem com a tabela direita (tabela B).

-- RIGHT JOIN -> Retornará todos os registros da tabela direita (tabela B) 
-- e as correspondências que existirem com a tabela esquerda (tabela A).

SELECT	C.ClienteId,
		C.NomeCompleto,
		C.Cargo,
		C.Contato,
		E.Logradouro,
		E.Cidade,
		E.Pais
	FROM 
TB_ENDERECO E LEFT JOIN TB_CLIENTE C 
ON C.ClienteId = E.ClienteId


SELECT * FROM TB_CLIENTE

INSERT INTO TB_CLIENTE
(ClienteId, NomeCompleto, Contato, Cargo)
VALUES
('AAAAA', 'MARCOS ALBERTO','MARIA JOAQUINA', 'VENDEDOR'),
('BBBBB', 'MONICA SANTOS','JOSE SILVA', 'ATENDENTE DE MARKETING'),
('CCCCC','JOANA ALVES','ANA TRUJILO', 'PROPRIETARIA')


SELECT	C.ClienteId,
		C.NomeCompleto,
		C.Cargo,
		C.Contato,
		E.Logradouro,
		E.Cidade,
		E.Pais
	FROM 
TB_ENDERECO E RIGHT JOIN TB_CLIENTE C 
ON C.ClienteId = E.ClienteId