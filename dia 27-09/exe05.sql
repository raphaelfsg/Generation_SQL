CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
  id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
  categoria VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
  id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  quantidade BIGINT NOT NULL,
  categoria_id BIGINT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
("Elétrica", "Produtos para instalação elétrica"),
("Hidraulica", "Produtos para instalação hidráulica"),
("Pintura", "Produtos para pintura"),
("Construção", "Produtos para construção"),
("Outros", "Produtos diversos");

INSERT INTO tb_produtos (nome, valor, quantidade, categoria_id) VALUES
("Fio de cobre", 10.00, 100, 1),
("Chave de fenda", 20.00, 50, 1),
("Chuveiro elétrico", 150.00, 20, 2),
("Tubo de PVC", 50.00, 100, 2),
("Tinta branca", 70.00, 50, 3),
("Cimento", 100.00, 20, 4),
("Martelo", 30.00, 50, 1),
("Chave de boca", 40.00, 50, 1),
("Torneira", 80.00, 20, 2);

SELECT *
FROM tb_produtos
WHERE valor > 100.00;

SELECT *
FROM tb_produtos
WHERE valor BETWEEN 70.00 AND 150.00;

SELECT *
FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT
  nome,
  valor,
  quantidade,
  categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT
  nome,
  valor,
  quantidade,
  categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Hidraulica";