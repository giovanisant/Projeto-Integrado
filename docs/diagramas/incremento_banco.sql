create database projeto_integrado;

use projeto_integrado;

create table tbl_cliente(
id_cliente int auto_increment not null primary key,
nome_cliente varchar(50),
email_cliente varchar(50),
telefone_cliente varchar(20),
cpf_cliente varchar(15));


select*from tbl_cliente;

insert into tbl_cliente (nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Rafael Oliveira','rafael_oliveira@gmail.com','119889445566','22233344456');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('João Mario','joao_maluco@gmail.com','119083209064','33344455567');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Maria Silva','maria.silva@gmail.com','11912457869','33344455566');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Carlos Marco','carlos_madruga@gmail.com','11955226633','44455566678');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Julia Maria','julia.maria@gmail.com','11912525856','55566699978');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Marlon Santos','marlon.santos@gmail.com','11915331533','88866669978');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Silvio Santos','silvio.santos@gmail.com','11911456689','55588897789');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Clarice Falcao','clarice.falcao@gmail.com','11956641122','88966544245');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Giovani Silva','giovani_silva@gmail.com','119556677889','45612345685');
insert into tbl_cliente	(nome_cliente, email_cliente, telefone_cliente, cpf_cliente) values ('Lucia Cruz','lucia.cruz.@gmail.com','119889445566','45689752655');


create TABLE tbl_usuario(
id_usuario int auto_increment not null primary key,
nome_usuario varchar(50),
email_usuario varchar(50),
senha_usuario varchar(50),
cargo_usuario varchar(20),
cpf_usuario varchar(15));


select*from tbl_usuario;

insert into tbl_usuario (nome_usuario, email_usuario, senha_usuario, cargo_usuario, cpf_usuario) values ('Devison Cruz','deviosn.cruz@gmail.com','senha12345','Administrador','22233344456');
insert into tbl_usuario	(nome_usuario, email_usuario, senha_usuario, cargo_usuario, cpf_usuario) values ('Giovani Santos','giovani_santos@gmail.com','senha12345','Administrador','33344455567');
insert into tbl_usuario	(nome_usuario, email_usuario, senha_usuario, cargo_usuario, cpf_usuario) values ('Rafael Cezar','rafael.cezar@gmail.com','senha12345','Administrador','33344455566');
insert into tbl_usuario	(nome_usuario, email_usuario, senha_usuario, cargo_usuario, cpf_usuario) values ('Luara Melchior','luara_melchior@gmail.com','senha12345','Colaborador','44455566678');
insert into tbl_usuario	(nome_usuario, email_usuario, senha_usuario, cargo_usuario, cpf_usuario) values ('Carlos Alberto','carlos_alberto@gmail.com','senha12345','Colaborador','55566699978');

select*from tbl_orcamento;

create table tbl_orcamento(
cod_orcamento int auto_increment not null primary key,
id_usuario varchar(30),
nome_usuario varchar(30),
cpf_cliente varchar(15),
descricao_servico varchar(500),
valor_orcamento varchar(14));


select*from tbl_pagamento;

create table tbl_pagamento(
cod_pagamento int auto_increment not null primary key,
cpf_cliente varchar(15),
cod_orcamento int(5));

drop table tbl_agendamentos;

select*from tbl_agendamentos;

create table tbl_agendamentos(
cod_agendamento int auto_increment not null primary key,
nome_usuario varchar(50),
nome_cliente varchar(50),
endereco_cliente varchar(100),
data_agendamento varchar(10),
hora_agendamento varchar(6));



