create database befyc;
use befyc;

create table funcionarios (
codigo int(4) auto_increment not null primary key,
nome varchar(300) not null,
nascimento date not null,
endereço varchar(200) not null,
numero int(15) not null,
email varchar(100) not null,
senha varchar (45)

);

create table tbl_categoria (
nm_categoria varchar(70) not null,
ds_produto varchar(3000) not null
);

create table tbl_cliente(
id_cliente int(11) primary key not null auto_increment,
email varchar(100) not null,
nome_cliente varchar(200) not null,
senha_cliente varchar(30) not null,
telefone int(15) not null,
endereço varchar(300) not null,
datadenascimento date not null
);

create table tbl_produtos (
cd_produto int(11) primary key not null auto_increment,
nm_produto varchar(100) not null,
vl_preco decimal(6,2) not null,
nm_categoria varchar(70) not null,
img_produto varchar(70)  not null,
qt_estoque int(11) not null,
ds_produto varchar (3000),
tamanho varchar(20) not null
);

create table tbl_vendas(
cd_venda int(20) primary key auto_increment not null,
cd_cliente int(11) not null,
cd_produto int(20) not null,
vl_item decimal(10,2) not null,
vl_total DECIMAL(10,2) GENERATED ALWAYS AS (qt_produto * vl_item) VIRTUAL,
dt_venda date not null
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Olimpique de Marselhe 22/22',
    '100,99',
    'Camisa',
    'camisa-O.marselha',
    '2',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Paris Saint-Germain 22/23',
    '115,99',
    'Camisa',
    'camisa-Psg',
    '1',
    'P,M,G,GG'
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Cruzeiro 23/24 ',
    '130,99',
    'Camisa',
    'camisa-O.cruzeiro',
    '4',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Ajax 22/23',
    '110,99',
    'Camisa',
    'camisa-O.cruzeiro',
    '5',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Almeria 22/23 ',
    '130,99',
    'Camisa',
    'camisa-O.Almeria',
    '3',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa America-MEX 22/23 ',
    '129,99',
    'Camisa',
    'camisa-Americamex',
    '2',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Argentina 22/23 ',
    '109,99',
    'Camisa',
    'camisa-Argentina',
    '5',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Brasil 22/23 ',
    '75,99',
    'Camisa',
    'camisa-Brasil',
    '4',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Croacia 22/23 ',
    '90,99',
    'Camisa',
    'camisa-Croacia',
    '6',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Espanha 23/24 ',
    '104,99',
    'Camisa',
    'camisa-Espanha',
    '4',
    'P,M,G,GG'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa França 22/23 ',
    '130,99',
    'Camisa',
    'camisa-França',
    '5',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Holanda 22/23',
    '90,99',
    'Camisa',
    'camisa-Holanda',
    '8',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Inglaterra 22/23 ',
    '92,99',
    'Camisa',
    'camisa-Inglaterra',
    '5',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Liverpool collab LeBron James 22/24 ',
    '139,99',
    'Camisa',
    'camisa-Liverpool',
    '2',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Borussia 22/23 ',
    '102,99',
    'Camisa',
    'camisa-Borrusia',
    '2',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Atalanta Goleiro 22/23 ',
    '79,99',
    'Camisa',
    'camisa-Atalanta',
    '3',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Monterrey 22/23 ',
    '118,99',
    'Camisa',
    'camisa-Monterrey',
    '5',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Napoli Dia dos Namorados 22/23 ',
    '139,99',
    'Camisa',
    'camisa-Atalanta',
    '4',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa parma 22/23 ',
    '97,99',
    'Camisa',
    'camisa-Parma',
    '6',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Sporting 23/24 ',
    '86,99',
    'Camisa',
    'camisa-Sporting',
    '3',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Werde Bremen Especial23/24 ',
    '129,99',
    'Camisa',
    'camisa-WerderBremer',
    '5',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa West Ham 22/23 ',
    '96,99',
    'Camisa',
    'camisa-West-Ham',
    '3',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'Camisa Midtjylland 23/24 ',
    '159,99',
    'Camisa',
    'camisa-Midtjylland',
    '2',
    'P,M,G,GG'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	'chuteira campo Predator Freak ',
    '345,99',
    'chuteira',
    'chuteira adidas',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Predator Accuracy ',
    '200,99',
    'chuteira',
    'chuteira adidas',
    '2',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo copa pure.4 Flexible Ground ',
    '170,99',
    'chuteira',
    'chuteira adidas',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo campo x SpeedFlow.1 FG Spark ',
    '345,99',
    'chuteira',
    'chuteira adidas',
    '5',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Adidas predator Freak.1 ',
    '500,00',
    'chuteira',
    'chuteira adidas',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo X speedportal Messi.1 ',
    '345,99',
    'chuteira',
    'chuteira-x-speed-Messi',
    '6',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo X Speedprtal.1 "karin benzema" ',
    '394,99',
    'chuteira',
    'chuteira-adidas',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo X Speedportal+ FG AL Rihla',
    '330,99',
    'chuteira',
    'chuteira-adidas-spedportal',
    '4',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Nike Mercurial SuperFly 8 Travis Scott X Fragment  ',
    '255,99',
    'chuteira',
    'chuteira-Nike',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira Nike Mercurial Superfly 8 Elite FG ',
    '415,99',
    'chuteira',
    'chuteira-Nike',
    '8',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Nike Phantom GX Clib Dynamic',
    '399,99',
    'chuteira',
    'chuteira-nike',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Nike Phantom GX Club Dynamic',
    '420,99',
    'chuteira',
    'chuteira-nike',
    '2',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Nike Phntom Venom ',
    '318,99',
    'chuteira',
    'chuteira-Nike',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo NIke Tiempo Legend 9 Elite ',
    '120,99',
    'chuteira',
    'chuteira-Nike'
    '2',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Nike Phantom GT pro ',
    '255,99',
    'chuteira',
    'chuteira-Nike',
    '5',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Puma Future',
    '430,99',
    'chuteira',
    'chuteira-puma',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Future ',
    '480,99',
    'chuteira',
    'chuteira-puma',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Puma Ultra Ultimate',
    '229,99',
    'chuteira',
    'chuteira-puma',
    '2',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'chuteira campo Future Ultimate  DNA FG/AG ',
    '499,99',
    'chuteira',
    'chuteira-puma',
    '3',
    '39,40,41,42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit treino Arsenal Short e Regata ',
    '80,99',
    'treino',
    'Roupa-arsenl',
    '3',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit treinamento Borussia Casaco e Calça',
    '120,99',
    'treino',
    'Roupa-Borussia',
    '4',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit Treinamento Manchester City Casaco e Calça ',
    '120,99',
    'treino',
    'Roupa-city',
    '3',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kitTreinamento Seleção Francesa Casaco e Calça ',
    '115,99',
    'treino',
    'Roupa-frança',
    '2',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit Treinamento AC Milan Casaco e Calça  ',
    '115,99',
    'treino',
    'Roupa-milan',
    '3',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	' Treinamento AC Milan Casaco e Calça ',
    '60,99',
    'treino',
    'Roupa-surfista',
    '5',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treinamento Termica Blusa e Calça ',
    '80,99',
    'treino',
    'Roupa-termica',
    '3',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treino Adidas Short e Camisa',
    '80,99',
    'treino',
    'Roupa-adidas',
    '4',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treinamento Feminino Short e Cropped',
    '85,99',
    'treino',
    'Roupa-treino-fm2',
    '3',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treinamento Feminino Calça e Cropped',
    '73,99',
    'treino',
    'Roupa-treino-Fm3',
    '6',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treinamento Feminino Calça e Cropped',
    '75,99',
    'treino',
    'Roupa-treino-Fm4',
    '6',
    'P, M, G'
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Roupa de Treinamento Feminino Calça e Cropped',
    '60,99',
    'treino',
    'Roupa-treino-Fm5',
    '4',
    'P, M, G'
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'cama Elastica',
    '124,99',
    'treino',
    'Roupa-camaelastica',
    '6',
    'P, M, G'
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit crossfit',
    '154,99',
    'treino',
    'Roupa-crossfit',
    '6',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Acte t99 Hard Grip',
    '63,99',
    'treino',
    'Roupa-treino',
    '6',
    'P, M, G'
);

insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'kit peso',
    '125,99',
    'treino',
    'kite peso',
    '3',
    'unico'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Kit Treino de Agilidade',
    '99,99',
    'treino',
    'treino-agilidade',
    '6',
    'unico'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'pacote whey',
    '56,99',
    'treino',
    'pacote-whey',
    '2',
    'unico'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'pacote creatina',
    '82,99',
    'treino',
    'pote-creatina',
    '6',
    'unico'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'short nike',
    '45,99',
    'treino',
    'short-nike',
    '4',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'short adidas',
    '44,99',
    'treino',
    'short-adidas',
    '5',
    'P, M, G'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Buffon Titan Pro 8',
    '81,99',
    'luva',
    'luva-goleiro-buffon',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Fusion',
    '114,99',
    'luva',
    'luva-goleiro-fusion',
    '4',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Ho Soccer One Negative Essential 8',
    '120,99',
    'luva',
    'luva-goleiro-ho-soccer-one-negative-essential',
    '2',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Mercurial Touch Elite',
    '159,99',
    'luva',
    'luva-goleiro-mercurial-touch-elite',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Poker Water Precision',
    '193,99',
    'luva',
    'luva-goleiro-poker-water-precision',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
     'Luva Goleiro Predator Pro 2',
    '169,99',
    'luva',
    'luva-goleiro-predator-pro-2-azul',
    '6',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Predator Pro ',
    '278,99',
    'luva',
    'luva-goleiro-predator-pro-azul',
    '2',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Predator 20 Competition',
    '279,99',
    'luva',
    'luva-goleiro-predator-20',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Raptor Nitro 4 Outubro Rosa',
    '165,99',
    'luva',
    'luva-goleiro-raptor-nitro',
    '2',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Saipulang',
    '131,99',
    'luva',
    'luva-goleiro-saipulang',
    '4',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Saurognathous Celie',
    '107,99',
    'luva',
    'luva-goleiro-saurognathous',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Scorpius',
    '215,99',
    'luva',
    'luva-goleiro-scorpius-black',
    '4',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Scorpius',
    '229,99',
    'luva',
    'luva-goleiro-scorpius-blue',
    '3',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Three Stars Fox',
    '219,99',
    'luva',
    'luva-goleiro-three-stars-fox-palma-branca',
    '6',
    '8, 9, 10, 12'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Adidas Predator Mutator',
    '289,99',
    'luva',
    'luva-goleiro-adidas-predator-mutator',
    '3',
    '8, 9, 10, 12'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Nike Phantom Shadow PRO lrj',
    '269,99',
    'luva',
    'luva-goleiro-nike-phantom',
    '6',
    '8, 9, 10, 12'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Nike Mercurial Touch Elite Original',
    '299,99',
    'luva',
    'luva-nike-mercurial',
    '5',
    '8, 9, 10, 12'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Adidas Predator GL Hybrid Solar ',
    '237,99',
    'luva',
    'luva-de-goleiro-predator-GL-hybrid-solar',
    '6',
    '8, 9, 10, 12'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Luva Goleiro Puma Future Ultimate Nc',
    '219,99',
    'luva',
    'luvas-guarda-redes-future-ultimate-nc',
    '3',
    '8, 9, 10, 12'
);insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Milan 05/06',
    '209,99',
    'camisa-Retro',
    'camisa-camisa-Milan2006',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Arsenal 06/07',
    '219,99',
    'camisa-Retro',
    'camisa-arsenal2006',
    '2',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa  Barcelona 15/16 ',
    '135,99',
    'camisa-Retro',
    'camisa-barcelona2015',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Brasileira 02/03',
    '125,99',
    'camisa-Retro',
    'camisa-Brasil2002',
    '5',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Francesa 05/06',
    '139,99',
    'camisa-Retro',
    'camisa-França2006',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Holandesa 74/75',
    '119,99',
    'camisa-Retro',
    'camisa-Holanda1974',
    '2',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Inter de Milão 04/05',
    '179,99',
    'camisa-Retro',
    'camisa-INterMilão2004',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Italiana 96/97',
    '130,99',
    'camisa-Retro',
    'camisa-Italia1996',
    '35',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Juventus 14/15',
    '139,99',
    'camisa-Retro',
    'camisa-Juventus2015',
    '4',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Manchester United 07/08',
    '133,99',
    'camisa-Retro',
    'camisa-ManchesterUnited2007',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Cruzeiro 93/94',
    '139,99',
    'camisa-Retro',
    'camisa-cruzeiro-93',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Newcastle 00/01',
    '175,99',
    'camisa-Retro',
    'camisa-Newcastle2000',
    '5',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Paris Saint Germain 01/02',
    '120,99',
    'camisa-Retro',
    'camisa-  paris saint germain 01/02',
    '5',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Real Madrid 08/09',
    '169,99',
    'camisa-Retro',
    'camisa-Real-Madrid2009',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Sporting 02/03',
    '153,99',
    'camisa-Retro',
    'camisa-Sporting2003',
    '5',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Tottenham 05/06'
    '115,99',
    'camisa-Retro',
    'camisa-Tottenham2006',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Alemã 89/90'
    '187,99',
    'camisa-Retro',
    'camisa-Alemanha1990',
    '2',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Santos 12/13'
    '200,99',
    'camisa-Retro',
    'camisa-santos-13',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Seleção Inglesa 02/03'
    '136,99',
    'camisa-Retro',
    'camisa retro/england',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Olympique de Marseille 98/99'
    '155,99',
    'camisa-Retro',
    'camisa-retro/om-98',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Camisa Parma 02/03'
    '139,99',
    'camisa-Retro',
    'camisa-retro/oarma-02',
    '3',
    'p, m, g, gg'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Jordan 11 Cherry'
    '339,99',
    'Tenis',
    'tenis/Air-Jordan-11Cherry',
    '3',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Adidas Adi2000'
    '315,99',
    'Tenis',
    'Tênis-Adi2000',
    '13',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Jordan 6 Retro'
    '300,99',
    'Tenis',
    'Tênis-Air-Jordan-6-Retro',
    '18',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Adidas Forum Bold'
    '360,99',
    'Tenis',
    'Tênis-Forum-Bold',
    '8',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Adidas Forum Low'
    '280,99',
    'Tenis',
    'Tênis-Forum-Low',
    '9',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Max Lebron 7 Retro QS'
    '310,99',
    'Tenis',
    'Tênis-Nike-Air Max-Lebron-7-Retro-QS',
    '14',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Max 90'
    '205,99',
    'Tenis',
    'Tênis-Nike-Air-Max-90',
    '10',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Max 95'
    '289,99',
    'Tenis',
    'Tênis-Nike-Air-Max-95',
    '16',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Max 97'
    '299,99',
    'Tenis',
    'Tênis-Nike-Air-Max-97',
    '17',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Nike Air Max TW'
    '399,99',
    'Tenis',
    'Tênis-Nike-Air-Max-TW',
    '19',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Adidas NMD R1 V2'
    '210,99',
    'Tenis',
    'Tênis-NMD-R1-V2',
    '11',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Adidas NMD R1 V3'
    '229,99',
    'Tenis',
    'Tênis-NMD-R1-V3',
    '12',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Rs X Efekt Topographic'
    '317,99',
    'Tenis',
    'TÊNIS-RS-X-EFEKT-TOPOGRAPHIC',
    '15',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Slipstream Archive Remastered'
    '330,99',
    'Tenis',
    'Tênis-Slipstream-Archive-Remastered',
    '18',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Slipstream Neymar Jr'
    '399,99',
    'Tenis',
    'Tênis-Slipstream-Neymar Jr',
    '17',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Suede Archive Remastered'
    '199,99',
    'Tenis',
    'Tênis-Suede-Archive-Remastered',
    '19',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Ben 10'
    '90,99',
    'Tenis',
    'Ben-10-Tênis',
    '20',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Relampago Marquinhos'
    '97,99',
    'Tenis',
    'tenis-relampago-marquinhos',
    '15',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Mizuno Wave Prophecy 11s'
    '348,99',
    'Tenis',
    'tenis-mizuno-wave-prophecy-11s',
    '10',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Rs Block Party'
    '212,99',
    'Tenis',
    'TÊNIS-RS-X-EFEKT',
    '17',
    '39, 40, 41, 42'
);
insert into tbl_produtos (nm_produto,vl_preco,nm_categoria,img_produto,qt_estoque,tamanho)
values 
(
	
	'Puma Rs Z Lth'
    '235,99',
    'Tenis',
    'TÊNIS-RS-Z-LTH',
    '19',
    '39, 40, 41, 42'
);
