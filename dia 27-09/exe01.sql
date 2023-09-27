create database db_generation_game_online;

use db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes (
    id_classe BIGINT PRIMARY KEY AUTO_INCREMENT,
    classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
)

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
-- relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens (
    id_personagem BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT NOT NULL,
    FOREIGN KEY (classe_id)
        REFERENCES tb_classes (id_classe)
);

-- Insira 5 registros na tabela tb_classes.
insert into tb_classes(classe, descricao) values
("Arqueiro", "Personagem de ataques rápidos e de alto dano usando arco e flecha"),
("Mago", "Personagem baixa defesa e alto dano crítico que usa de magias geradas por 
um poderoso cajado"),
("Guerreiro", "Personagem de ataques lentos e alta defesa que usa uma espada para gerar 
alto dano contínuo"),
("Curandeiro", "Personagem com baixa defesa e médio/baixo ataque que usa magias de buff e 
cura para ajudar seus aliados em combate"),
("Ladino", "Personagem que usa armas brancas e ladrões aliados para atacar de forma furtiva");

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para
-- criar a relação com a tabela tb_classes.
insert into tb_personagens(nome, poder_ataque, poder_defesa, classe_id) values
("Merlin", 2000, 1500, 1),
("Legolas", 4000, 1000, 1),
("Arwen", 2500, 1750, 2),
("Frodo", 1500, 1250, 3),
("Samwise", 1250, 1000, 3),
("Gimli", 2250, 1500, 4),
("Boromir", 2000, 1750, 5),
("Merry", 1000, 750, 3),
("Aragorn", 3000, 2000, 1);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT 
    *
FROM
    tb_personagens
WHERE
    poder_ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no 
-- intervalo 1000 e 2000.
SELECT 
    *
FROM
    tb_personagens
WHERE
    poder_defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam 
-- a letra C no atributo nome.
select * from tb_personagens where nome like "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
-- com os dados da tabela tb_classes.
SELECT 
    nome,
    poder_ataque,
    poder_defesa,
    classe,
    descricao
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id_classe;
    
    
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
-- tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens 
-- que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros)
SELECT 
    nome,
    poder_ataque,
    poder_defesa,
    classe,
    descricao
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id_classe
WHERE
    id_classe = 1;