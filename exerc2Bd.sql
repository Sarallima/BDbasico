create database exercBD;
use exercBD;

create table departamentos(
id_departamento int primary key auto_increment,
nomeSetor enum ('Financeiro','TI','RH','Comercial','Serviços Gerais')
);

create table funcionarios(
id_Funcionario int primary key auto_increment,
nome varchar (150) not null,
cpf char (11) not null,
salario int,
idade int check (idade >=18),
id_departamento int,
foreign key (id_departamento) references departamentos (id_departamento)
);

insert into departamentos (nomeSetor) values 
('Financeiro'),
('TI'),
('RH'),
('Comercial'),
('Serviços Gerais');

insert into funcionarios (nome,cpf,salario,idade,id_departamento) values
('Sara Lima','98765432109',6000,21,2),
('Ana Beatriz', '12345678901', 3500, 29, 1),
('Carlos Eduardo', '23456789012', 4500, 35, 2),
('Fernanda Souza', '34567890123', 3800, 27, 3),
('João Pedro', '45678901234', 3200, 22, 4),
('Larissa Lima', '56789012345', 2900, 31, 5),
('Rafael Silva', '67890123456', 5000, 40, 1),
('Marcela Torres', '78901234567', 4200, 25, 2),
('Tiago Nunes', '89012345678', 3100, 30, 3),
('Patrícia Gomes', '90123456789', 2750, 24, 4),
('Lucas Andrade', '01234567890', 2600, 28, 5);

select * from funcionarios;

select nome,id_departamento from funcionarios order by nome;

select nome,salario from funcionarios where salario>3000;

select sum(salario) from funcionarios;

select avg(salario) from funcionarios;

select sum(salario) as SomaSalario from funcionarios;


