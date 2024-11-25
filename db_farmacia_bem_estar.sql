CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    validade DATE NOT NULL,
    categoriaid BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Medicamentos', 'Produtos para tratamento de doenças e condições de saúde');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Cosméticos', 'Produtos para cuidados pessoais e beleza');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Suplementos', 'Produtos para suplementação alimentar e nutrição');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Higiene', 'Produtos para higiene pessoal');

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Primeiros Socorros', 'Produtos para atendimento emergencial');

INSERT INTO tb_produtos (nome, quantidade, preco, validade, categoriaid) VALUES 
('Paracetamol', 100, 5.50, '2024-12-31', 1),
('Shampoo', 200, 15.00, '2023-08-15', 2),
('Vitamina C', 150, 25.00, '2023-11-20', 3),
('Sabonete Líquido', 300, 10.00, '2023-09-05', 4),
('Curativo', 500, 2.00, '2025-01-01', 5),
('Ibuprofeno', 120, 8.50, '2024-10-10', 1),
('Condicionador', 180, 18.00, '2023-07-30', 2),
('Multivitamínico', 110, 55.00, '2023-12-25', 3);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';


SELECT tb_produtos.nome, tb_produtos.quantidade, tb_produtos.preco, tb_produtos.validade, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.quantidade, tb_produtos.preco, tb_produtos.validade, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';
