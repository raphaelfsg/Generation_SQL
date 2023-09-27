CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT ,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
    ("Carnes Bovinas", "Produtos de origem bovina"),
    ("Carnes Suínas", "Produtos de origem suína"),
    ("Frutas", "Frutas frescas"),
    ("Legumes", "Legumes diversos"),
    ("Aves", "Produtos de origem avícola");


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto TEXT,
    peso VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (id_produto),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_produtos (nome_produto, descricao_produto, peso, preco, categoria_id) VALUES
    ("Filet Mignon", "Corte nobre de carne bovina",  "1kg", 75.00, 1),
    ("Costela de Porco", "Costela suína defumada", "1kg",45.00, 2),
    ("Maçã Gala", "Maçã vermelha e doce", "1kg" ,2.50, 3),
    ("Cenoura", "Cenouras frescas e crocantes", "1kg",1.50, 4),
    ("Peito de Frango", "Peito de frango desossado", "1kg" ,12.00, 5),
    ("Picanha", "Corte saboroso de carne bovina", "1kg" ,90.00, 1),
    ("Banana", "Bananas maduras", "1kg" ,2.00, 3),
    ("Batata", "Batatas orgânicas", "1kg" ,1.80, 4);


SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE nome_categoria = "Carnes Bovinas";



    
