CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
  categoria VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
  id_curso BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  categoria_id BIGINT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
("Programação", "Cursos de programação"),
("Design", "Cursos de design"),
("Negócios", "Cursos de negócios"),
("Idiomas", "Cursos de idiomas"),
("Outros", "Cursos diversos");

INSERT INTO tb_cursos (nome, valor, categoria_id) VALUES
("Aprenda Java", 500.00, 1),
("Design de UI/UX", 600.00, 2),
("Finanças Pessoais", 700.00, 3),
("Inglês Básico", 800.00, 4),
("Marketing Digital", 900.00, 1),
("Python para Iniciantes", 1000.00, 1),
("Desenvolvedor Front-End", 1100.00, 1),
("UX/UI Designer", 1200.00, 2),
("Analista de Negócios", 1300.00, 3);

SELECT *
FROM tb_cursos
WHERE valor > 500.00;

SELECT *
FROM tb_cursos
WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT *
FROM tb_cursos
WHERE nome LIKE '%J%';

SELECT
  nome,
  valor,
  categoria
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id_categoria;

SELECT
  nome,
  valor,
  categoria
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id_categoria
WHERE categoria = "Programação";