-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
create database db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
create table tb_estudantes(id bigint not null auto_increment, nome varchar(255) not null,
data_nascimento date not null, sexo char(1) not null, turma int not null, 
nota decimal(4,2), primary key (id));

-- Insira nesta tabela no mínimo 8 dados (registros).
insert into tb_estudantes(nome, data_nascimento, sexo, turma, nota) values
("João da Silva", "1990-01-01", "M", 8, 7.5),
("Maria da Silva", "1991-02-02", "F", 8, 6.9),
("Pedro Souza", "2001-03-08", "M", 5, 7.0),
("Ana Clara", "1999-06-22", "F", 7, 8.0),
("Maria Fernanda", "2002-02-14", "F", 4, 9.2),
("Lucas Silva", "1998-05-02", "M", 8, 5.9),
("Beatriz Santos", "1997-08-04", "F", 9, 7.7),
("Rafael Oliveira", "2003-11-06", "M", 3, 9.1),
("Gabriela Lima", "2004-07-20", "F", 2, 10.0);

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
select * from tb_estudantes where nota > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
select * from tb_estudantes where nota < 7.0;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
update tb_estudantes set nota = 6.0 where id = 8;