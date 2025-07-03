create database empresabd;
use empresabd;

create table cliente(
id_cliente int primary key auto_increment,
nome varchar(150) not null,
email varchar(150) unique,
telefone char(9) not null,
cidade varchar(50) not null,
data_cadastro date not null
);

INSERT INTO cliente (nome, email, telefone, cidade, data_cadastro) VALUES
('Ana Beatriz','beatriz@email.com','998877665','São Paulo','2025-06-01'),
('Carlos Eduardo','carlos.edu@email.com','987650432','Rio de Janeiro','2025-06-05'),
('Fernanda Lima','nanda.lima@email.com','998765432','Belo Horizonte','2025-06-10'),
('João Pedro','pedro@email.com','996543210','Fortaleza','2025-06-12'),
('Mariana Alves','alves@email.com','994321122','Porto Alegre','2025-06-15'),
('Lucas Martins','martins@email.com','992234455','Curitiba','2025-06-18'),
('Bruna Rocha','rocha@email.com','991112233','Salvador','2025-06-20'),
('Rafael Costa','costa@email.com','989876543','Boa Vista','2025-06-23'),
('Juliana Mendes','mendes@email.com','988887777','Goiania','2025-06-26'),
('Thiago Silva','silva@email.com','997778899','Vitoria','2025-06-28');

TRUNCATE TABLE cliente;
select * from cliente;
select * from cliente where data_cadastro>'2025-06-01';
select * from cliente where cidade = 'São Paulo';
alter table cliente change column telefone fone char(9);
select * from cliente where nome like "J%";
select * from cliente where nome like "J%" and cidade = 'Goiania';
update cliente 
set nome = 'Sara Lima'
where id_cliente = '2';
update cliente 
set email = 'sara@gmail.com'
where id_cliente = '2';
select * from cliente where cidade in ('São Paulo','Belo Horizonte','Curitiba');

