create database projeto_integrador;

use projeto_integrador;

create TABLE tbl_Cliente(
id_cliente int auto_increment not null primary key,
nome_cliente varchar(30),
sobrenome_cliente varchar(30),
email_cliente varchar(30),
telefone_cliente varchar(20),
cpf_cliente varchar(15));


select*from tbl_Cliente;

insert into tbl_cliente (nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Rafael','Oliveira','rafael_oliveira@gmail.com','119889445566','22233344456');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('João','Mario','joao_maluco@gmail.com','119083209064','33344455567');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Maria','Silva','maria.silva@gmail.com','11912457869','33344455566');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Carlos','Marco','carlos_madruga@gmail.com','11955226633','44455566678');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Julia','Maria','julia.maria@gmail.com','11912525856','55566699978');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Marlon','Santos','marlon.santos@gmail.com','11915331533','88866669978');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Silvio','Santos','silvio.santos@gmail.com','11911456689','55588897789');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Clarice','Falcao','clarice.falcao@gmail.com','11956641122','88966544245');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Giovani','Silva','giovani_silva@gmail.com','119556677889','45612345685');
insert into tbl_cliente	(nome_cliente, sobrenome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Lucia','Cruz','lucia.cruz.@gmail.com','119889445566','45689752655');


create TABLE cad_usuario(
id_usuario int auto_increment not null primary key,
nome_usuario varchar(30),
sobrenome_usuario varchar(30),
email_usuario varchar(30),
cargo_usuario varchar(20),
cpf_usuario varchar(15));

select*from cad_usuario;

insert into cad_usuario (nome, sobrenome, email, cargo, cpf) values ('Devison','Cruz','deviosn.cruz@gmail.com','Administrador','22233344456');
insert into cad_usuario	(nome, sobrenome, email, cargo, cpf) values ('Giovani','Santos','giovani_santos@gmail.com','Administrador','33344455567');
insert into cad_usuario	(nome, sobrenome, email, cargo, cpf) values ('Rafael','Cezar','rafael.cezar@gmail.com','11912457869','33344455566');
insert into cad_usuario	(nome, sobrenome, email, cargo, cpf) values ('Luara','Melchior','luara_melchior@gmail.com','11955226633','44455566678');
insert into cad_usuario	(nome, sobrenome, email, cargo, cpf) values ('Carlos','Alberto','carlos_alberto@gmail.com','11912525856','55566699978');

select*from cad_orcamento;

create TABLE cad_orcamento(
cod_orcamento int auto_increment not null primary key,
id_usuario varchar(30),
nome_usuario varchar(30),
cpf_cliente varchar(15),
valor_orcamento varchar(14),
tipo_servico varchar(30));

select*from cad_pagamento;

create table cad_pagamento(
cod_pagamento int auto_increment not null primary key,
cpf_cliente varchar(15),
cod_orcamento int(5));

select*from cad_servico;

create table cad_servico(
tipo_servico varchar(30),
duracao_servico varchar(10),
localizacao_servico varchar(40));
