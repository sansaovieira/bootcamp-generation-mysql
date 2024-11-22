CREATE DATABASE db_rh_gerenciamento;

USE db_rh_gerenciamento;

CREATE TABLE tb_colaborador(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cargo VARCHAR(50) NOT NULL,
data_admissao DATE NOT NULL,
departamento VARCHAR(50) NOT NULL,
salario DECIMAL(10,2) NOT NULL
);

INSERT INTO tb_colaborador(nome, cargo, data_admissao, departamento, salario)
VALUES
("Domingos Afonso", "Desenvolvedor de Software JR.", "2024-03-18", "Service Plataform", 4500.00),
("Sebastião António", "Diretor de Recursos Humanos", "2023-06-30", "Recrutamento e Seleção", 18000.00),
("Narete Soares", "Desenvolvedor de Software SR.", "2023-02-08", "Service Plataform", 12000.00),
("Hugo Diogo", "Analista de Requisitos PL.", "2024-03-18", "Service Plataform", 7200.00),
("Shairlize Martins", "Inside Sales", "2024-03-18", "Vendas e Negócios", 4000.00);

SELECT * FROM tb_colaborador;
SELECT * FROM tb_colaborador WHERE salario > 2000;
SELECT * FROM tb_colaborador WHERE salario < 2000;

INSERT INTO tb_colaborador(nome, cargo, data_admissao, departamento, salario)
VALUES
("André Augusto", "Desenvolvedor de Software Estagiário", "2024-03-18", "Service Plataform", 1500.00);

UPDATE tb_colaborador SET salario  = 1800.00 WHERE id = 11;