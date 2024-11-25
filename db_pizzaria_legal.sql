CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes TEXT NOT NULL,
    categoriaid BIGINT,
    CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Tradicional', 'Pizzas com sabores tradicionais e ingredientes comuns');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Especial', 'Pizzas com ingredientes especiais e combinações únicas');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Doce', 'Pizzas com sabores doces e sobremesas');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Vegetariana', 'Pizzas com ingredientes vegetarianos');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Vegana', 'Pizzas sem ingredientes de origem animal');

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoriaid) 
VALUES 
('Mussarela', 'Grande', 45.00, 'Mussarela, molho de tomate, orégano', 1),
('Calabresa', 'Média', 50.00, 'Calabresa, cebola, mussarela, molho de tomate', 1),
('Quatro Queijos', 'Grande', 60.00, 'Mussarela, gorgonzola, parmesão, provolone, molho de tomate', 2),
('Brigadeiro', 'Pequena', 40.00, 'Chocolate, granulado, leite condensado', 3),
('Rúcula com Tomate Seco', 'Grande', 55.00, 'Rúcula, tomate seco, mussarela, molho de tomate', 4),
('Margherita', 'Grande', 45.00, 'Mussarela, molho de tomate, manjericão', 1),
('Vegana de Legumes', 'Média', 65.00, 'Berinjela, abobrinha, pimentão, molho de tomate', 5),
('Frango com Catupiry', 'Grande', 55.00, 'Frango desfiado, catupiry, mussarela, molho de tomate', 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.preco, tb_pizzas.ingredientes, tb_categorias.nome, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.preco, tb_pizzas.ingredientes, tb_categorias.nome, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.nome = 'Doce';
