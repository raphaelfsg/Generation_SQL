CREATE DATABASE db_farmacia_bem_estar;

use db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
  id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  quantidade INTEGER NOT NULL,
  categoria_id BIGINT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Cosméticos", "Produtos de beleza e higiene pessoal"),
("Farmacêuticos", "Produtos para saúde e bem-estar"),
("Higiene", "Produtos para limpeza e cuidados pessoais"),
("Nutricionais", "Produtos para alimentação e nutrição"),
("Outros", "Produtos diversos");

INSERT INTO tb_produtos (nome, valor, quantidade, categoria_id) VALUES
("Shampoo", 25.00, 50, 1),
("Sabonete", 5.00, 100, 2),
("Creme dental", 10.00, 200, 2),
("Remédio para dor de cabeça", 20.00, 100, 3),
("Vitaminas", 30.00, 50, 4),
("Protetor solar", 50.00, 20, 1),
("Desodorante", 15.00, 100, 2),
("Maquiagem", 40.00, 50, 1),
("Ração para cães", 35.00, 100, 5);

SELECT *
FROM tb_produtos
WHERE valor > 50.00;

SELECT *
FROM tb_produtos
WHERE valor BETWEEN 5.00 AND 60.00;

select * from tb_produtos where nome like "%c%";

SELECT
  tb_produtos.nome,
  valor,
  quantidade,
  tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT
  tb_produtos.nome,
  valor,
  quantidade,
  tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Cosméticos";