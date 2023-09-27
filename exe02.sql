-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
create database db_loja;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
create table tb_produtos(id bigint not null auto_increment, nome varchar(255) not null,
descricao varchar(255) not null, categoria varchar(255) not null, marca varchar(255),
preco decimal(10,2) not null, quantidade int not null, primary key (id));

-- Insira nesta tabela no mínimo 8 dados (registros).
insert into tb_produtos(nome, descricao, categoria, marca, preco, quantidade) values
("Nintendo Switch OLED", "Console de videogame portátil com tela OLED de 7 polegadas",
"Eletrônicos", "Nintendo", 4999.00, 300),
("MacBook Pro M2", "Notebook com tela de 14 polegadas, processador M2, 16 GB de RAM e 512 GB
 de armazenamento SSD", "Eletrônicos", "Apple", 10999.00, 18),
("PlayStation 5", "Console de videogame com processador AMD Ryzen Zen 2, GPU AMD RDNA 2 e
 armazenamento SSD", "Eletrônicos", "Sony", 7999.00, 150),
("Samsung Galaxy S23 Ultra", "Smartphone com tela de 6,8 polegadas, câmera quádrupla de 108 MP,
 processador Snapdragon 8 Gen 2 e bateria de 5.000 mAh", "Eletrônicos", "Samsung", 11999.00, 40),
("Fone de ouvido Bluetooth JBL Tune 510BT", "Fone de ouvido bluetooth com driver de 40 mm, 
 reprodução de até 40 horas e resistência à água IPX4", "Eletrônicos", "JBL", 199.00, 500),
("Smartwatch Xiaomi Mi Watch Lite", "Smartwatch com tela de 1,4 polegadas, monitoramento de 
saúde, GPS e bateria de até 9 dias", "Eletrônicos", "Xiaomi", 299.00, 500),
("Tablet DXL", "Tablet paralelo baratex", "Eletrônicos", "", 399.99, 900),
("Controle Dualshock PS4", "Controle sem fio original Sony para PS4 Deepblue", "Eletrônicos", 
"Sony", 650.00, 35);

select * from tb_produtos;

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
select * from tb_produtos where preco > 500.00;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
select * from tb_produtos where preco < 500.00;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos 
SET 
    quantidade = 400
WHERE
    id = 7;