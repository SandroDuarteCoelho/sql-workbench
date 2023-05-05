

create database gestao_medicamentos;
use gestao_medicamentos;
create table unidades(
	unidades int,
    tipo_unidade varchar(45),
    primary key(unidades)
);

create table farmacias(
	farmacias int,
    tipo varchar(45),
    primary key(farmacias)
);

create table produtos(
	codigo_produto int,
    nome varchar(45),
    marca varchar(45),
    primary key(codigo_produto)
);

create table requisicoes(
	requisicoes int,
    primary key(requisicoes),
    unidades varchar(45),
    nome_utente varchar(45),
    nome_medicamento varchar(45),
    nome_medico varchar(45),
    codigo_medico varchar(45)
);

create table medicamentos(
	codigo_medicamento int,
    primary key(codigo_medicamento),
    composicao varchar(45),
    apresentacao varchar(45),
    indicacoes varchar(45),
    quantidades int,
    preco float,
    validade date
);

use gestao_medicamentos;

alter table unidades add (farmacias int); -- adicionei coluna farmacias
alter table unidades add foreign key (farmacias) references farmacias(farmacias); -- defini coluna farmacias como chave estrangeira

alter table farmacias add (codigo_medicamento int); 
alter table farmacias add foreign key (codigo_medicamento) references medicamentos(codigo_medicamento); 

alter table farmacias add (codigo_produto int); 
alter table farmacias add foreign key (codigo_produto) references produtos(codigo_produto); 

alter table produtos add (farmacias int); 
alter table produtos add foreign key (farmacias) references farmacias(farmacias); 

alter table medicamentos add (farmacias int); 
alter table medicamentos add foreign key (farmacias) references farmacias(farmacias); 

alter table requisicoes add (farmacias int); 
alter table requisicoes add foreign key (farmacias) references farmacias(farmacias); 

alter table requisicoes add (unidades int); 
alter table requisicoes add foreign key (unidades) references unidades(unidades); 