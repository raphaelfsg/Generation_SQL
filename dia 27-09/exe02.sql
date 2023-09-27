create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária,
-- relevantes para classificar as pizzas.
CREATE TABLE tb_categorias (
    id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
)

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes 
-- aos produtos da pizzaria
CREATE TABLE tb_pizzas (
    id_pizza BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    valor DECIMAL(10 , 2 ) NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categorias (id_categoria)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (categoria, descricao) VALUES
("Salgada", "Pizzas com sabores salgados"),
("Doce", "Pizzas com sabores doces"),
("Vegetariana", "Pizzas sem ingredientes de origem animal"),
("Vegana", "Pizzas sem ingredientes de origem animal ou derivados de animais"),
("Low carb", "Pizzas com baixo teor de carboidratos");

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar
--  a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas (nome, tamanho, valor, categoria_id) VALUES
("Mussarela", "Grande", 50.00, 1),
("Peperoni", "Média", 45.00, 1),
("Portuguesa", "Pequena", 35.00, 1),
("Chocolate", "Grande", 60.00, 2),
("Brigadeiro", "Média", 55.00, 2),
("Romeu e Julieta", "Pequena", 45.00, 2),
("Vegetariana", "Grande", 55.00, 3),
("Vegetariana", "Média", 45.00, 3),
("Vegetariana", "Pequena", 35.00, 3),
("Vegana", "Grande", 60.00, 4),
("Vegana", "Média", 55.00, 4),
("Vegana", "Pequena", 45.00, 4),
("Low carb", "Grande", 65.00, 5),
("Low carb", "Média", 55.00, 5),
("Low carb", "Pequena", 45.00, 5);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT 
    nome, tamanho, valor, categoria
FROM
    tb_pizzas
WHERE
    valor > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
select nome, tamanho, valor, categoria from tb_pizzas where valor between 50.00 and 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M
-- no atributo nome.
SELECT 
    nome, tamanho, valor, categoria
FROM
    tb_pizzas
WHERE
    nome LIKE '%m%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com 
-- os dados da tabela tb_categorias.
SELECT 
    nome, tamanho, valor, categoria
FROM
    tb_pizzas
        INNER JOIN
    tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria;
    

SELECT 
    nome, tamanho, valor, categoria
FROM
    tb_pizzas
        INNER JOIN
    tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria where id_categoria = 1;