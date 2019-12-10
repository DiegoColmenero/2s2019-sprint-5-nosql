USE M_OpFlix

SELECT * FROM Produtoras ORDER BY IdProdutora ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC
SELECT * FROM TiposTitulo ORDER BY IdTipoTitulo ASC
SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Titulos ORDER BY IdTitulo ASC

ALTER TABLE Titulos
ADD Classificacao VARCHAR(20)


INSERT INTO Produtoras (Produtora) 
VALUES ('Pixar'),('Netflix'),('Marvel'),('FOX'),('Paramount')

INSERT INTO Plataformas (Plataforma)
VALUES ('Cinema'),('Netflix'),('Amazon'),('Locadora')
INSERT INTO Plataformas (Plataforma)
VALUES ('Prime Video')
INSERT INTO Plataformas (Plataforma)
VALUES ('VHS')

INSERT INTO TiposTitulo (TipoTitulo)
VALUES ('Filme'),('S�rie'),('Document�rio')

INSERT INTO Categorias (Categoria)
VALUES ('Terror'),('A��o'),('Aventura'),('Infantil')
	  ,('Fic��o Cient�fica'),('Suspense'),('Com�dia'),('Informativo')
INSERT INTO Categorias (Categoria)
VALUES ('Filme Musical')
INSERT INTO Categorias (Categoria)
VALUES ('Drama')
INSERT INTO Categorias (Categoria)
VALUES ('Anima��o')



UPDATE Usuarios
SET TipoDeUsuario = 'ADMINISTRADOR'
WHERE Nome = 'Helena'

UPDATE Titulos
SET Classificacao = '16+'
WHERE IdTitulo = 48

INSERT INTO Usuarios (Nome, Email, Senha, DataNascimento, TipoDeUsuario)
VALUES('Erik','erik@gmail.com','123456','2003-04-24','ADMINISTRADOR')
	 ,('Cassiana','cassiana@gmail.com','123456','2000-10-02','ADMINISTRADOR')
	 ,('Helena','helena@gmail.com','123456','1973-08-07','CLIENTE')
	 ,('Roberto','roberto@gmail.com','3110','1975-05-10','CLIENTE')
	 ,('D�bora','debora@gmail.com','3110','2002-04-19','CLIENTE')

INSERT INTO Titulos (Nome, Sinopse, Duracao, DataLancamento, IdTipoTitulo, IdCategoria, IdPlataforma, IdProdutora)
VALUES ('UP Altas Aventuras','Um velhinho voa com sua casa e seus bal�es',3,'2019-08-13',1,3,4,1)
	  ,('Dark','Um menininho alem�o viaja no tempo sem perceber',16,'2018-06-05',2,5,2,2)
	  ,('House of Cards','Tudo o que acontece por tr�s da casa branca',83,'2016-04-09',2,6,2,2)	  
      ,('Cosmos','Carl Segan se aventura pelo Cosmos do nosso vasto universo',10,'2019-10-17',3,8,2,2)
      ,('Dr. Estranho 2','Dr. Estranho parte para novas aventuras pela realidade alternativa',3,'2021-11-05',1,5,1,3)
      ,('The Walking Dead','O apocalipse zumbi come�a e um grupo de sobreviventes tentam sobreviver',120,'2019-10-02',2,1,3,4)
      ,('A maldi��o da resid�ncia Hill','Uma fam�lia cresce em uma casa repleta de esp�ritos e tem de lidar com isso',8,'2018-12-15',2,1,2,2)
	  ,('Vi�va Negra','Vi�va Negra vai para o pau com seus inimigos mortais',3,'2022-04-20',1,2,1,3)
	  ,('Simpsons','A fam�lia amarela mais amada est� de volta com novas aventuras',400,'1989-02-10',2,7,3,4)
	  ,('O Pianista','A hist�ria de um pianista judeu que foje do nazismo alem�o',3,'2011-07-19',1,8,4,5)
	  ,('Detona Halph','Halph e sua princesa Venelope v�o atr�s de novas aventuras',3,'2019-05-02',1,4,1,1)
	  ,('A hist�ria de Deus com Morgan Freeman','Morgan Freeman apresenta fatos que confirmam e desmentem a hist�ria de Deus',7,'2017-02-28',3,8,2,2)
	  ,('Rei le�o 2','Os le�es dominan o reino animal',3,'2019-04-24',1,4,1,1)
	  ,('O git perfeito','A hist�ria de um ser humano com capacidades inumanas, conseguir usar o git perfeitamente',2,'2020-04-19',1,5,3,5)
	  ,('Breaking Bad','O professor Walter White entra no mundo do crime e produz metafetamina',40,'2010-10-03',2,6,2,4)

INSERT INTO Titulos (Nome, Sinopse, Duracao, DataLancamento, IdTipoTitulo, IdCategoria, IdPlataforma, IdProdutora, Classificacao)
VALUES  ('Rei Le�o 2','O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos. A batalha pela Pedra do Reino � repleta de trai��o, eventos tr�gicos e drama, o que acaba resultando no ex�lio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba ter� que crescer e voltar para recuperar o que � seu por direito',2,'2019-07-18',1,9,1,1,'L')
	   ,('La Casa De Papel 3 temp',	'Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse',10,'2019-07-19',2,6,2,2,'16+')
	   ,('Deuses Americanos','Shadow Moon � um ex-vigarista que serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �, na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades',10,'2017-04-30',2,10,5,5,'18+')
	   ,('Toy Story 4','Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade � cuidar de sua crian�a, seja Andy ou Bonnie. Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrar� a Woody qu�o grande o mundo pode ser para um brinquedo',1,'2019-06-20',1,11,1,1,'L')
INSERT INTO Titulos (Nome, Sinopse, Duracao, DataLancamento, IdTipoTitulo, IdCategoria, IdPlataforma, IdProdutora, Classificacao)
VALUES  ('Deadpool 3','O her�i mais foda-se dos cinemas volta a atacar seus inimigos',2,'2019-12-11',1,2,1,4,'18+')



INSERT INTO Favoritos (IdTitulo, IdUsuario)
VALUES (25,2),(26,1),(26,2),(26,3),(26,4),(27,4),(27,5),(34,1),(34,2),(35,5),(36,1),(36,3),(37,2),(38,1),(38,2),(38,3),(38,4),(38,5),(39,5),(40,4),(40,5),(41,3),(41,4),(42,1),(42,3),(43,2),(43,5),(44,1),(44,2),(44,3),(44,4),(44,5),(45,1),(45,2)

DELETE FROM Titulos WHERE IdTitulo = 49

UPDATE Titulos
SET Nome = 'La Casa De Papel - 3� Temporada'
WHERE IdTitulo = 48


UPDATE Titulos
SET  IdPlataforma = 6
WHERE IdTitulo = 47

ALTER TABLE Usuarios
ADD Imagens TEXT

UPDATE Usuarios
SET Imagens = 'https://i.pinimg.com/originals/98/f6/1d/98f61d448ad3052d19f6dfa812452bc1.jpg'
WHERE TipoDeUsuario = 'CLIENTE'

UPDATE Usuarios
SET Imagens = 'https://korova.com.br/wordpress/wp-content/uploads/2018/02/cutest-baby-animals-24__605-1.jpg'
WHERE TipoDeUsuario = 'ADMINISTRADOR'

INSERT INTO Titulos (Nome, Sinopse, Duracao, DataLancamento, IdTipoTitulo, IdCategoria, IdPlataforma, IdProdutora)
VALUES ('Guardi�es da Gal�xia','Os her�is mai descolados da gal�xia v�o salvar nossa gal�xia',2,'2019-08-13',1,5,2,3)

UPDATE Titulos
SET Classificacao = '14+'
WHERE Nome = 'Guardi�es da Gal�xia'
	  



