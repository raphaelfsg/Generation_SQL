-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
create database db_departamentopessoal;

use db_departamentopessoal;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
create table tb_colaboradores(id int not null auto_increment, nome varchar(255) not null, cargo varchar(255) not null, salario decimal(10,2) not null, departamento varchar(255) not null, primary key(id));

-- Insira nesta tabela no mínimo 5 dados (registros).
insert into tb_colaboradores(nome, cargo, salario, departamento) values
("Carlos", "Chefe de segurança", 3498.23, "Segurança"),
("Fernando", "Auxiliar de serviços gerais", 1320.48, "Manutenção"),
("Mariana", "Diretora de Financeiro", 6800.99, "Financeiro"),
("Beatriz", "Supervisora de TI", 4000.00, "Tecnologia da informação"),
("Juliana", "Copeira", 1980.45, "Manutenção");

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
select * from tb_colaboradores where salario > 2000.00;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
select * from tb_colaboradores where salario < 2000.00;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
update tb_colaboradores set salario = 1999.99, cargo = "Vigia" where id = 1;
SELECT 
    *
FROM
    tb_colaboradores;