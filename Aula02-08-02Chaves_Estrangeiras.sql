CREATE DATABASE lojinha;
USE lojinha;



CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL auto_increment,
    nome VARCHAR(30) not null,
    quantidade INT,
    preco VARCHAR(20)
);

CREATE TABLE clientes(

id INT PRIMARY KEY NOT NULL auto_increment,
nome VARCHAR(30) not null,
endereco VARCHAR(100) not null
);

CREATE TABLE  pedido(
id INT PRIMARY KEY NOT NULL auto_increment,
idCliente INT,
idProduto INT, 
FOREIGN KEY (idCliente) REFERENCES clientes(id),
FOREIGN KEY (idProduto) REFERENCES produtos(id)
);