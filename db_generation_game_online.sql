CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    peso DECIMAL(5, 2),
    habilidade VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'ativo',
    poder_ataque INT,
    classeid BIGINT,
    CONSTRAINT fk_personagens_classes FOREIGN KEY (classeid) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (nome, descricao) VALUES 
("Ninja Jinchuriki", "Personagem que possui uma Besta com Cauda selada dentro de si, conferindo habilidades extraordinárias.");

INSERT INTO tb_classes (nome, descricao) VALUES  
("Uchiha", "Membros do clã Uchiha, conhecidos por seus poderosos olhos Sharingan e técnicas de fogo.");

INSERT INTO tb_classes (nome, descricao) VALUES  
("Sensei", "Líderes de equipes ninja, altamente habilidosos e estratégicos.");

INSERT INTO tb_classes (nome, descricao) VALUES
("Sannin", "Um dos três lendários ninjas, altamente respeitados e com habilidades excepcionais.");

INSERT INTO tb_classes (nome, descricao) VALUES 
("Arqueiro", "Especialista em ataques à distância com arco e flecha, alta precisão e agilidade.");
 
 
 
INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Naruto Uzumaki", 60.0, "Ninjutsu, Senjutsu, Jinchuriki do Nove Caudas", "ativo", 3000, 1);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Sasuke Uchiha", 65.0, "Sharingan, Rinnegan, Espadachim", "ativo", 2900, 2);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Kakashi Hatake", 68.0, "Sharingan, Raikiri, Estratégia", "ativo", 2500, 3);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Itachi Uchiha", 58.0, "Mangekyo Sharingan, Amaterasu, Tsukuyomi", "falecido", 4000, 2);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Gaara", 56.0, "Manipulação de Areia, Jinchuriki do Shukaku", "ativo", 1000, 1);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Jiraiya", 70.0, "Ninjutsu, Senjutsu, Invocações", "falecido", 5000, 4);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Shikamaru Nara", 52.0, "Manipulação de sombras, Estratégia", "ativo", 750, 5);

INSERT INTO tb_personagens (nome, peso, habilidade, status, poder_ataque, classeid) 
VALUES 
("Temari", 50.0, "Uso de leque gigante, Manipulação do vento", "ativo", 800, 5);


SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome, tb_personagens.peso, tb_personagens.habilidade, tb_personagens.status, tb_personagens.poder_ataque, tb_classes.descricao 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;  

SELECT tb_personagens.nome, tb_personagens.peso, tb_personagens.habilidade, tb_personagens.status, tb_personagens.poder_ataque, tb_classes.descricao 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.nome = "Arqueiro";