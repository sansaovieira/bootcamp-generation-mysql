CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(50) NOT NULL,
quantidade INT  NOT NULL,
data_expiracao DATE,
preco DECIMAL(10,2) NOT NULL
);

INSERT INTO tb_produto(nome, descricao, quantidade, preco)
VALUES
("Notebook Air 4", "Notebook Apple última geração", 4, 4500.00),
("Iphone 16 pro max", "Último modelo Apple 2024", 6, 6000.00),
("Carregador Android", "Suporta todo tipo de celular android", 2 , 100.00),
("Caneca React", "Copo com designer da library react", 1, 70.00),
("Samsung A12", "Celular Android linha Samsung", 2 , 1800.00),
("Carregador Apple", "Suporta todo tipo de celular Apple", 2 , 230.00);

SELECT * FROM tb_produto;
SELECT * FROM tb_produto WHERE preco > 500;
SELECT * FROM tb_produto WHERE preco < 500;

INSERT INTO tb_produto(nome, descricao, quantidade, preco)
VALUES
("Iphone 12 pro", "Notebook Apple última geração", 4, 3500.00),
("Iphone 12 pro max", "Último modelo Apple 2024", 6, 4000.00);

UPDATE tb_produto SET quantidade  = 2 WHERE id = 1;