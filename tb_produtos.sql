CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUE ("tomate", 100, "2023-12-15", 9.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos;

SELECT id, nome FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 3;
SELECT * FROM tb_produtos WHERE nome = "tomate";
SELECT * FROM tb_produtos WHERE nome in ("tomate", "uva");

SELECT * FROM tb_produtos WHERE preco >= 5;

SELECT * FROM tb_produtos WHERE preco >= 5 AND quantidade < 100;
SELECT * FROM tb_produtos WHERE preco >= 5 OR quantidade < 100;

SET SQL_SAFE_UPDATES = 1;

-- Atualizando dados ma Tabela

UPDATE tb_produtos SET preco  = 2.99 WHERE id = 2;

DELETE FROM tb_produtos WHERE id = 7;

DELETE FROM tb_produtos WHERE id in (2, 3);

-- Modificando a estrutura da tabela

ALTER TABLE tb_produtos CHANGE preco preco DECIMAL(6,2);