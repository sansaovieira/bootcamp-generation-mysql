CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
cpf BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nascimento DATE NOT NULL,
curso VARCHAR(100) NOT NULL,
ano VARCHAR(100) NOT NULL,
nota DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_alunos(nome, nascimento, curso, ano, nota)
VALUES
("Ana Carina", "1994-03-03", "Análise e Desenvolvimento de Sistemas", "1° Semetre", 7.0),
("António Domingos", "1996-01-31", "Recursos Humanos", "4° Semetre", 5.5),
("Carregador Androis", "1994-03-08", "Enfermagem","4° Semetre", 8.2),
("Lionel Messi", "1992-12-02", "Educação Fisica", "2° Semetre", 10.0),
("Luís Enrique", "2000-03-05", "Psicologia", "4° Semetre", 10.0),
("Paloma Possi", "1994-03-03", "Música", "8° Semetre", 9.0),
("Alexandre Demorais", "1994-03-03", "Direito", "9° Semetre", 4.2),
("Alfonsina Pedro", "1994-03-03", "Medicina", "4° Semetre", 6.2);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota  = 4.50 WHERE cpf = 7;