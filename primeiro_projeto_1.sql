create DATABASE loja;
use loja;
create table produtos(
id int primary key auto_increment,
nome varchar(20),
preco decimal(10,2),
estoque int);

insert into produtos
(nome, preco, estoque)
values
('Teclado', '120.00', 10),
('Mouse', '80.00', '15'),
('Monitor', '900.00', '5'),
('Headset', '250.00', '8'),
('Webcam', '180.00', '12');


create table clientes(
id int auto_increment primary key,
nome varchar(50) not null,
dt_nasc date,
cidade varchar(40),
saldo decimal(10,2)
);

insert into clientes
(nome, dt_nasc, cidade, saldo)
values
('João', '2001-01-01', 'São Paulo', 1500.00),
('Maria', '1994-02-01', 'Diadema', 2500.00),
('Carlos', '2007-03-03', 'Santo André', 800.00),
('Ana', '1985-04-04', 'São Paulo', 3200.75),
('Pedro', '1998-05-05', 'Diadema', 1775.00),
('Lucas', '1991-06-06', 'São Bernardo', 4200.00),
('Juliana', '2004-07-07', 'Diadema', 950.00),
('Rafael', '1981-08-08', 'São Paulo', 5100.00);

select * from clientes;
select * from clientes where cidade = 'Diadema';
select * from clientes where dt_nasc > '2000-01-01';
select * from clientes where cidade = 'São Paulo' and saldo > 3000.00;
select * from clientes order by saldo desc;
select nome, saldo from clientes where saldo > 1500.00; 
select * from clientes where cidade = 'Diadema' and dt_nasc < '2000-01-01';
select * from clientes where saldo > 1000.00 and saldo < 4000.00 order by saldo desc;  


select * from produtos;
select nome from produtos;
select preco from produtos;
select * from produtos where preco >= 200.00;
select * from produtos where estoque < 10;
select * from produtos order by preco; 
select * from produtos where preco > 100 and estoque > 5 order by preco desc;
