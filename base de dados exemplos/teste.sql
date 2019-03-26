-- Database: pedido

-- DROP DATABASE pedido;

CREATE DATABASE pedido
  WITH OWNER = alana
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'pt_BR.UTF-8'
       LC_CTYPE = 'pt_BR.UTF-8'
       CONNECTION LIMIT = -1;

CREATE TABLE teste (id INTEGER, nome VARCHAR(20));
INSERT INTO teste VALUES  (1,'x');
SELECT * FROM teste;


CREATE TABLE Cliente(
	CodCLI   Integer PRIMARY KEY,
	Nome     Varchar(30),
	Endereco Varchar(30),
	Telefone Varchar(12),
	InscE    Varchar(10),
	CNPJ     Varchar(10),
	Cidade   Varchar(15),
	UF       Varchar(2)
);


CREATE TABLE Produto(
	CodPROD   Integer PRIMARY KEY,
	Descricao Varchar(20),
	Valor     Money,
	Unidade   Varchar(2)
);

CREATE TABLE Pedido (
   NumPED        Integer PRIMARY KEY,
   PrazoEntrega  Integer,
   Data          Date,
   CodCLI 	 Integer REFERENCES Cliente (CodCLI),
   CodVENDA      Integer REFERENCES Produto (CodPROD) 
   
);