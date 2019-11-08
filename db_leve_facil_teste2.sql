
CREATE SCHEMA IF NOT EXISTS `db_leve_facil` DEFAULT CHARACTER SET utf8 ;


CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_cliente`(
id_cliente int(11) auto_increment,
nome varchar(300), 
data_nacimento varchar(50) ,
email varchar(150),
cpf varchar(50),
logradouro varchar(200),
complemento varchar(200),
bairro varchar(200),
cep varchar(45),
cidade varchar(150),
estado varchar(300),
numero varchar(25), 
numero_rg varchar(45),
telefone varchar(150), 
celular varchar(150),
senha varchar(100),

primary key (`id_cliente`),
UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE

) ;

CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_motorista`(
id_motorista int(11) not null,
ds_nome varchar(100) not null,
ds_telefone varchar(45) not null,
ds_email varchar(45) not null,
ds_logradouro varchar(45) not null,
ds_numero varchar(45) not null,
ds_complemento varchar(45) not null,
ds_bairro varchar(45)not null, 
ds_cep varchar(45) not null,
ds_cidade varchar(45) not null,
ds_estado varchar(45) not null,
dt_data_nacimento date, 
ds_numero_rg varchar(45) not null,
ds_local_expedicao varchar(45) not null,
dt_data_expedicao date ,
ds_numero_registro_cnh varchar(45) not null,
dt_data_validade date ,
ds_categoria varchar(45) not null,
dt_expedicao varchar(45) not null,
ds_cpf varchar(45) not null,
ds_senha varchar(45)not null,

primary key (`id_motorista`),
  UNIQUE INDEX `ds_cpf_UNIQUE` (`ds_cpf` ASC) VISIBLE,
  UNIQUE INDEX `ds_email_UNIQUE` (`ds_email` ASC) VISIBLE

) ;



CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_administrador` (
`id_administrador` int(11)not null,
`id_motorista` int(11) NOT NULL,
`id_cliente` int(11)  NOT NULL,
`ds_senha` VARCHAR(200) NOT NULL,
PRIMARY KEY (`id_administrador`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);


create table if not exists `db_leve_facil`.`tb_cartao`(
`id_cartao`int(11)not null,
`ds_bandeira`varchar(11)not null,
`ds_codigo_segurança`int(3)not null,
`ds_nome_cartao`varchar(45)not null,
`ds_numero_cartao`varchar (45)not null,
`id_cliente`int (11)not null,
primary key(`id_cartao`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`)
);


create table if not exists  `db_leve_facil`.`tb_categoria_servico`(
`id_categoria_servico`int(11)not null,
`nome_categoria_servico`varchar(150)not null,
primary key (`id_categoria_servico`)
);

create table if not exists  `db_leve_facil`.`tb_categoria_carreto`(
`id_categoria_carreto`int(11)not null,
`nome_categoria_carreto`varchar(150)not null,
primary key (`id_categoria_carreto`)
);

create table if not exists  `db_leve_facil`.`tb_agendamento`(
id_agendamentoint int (11)not null,
data_agendamento date,
id_categoria_carreto int(11)not null,
id_categoria_servico int(11)not null,
id_cliente int(11)not null,
primary key (`id_categoria_carreto`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`),
FOREIGN KEY (`id_categoria_carreto`)  REFERENCES `db_leve_facil`.`tb_categoria_carreto` (`id_categoria_carreto`),
FOREIGN KEY (`id_categoria_servico`)  REFERENCES `db_leve_facil`.`tb_categoria_servico` (`id_categoria_servico`)
);
create table if not exists  `db_leve_facil`.`tb_pedido_orcamento`(
id_pedido_orcamento int(11) not null,
data_pedido date,
descricao varchar(200)not null,
destino  varchar (200)not null,
hora_pedido date,
id_categoria_carreto int(11) not null,
id_categoria_servico int (11) not null,
id_cliente int (11)not null,
primary key (`id_pedido_orcamento`),
FOREIGN KEY (`id_categoria_carreto`)  REFERENCES `db_leve_facil`.`tb_categoria_carreto` (`id_categoria_carreto`),
FOREIGN KEY (`id_categoria_servico`)  REFERENCES `db_leve_facil`.`tb_categoria_servico` (`id_categoria_servico`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`)
);
create table if not exists `db_leve_facil`.`tb_retorno_orcamento`(
id_retorno_orcamento int(11)not null,
valor float (11) not null,
data_orcamento date,
hora_orccamento date,
id_pedido_orcamento int (11) not null,
id_motorista int (11) not null,
primary key (`id_retorno_orcamento`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`),
FOREIGN KEY (`id_pedido_orcamento`)  REFERENCES `db_leve_facil`.`tb_pedido_orcamento` (`id_pedido_orcamento`)

);


create table if not exists `db_leve_facil`.`tb_historico_ pagamento`(
id_historico_pagamento int(11)not null,
id_cliente int (11) not null,
id_retorno_orcamento int (11),
primary key(`id_historico_pagamento`),
FOREIGN KEY (`id_retorno_orcamento`)  REFERENCES `db_leve_facil`.`tb_retorno_orcamento` (`id_retorno_orcamento`)

);

create table if not exists `db_leve_facil`.`tb_pagamento`(
id_pagamento int(11)not null,
data_pagamento date,
id_cliente int (11) not null,
id_cartao int (11) not null,
id_retorno_orcamento int (11)not null,
primary key(`id_pagamento`),
FOREIGN KEY (`id_cartao`)  REFERENCES `db_leve_facil`.`tb_cartao` (`id_cartao`),
FOREIGN KEY (`id_retorno_orcamento`)  REFERENCES `db_leve_facil`.`tb_retorno_orcamento` (`id_retorno_orcamento`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`)
);

create table if not exists `db_leve_facil`.`tb_veiculo`(
id_veiculo int(11)not null,
renavam varchar(50)not null,
placa varchar  (7) not null,
modelo varchar (50) not null,
cor varchar(50)not null,
marca varchar (50) not null,
porte varchar(50) not null,
id_motorista int (11) not null,
primary key(`id_veiculo`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

create table if not exists `db_leve_facil`.`tb_conta_bancaria`(
id_conta_bancaria int(11)not null,
titular varchar(50)not null,
banco varchar  (7) not null,
tipo varchar (50) not null,
numero_conta varchar(50)not null,
agencia int (50) not null,
id_motorista int (11) not null,
primary key(`id_conta_bancaria`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

create table if not exists `db_leve_facil`.`tb_situacao`(
id_situacao int(11)not null,
nome varchar(50)not null,
id_motorista int (11) not null,
primary key(`id_situacao`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

create table if not exists `db_leve_facil`.`tb_historico_servico`(
id_historico_servico int(11)not null,
id_retorno_orcamento int(11)not null,
id_motorista int (11) not null,
primary key(`id_historico_servico`),
FOREIGN KEY (`id_retorno_orcamento`)  REFERENCES `db_leve_facil`.`tb_retorno_orcamento` (`id_retorno_orcamento`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);


