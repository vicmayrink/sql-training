CREATE TABLE produtos (
	nome varchar(100) COMMENT 'Nome do produto',
	codigo_barras varchar(32) COMMENT 'Código de barras',
	preco decimal(10,2) COMMENT 'Preço de custo'
) COMMENT 'Tabela de cadastro de produtos'