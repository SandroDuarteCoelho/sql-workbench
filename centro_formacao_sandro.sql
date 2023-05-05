create database centro_formacao;
use centro_formacao;
create table formandos(
	bi int,
    primary key(bi),
    nome_completo varchar(255),
    telefone int,
    morada varchar(255),
    hab_academicas varchar(45),
    data_nascimento date
);

create table formadores(
	bi int,
    primary key(bi),
    nome_completo varchar(255),
    telefone int,
    morada varchar(255),
    hab_academicas varchar(45),
    data_nascimento date
);

create table cursos(
	codigo int,
    primary key(codigo),
    nome_cursos varchar(45),
    duracao_horas int,
    n_modulos int
);