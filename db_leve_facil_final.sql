

CREATE SCHEMA IF NOT EXISTS `db_leve_facil` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_cliente`(
id_cliente int(11) auto_increment,
nome varchar(300)not null, 
data_nascimento varchar(50)not null ,
email varchar(150)not null,
cpf varchar(50) not null,
logradouro varchar(200)not null,
complemento varchar(200),
bairro varchar(200)not null,
cep varchar(45)not null,
cidade varchar(150)not null,
estado varchar(300) not null,
numero varchar(25)not null, 
numero_rg varchar(45) not null,
telefone varchar(150)not null, 
celular varchar(150)not null,
senha varchar(100)not null,
situacao varchar(100) not null,
primary key (`id_cliente`),
UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE
) ;

CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_motorista`(
id_motorista int(11) auto_increment,
nome varchar(100) not null,
numero_rg varchar(45) not null,
cpf varchar(45) not null,
data_nascimento varchar(50), 
telefone varchar(45) not null,
celular varchar(45) not null,
numero_cnh varchar(45) not null,
data_validade_cnh varchar(45),
categoria_cnh varchar(45)not null,
email varchar(45) not null,
senha varchar(45)not null,
cep varchar(45) not null,
logradouro varchar(45) not null,
numero_casa varchar(45) not null,
complemento varchar(45),
bairro varchar(45)not null, 
cidade varchar(45) not null,
estado varchar(45) not null,
situacao varchar(100) not null,
primary key (`id_motorista`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE
) ;

CREATE TABLE IF NOT EXISTS `db_leve_facil`.`tb_administrador` (
`id_administrador` int(11)auto_increment,
`id_motorista` int(11) NOT NULL,
`id_cliente` int(11)  NOT NULL,
`nome` varchar(100) NOT NULL,
`senha` VARCHAR(200) NOT NULL,
`cpf` varchar(100) not null,
PRIMARY KEY (`id_administrador`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

create table if not exists `db_leve_facil`.`tb_cartao`(
id_cartao int(11)auto_increment,
bandeira varchar(11)not null,
codigo_seguranca int(3)not null,
nome_cartao varchar(45)not null,
numero_cartao varchar (45)not null,
validade varchar(50) not null,
id_cliente int (11)not null,
primary key(`id_cartao`),
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`)
);

create table if not exists  `db_leve_facil`.`tb_categoria_carreto`(
/*`id_categoria_carreto`int(11) auto_increment,*/
`id_nome_categoria_carreto`varchar(150)not null,
primary key (`id_nome_categoria_carreto`)
);

create table if not exists  `db_leve_facil`.`tb_pedido_orcamento`(
id_pedido_orcamento int(11) auto_increment,
data_pedido varchar(100) not null,
descricao varchar(200) ,
partida varchar (100) not null,
destino  varchar (200) not null,
distancia varchar (100) not null,
hora_pedido varchar(100) not null,
id_nome_categoria_carreto varchar(100) not null,
id_cliente int (11)not null,
situacao varchar(100) not null,
primary key (`id_pedido_orcamento`),
FOREIGN KEY (`id_nome_categoria_carreto`)  REFERENCES `db_leve_facil`.`tb_categoria_carreto` (`id_nome_categoria_carreto`),
/*FOREIGN KEY (`id_categoria_servico`)  REFERENCES `db_leve_facil`.`tb_categoria_servico` (`id_categoria_servico`),*/
FOREIGN KEY (`id_cliente`)  REFERENCES `db_leve_facil`.`tb_cliente` (`id_cliente`)
);

create table if not exists `db_leve_facil`.`tb_retorno_orcamento`(
id_retorno_orcamento int(11)auto_increment,
valor float (11) not null,
id_motorista int (11) not null,
id_pedido_orcamento int(11),
primary key (`id_retorno_orcamento`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`),
FOREIGN KEY (`id_pedido_orcamento`)  REFERENCES `db_leve_facil`.`tb_pedido_orcamento` (`id_pedido_orcamento`)
/*FOREIGN KEY (`id_nome_categoria_carreto`)  REFERENCES `db_leve_facil`.`tb_pedido_orcamento` (`id_nome_categoria_carreto`)*/
/*id_nome_categoria_carreto varchar (100) not null,*/
);

create table if not exists `db_leve_facil`.`tb_veiculo`(
id_veiculo int(11)auto_increment,
renavam varchar(50)not null,
placa varchar  (50) not null,
modelo varchar (50) not null,
cor varchar(50)not null,
marca varchar (50) not null,
porte varchar(50) not null,
id_motorista int (11) not null,
ano varchar(50) not null,
carrocaria varchar (100) not null,
primary key(`id_veiculo`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

create table if not exists `db_leve_facil`.`tb_conta_bancaria`(
id_conta_bancaria int(11) auto_increment not null,
titular varchar(50)not null,
banco varchar  (50) not null,
tipo varchar (50) not null,
numero_conta varchar(50)not null,
agencia varchar (50) not null,
id_motorista int (11) not null,
primary key(`id_conta_bancaria`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
);

 INSERT INTO `db_leve_facil`.`tb_motorista` (nome, numero_rg, cpf, data_nascimento, telefone, celular, numero_cnh, data_validade_cnh, categoria_cnh, email, senha, cep, logradouro, numero_casa, complemento, bairro, cidade, estado, situacao)
 values('admin','000.000.000-00','000.000.000-00','00/00/0000','(00)00000000', '(00)000000000','00000000000','00/00/0000','b','levefacilgrupo3@gmail.com','0','00000-000','00','0','00','00','00' ,'00' , 'ativo');
 
INSERT INTO `db_leve_facil`.`tb_cliente`(nome,data_nascimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero,numero_rg,telefone,celular,senha,situacao)
 values('admin','00/00/0000','levefacilgrupo3@gmail.com','000.000.000-00','000','000','000','00000-000','sao paulo','SP','00','000000000-0','(00)00000000',"(00)000000000",'0','ativo');

INSERT INTO `db_leve_facil`.`tb_administrador`(id_motorista, id_cliente, senha,cpf,nome)
values(1,1,'1','000.000.000-00','admin');

INSERT INTO `db_leve_facil`.`tb_categoria_carreto`(id_nome_categoria_carreto )VALUE('Pequeno');
INSERT INTO `db_leve_facil`.`tb_categoria_carreto`(id_nome_categoria_carreto )VALUE('Medio');
INSERT INTO `db_leve_facil`.`tb_categoria_carreto`(id_nome_categoria_carreto )VALUE('Grande');

 
 
 /* opcionais */
 INSERT INTO db_leve_facil.tb_cliente(nome,data_nascimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero,numero_rg,telefone,celular,senha,situacao)
 values('jose augusto','29/05/1992','porcel_augusto@hotmail.com','408.789.248-41','rua pardilhao','','chacara mafalda','03373-123','sao paulo','SP','53','036073018','(11)26676281',"(11)959893007",'123456','ativo');
 
