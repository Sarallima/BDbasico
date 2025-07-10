create database empresaBrinde;
use empresaBrinde;

create table brinde (
id_brinde int primary key auto_increment,
nomeBrinde enum ('Bolsa','Copo','Fone','Caderno')
);

create table colaborador(
id_Colab int primary key auto_increment,
nome varchar (150) not null,
setor varchar (100) not null,
gestor varchar (150) not null,
salario int,
id_brinde int,
foreign key (id_brinde) references brinde (id_brinde)
);

insert into brinde (nomeBrinde) values
('Bolsa'),
('Copo'),
('Fone'),
('Caderno');

insert into colaborador (nome,setor,gestor,salario,id_brinde) values 
('Ana Paula', 'TI', 'Carlos Silva', 4500, 1),
('Bruno Souza', 'Financeiro', 'Marta Lima', 3800, 2),
('Clara Mendes', 'RH', 'João Batista', 4200, 3),
('Diego Nunes', 'Comercial', 'Paula Rocha', 3900, 4),
('Elisa Torres', 'TI', 'Carlos Silva', 4700, 1),
('Felipe Amorim', 'Financeiro', 'Marta Lima', 3600, 2),
('Giovana Leal', 'RH', 'João Batista', 4300, 3),
('Henrique Dias', 'Comercial', 'Paula Rocha', 4100, 4),
('Isabela Costa', 'TI', 'Carlos Silva', 4900, 1),
('João Pedro', 'Financeiro', 'Marta Lima', 3700, 2);

select * from colaborador;

select nome,setor from colaborador where setor = 'RH';

select nome,id_brinde from colaborador where id_brinde = '4';

select max(salario) as MaiorSalario from colaborador;

select min(salario) as MenorSalario from colaborador;

select nome,id_brinde from colaborador where gestor = 'Paula Rocha';

select nome,setor from colaborador where salario between '4200' and '4900';

select distinct setor from colaborador;

select setor, avg(salario) as MediaSarialSetor from colaborador group by setor;

select setor,count(*) as TotalColaborador from colaborador group by setor;

