use db_quitanda;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao) values ("Frutas");
insert into tb_categoria (descricao) values ("Verduras");
insert into tb_categoria (descricao) values ("Legumes");

alter table tb_produtos add categoria_id bigint;
alter table tb_produtos change nomeProduto nome varchar(255);

alter table tb_produtos add constraint fk_produtos_categoria
foreign key (categoria_id) references tb_categoria (id);

insert into tb_produtos(nome, quantidade, preco, categoria_id) values
("Pitaya", 10, 15.99, 1);
insert into tb_produtos(nome, quantidade, preco, categoria_id) values
("Agriao", 15, 3.99, 2),
("Cenoura", 18, 3.50, 3);

select nome, quantidade, preco from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

SELECT *
FROM tb_produtos
WHERE categoria_id = 1;


select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id
where descricao = "Frutas";