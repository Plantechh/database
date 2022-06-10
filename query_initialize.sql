create table plants (
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	describe_is text NOT NULL,
	point_at int NOT NULL,
	other varchar(255)
);

create table responses (
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	text_is VARCHAR(255) NOT NULL,
	point_at int NOT NULL,
	group_at int NOT NULL
    #KEY group_at_index (group_at)
);

create table questions (
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	text_is varchar(255) NOT NULL,
	id_responses int
	#FOREIGN KEY (id_responses) REFERENCES responses(group_at)
);


insert into plants (name, describe_is, point_at, other) values (
	"Coroa-de-frade"
	, "Você é uma pessoa extremamente forte e durão(ona), como o cacto. Por ser introvertido(a), pode acabar sendo rude e machucando sem querer (assim como o cacto machuca com os seus espinhos) com quem não conhece, mas quem o conhece sabe quão especial e raro(a) você é.  Você adora ir na praia para tomar sol, mas não gosta de passar muito tempo na água. Você sempre será lembrado(a) como aquela pessoa que é esforçada e trabalhadora e que, mesmo nas condições mais adversas (como uma seca), se mantém em pé e consegue tirar aprendizados até desses momentos difíceis."
	, 1
	, "Melocactus Bahiensis"
);

insert into plants (name, describe_is, point_at, other) values (
	"Citronela"
	, "Assim como a Citronela, você é uma pessoa que consegue afastar coisas ruins , como as más energias (a citronela afasta os insetos em virtude das suas propriedades aromáticas). Isso se dá graças ao seu senso de humor, você é uma pessoa engraçada, leve e leva alegria aonde chega. Você gosta muito de ver as pessoas ao seu redor felizes, então está sempre contando pisdas para animá-las, por isso é considerado(a) o(a) piadista do grupo."
	, 2
	, "Cymbopogon Winterianus"
);

insert into plants (name, describe_is, point_at, other) values (
	"Ixora"
	, "Assim como a Ixora, você é uma pessoa alegre, energética, extrovertida e comunicativa, que sempre se dá bem com todo mundo em qualquer lugar que passa (a Ixora consegue se adaptar bem a diversos tipos de ambiente). Você ama o verão, gosta do calor e adora ir pra piscina, praia etc, para se bronzear e se divertir. Você não gosta de frio, pois é friorenta, prefere muito mais um dia de sol que possa aproveitar do que um dia de chuva. Está sempre buscando sair, ama estar com os amigos e passar horas conversando. Suas cores preferidas são: amarela, vermelha, laranja ou cor de rosa."
	, 3
	, "Ixora L."
);

insert into plants (name, describe_is, point_at, other) values (
	"Erva de Santa Luzia"
	, "Assim como a Erva de Santa Luzia você é uma pessoa sensível, agradável e empática, que lida bem com qualquer pessoa e costuma ficar vermelha quando está envergonhada. Costuma ser tímido(a) com quem não conhece, por isso, seu comportamento varia com as pessoas que estão presentes no ambiente e também de acordo como está o dia (como a Erva de Santa Luzia que não se adapta tão bem a qualquer tipo de ambiente). Você ama um dia de sol mas também adora uma chuvinha para dar uma arejada."
	, 4
	, "Commelina erecta"
);

insert into questions (text_is, id_responses) values (
	"Como é o seu dia perfeito?",
    1
);

insert into questions (text_is, id_responses) values (
	"Em uma roda de conversa, você é a pessoa que:",
    2
);

insert into questions (text_is, id_responses) values (
	"Qual seu gênero de filme favorito?",
    3
);

insert into questions (text_is, id_responses) values (
	"Quando surge um problema você costuma:",
    4
);

insert into questions (text_is, id_responses) values (
	"Como você gostaria de ser lembrado?",
    5
);

insert into responses (text_is, point_at, group_at) values (
	"Ir pra um show de stand up",
    1,
    1
);

insert into responses (text_is, point_at, group_at) values (
	"Ler um livro deitado numa rede tomando um cafézinho",
    2,
    1
);

insert into responses (text_is, point_at, group_at) values (
	"Em um dia ensolarado ir pra piscina com a galera",
    3,
    1
);

insert into responses (text_is, point_at, group_at) values (
	"Um dia de chuva ficar debaixo de um edredom quentinho assistindo série",
    4,
    1
);

insert into responses (text_is, point_at, group_at) values (
	"Faz piadas",
    1,
    2
);

insert into responses (text_is, point_at, group_at) values (
	"Presta atenção nas conversas mas não conversa muito",
    2,
    2
);

insert into responses (text_is, point_at, group_at) values (
	"Não para de falar",
    3,
    2
);

insert into responses (text_is, point_at, group_at) values (
	"Preferia ficar em casa",
    4,
    2
);

insert into responses (text_is, point_at, group_at) values (
	"Comédia",
    1,
    3
);

insert into responses (text_is, point_at, group_at) values (
	"Drama",
    2,
    3
);

insert into responses (text_is, point_at, group_at) values (
	"Ação",
    3,
    3
);

insert into responses (text_is, point_at, group_at) values (
	"Ficção Científica",
    4,
    3
);

insert into responses (text_is, point_at, group_at) values (
	"Pensar no lado positivo da situação",
    1,
    4
);

insert into responses (text_is, point_at, group_at) values (
	"Chorar",
    2,
    4
);

insert into responses (text_is, point_at, group_at) values (
	"Vou correr pra um ombro amigo",
    3,
    4
);

insert into responses (text_is, point_at, group_at) values (
	"Ser realista e enfrentar o problema",
    4,
    4
);

insert into responses (text_is, point_at, group_at) values (
	"Uma pessoa faz os outros rirem",
    1,
    5
);

insert into responses (text_is, point_at, group_at) values (
	"Uma pessoa empática que tem sensibilidade com o outro",
    2,
    5
);

insert into responses (text_is, point_at, group_at) values (
	"Uma pessoa que todos querem ter por perto",
    3,
    5
);

insert into responses (text_is, point_at, group_at) values (
	"Uma pessoa dedicada que fez a diferença",
    4,
    5
);

#TEST
#SELECT q.text_is, r.text_is  FROM questions q JOIN responses r ON q.id_responses = r.group_at;