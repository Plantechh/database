create table plants(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	describe_is text NOT NULL,
	point_at int NOT NULL,
	other varchar(255)
);

create table responses(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	text_is VARCHAR(255) NOT NULL,
	point_at int NOT NULL,
	group_at int NOT NULL
);

create table questions(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	text_is varchar(255) NOT NULL,
	id_responses int,
	FOREIGN KEY (id_responses) REFERENCES responses(id)
);


insert into plants (name, describe_is, point_at, other)
values 
(
"Coroa-de-frade"
, "Você é uma pessoa extremamente forte e durão/ona, como o cacto. Por ser introvertido/a, pode acabar sendo rude e machucando sem querer (assim como o cacto machuca com os seus espinhos) com quem não conhece, mas quem o conhece sabe quão especial e raro/a você é.  Você adora ir na praia para tomar sol, mas não gosta de passar muito tempo na água. Você sempre será lembrado/a como aquela pessoa que é esforçada e trabalhadora e que, mesmo nas condições mais adversas (como uma seca), se mantém em pé e consegue tirar aprendizados até desses momentos difíceis."
, 1
, "Melocactus Bahiensis"
);

insert into plants (name, describe_is, point_at, other)
values 
(
"Citronela"
, "A citronela é uma planta que em virtude de suas propriedades aromáticas, é muito usada no mercado de produtos naturais, principalmente na fabricação do óleo de citronela, que é basteante utilizado como repelente de insetos. Assim como ela afasta os insetos, você consegue afastar coisas ruins, como as más energias. Isso se dá graças ao seu senso de humor, você é uma pessoa engraçada, leve e leva alegria aonde chega."
, 2
, "Cymbopogon Winterianus"
);

insert into plants (name, describe_is, point_at, other)
values 
(
"Ixora"
, "É uma pessoa alegre, energética, extrovertida e comunicativa. Gosta do calor e ama ir pra piscina, praia etc. Não gosta de frio (é friorento). Ama estar com os amigos. Suas cores preferidas são: amarela, vermelha, laranja ou cor de rosa."
, 3
, "Ixora L."
);

insert into plants (name, describe_is, point_at, other)
values 
(
"Erva de Santa Luzia"
, ""
, 4
, "Commelina erecta"
);
