
/*******
INSERTS
********/


USE AutoMan_ubiracyneto
GO

/******************************************************************************************
INFORMAÇÕES REFERENTES ÁS OFICINAS
*******************************************************************************************/

-- Oficina (Id, Nome, Nif, Morada, Distrito, Email)

INSERT INTO Oficina (Nome, Nif, Morada, Distrito, Email) VALUES
 
 ('Data I/O Corporation', '0997092351', '08 Debra Street', 'Braga', 'rchitham0@cornell.edu'),
 ('Guangshen Railway Company Limited', '0130594296', '8 Hallows Road', 'Viseu', 'amcbrearty1@flavors.me'),
 ('Lions Gate Entertainment Corporation', '3827175534', '00540 Schiller Alley', 'Lisboa', 'hchapelhow2@google.ru'),
 ('Nuveen Dow 30SM Dynamic Overwrite Fund', '0532084705', '179 Elka Lane', 'Porto', 'rbeadman3@irs.gov'),
 ('1st Constitution Bancorp (NJ)', '0098851012', '21526 Delaware Parkway', 'Porto', 'cghidelli4@tmall.com');
 GO

/******************************************************************************************
INFORMAÇÕES REFERENTES ÁS VIATURAS DOS CLIENTES
*******************************************************************************************/

--Viatura (Niv, Matricula, Marca, Ano, Cilindrada, Cavalagem, Combustivel, Descricao)

INSERT INTO Viatura (Niv, Matricula, Marca, Ano, Cilindrada, Cavalagem, Combustivel, Descricao) VALUES 

 ('VNKJTUD3XFA878729', '44-DE-7B', 'Cadillac', 2008, 1590, 194, 'ELE', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl'),
 ('WBAXH5C51CD855344', '16-0D-7A', 'Toyota', 1995, 1649, 159, 'DIE', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla'),
 ('WAUDF78E47A709041', '75-D9-8D', 'BMW', 2005, 1552, 121, 'GAS', 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum'),
 ('5GADV23L05D688541', '46-99-34', 'Ford', 2000, 1381, 179, 'ELE', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam'),
 ('JN1CV6EK6AM909577', 'C0-E8-49', 'Chevrolet', 1994, 1645, 80, 'DIE', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium'),
 ('19XFA1E3XBE842435', '69-7B-C9', 'Pontiac', 1994, 1564, 93, 'GAS', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed'),
 ('WBSDX9C58CE572085', '79-F7-C4', 'Audi', 2010, 1650, 79, 'ELE', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis'),
 ('YV1672MK7D2808217', '3E-B9-F4', 'Infiniti', 1992, 1377, 245, 'DIE', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero'),
 ('WP1AA2A24EL014921', '66-04-77', 'Hyundai', 2009, 1206, 221, 'GAS', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec'),
 ('KMHCM3AC2AU202923', '55-A7-43', 'Hyundai', 2001, 1965, 119, 'GAS', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat'),
 ('WAUBG78E96A125463', '9A-B0-82', 'Volkswagen', 1992, 1227, 106, 'ELE', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat'),
 ('WA1DGAFE9FD935535', 'E0-7D-E6', 'Ford', 1984, 1053, 118, 'DIE', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),
 ('WBAUC9C51BV934174', '93-4D-57', 'Dodge', 2007, 1214, 205, 'GAS', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere'),
 ('WAUGVAFR4AA857698', '4E-E1-C8', 'BMW', 2004, 1203, 245, 'GAS', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus'),
 ('WAUCD64B54N181330', '1A-7C-40', 'Ford', 2008, 1884, 181, 'ELE', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna'),
 ('1G4HJ5EM9AU544124', '7B-73-D1', 'Mitsubishi', 2001, 1507, 212, 'DIE', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas'),
 ('WBAUP3C56BV387713', 'BE-34-E0', 'Bentley', 2012, 1153, 196, 'GAS', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio'),
 ('5J6YH1H33BL405202', '34-30-29', 'Dodge', 2001, 1356, 131, 'GAS', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna'),
 ('1C6RD6MT7CS448867', '56-7E-6F', 'Honda', 2003, 1093, 231, 'GAS', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec'),
 ('4T1BK3DB9CU663883', '8B-82-12', 'Nissan', 2003, 1021, 101, 'ELE', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc'),
 ('WA1CFAFP9EA141098', '06-E8-14', 'Dodge', 1994, 1907, 177, 'HIB', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo'),
 ('1GYFC53279R445253', '96-C1-37', 'Hyundai', 2005, 1066, 115, 'DIE', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit'),
 ('1FADP3E20EL638480', '48-DA-A5', 'Jeep', 1993, 1673, 173,'ELE', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam'),
 ('WA1LFBFP3CA378205', '85-4D-D7', 'Hummer', 2007, 1703, 96, 'HIB', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus'),
 ('SCFAB02A96G480674', 'EF-8C-26', 'Cadillac', 1993, 1327, 206, 'HIB', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in');
 GO

/******************************************************************
INFORMAÇÕES REFERENTES AOS PRODUTOS E SUAS QUANTIDADES EM ESTOQUE.
*******************************************************************/

--Produto (Id, Produto, Qtd)

INSERT INTO Produto (Produto, Qtd) VALUES 
 
 ('Pneu', 2520),
 ('Filtro de Ar', 980),
 ('Filtro de Óleo', 1189),
 ('Oleo de Motor', 3790),
 ('Filtro de Combustivel', 590),
 ('Filtro de Cabine', 340),
 ('Parafuso Roda', 2800),
 ('Anti congelante', 389),
 ('Escovas Dianteiras', 375),
 ('ADBLUE', 2756),
 ('Valvula Pneu', 4987),
 ('Vidro Dianteiro', 1000),
 ('Lampada', 548),
 ('Kit Reparo Pneu', 2756),
 ('Vidro Traseiro', 1000),
 ('Caixa de Direcao', 239),
 ('Velas do Motor', 456),
 ('Bobinas', 234);

 GO

/*******************************************************************************
INFORMAÇÕES REFERENTES A CERTIFICAÇÃO DAS OFICINAS E SEU STATUS, VALIDADE, ETC.
********************************************************************************/

--Certificado (ValorCert, ValidadeCert, StatusCert, DataCert, IdOficina)

INSERT INTO Certificado (ValorCert, ValidadeCert, StatusCert, DataCert, IdOficina) VALUES 
 
 (400.00, '2020-10-01', 'AP', '2019-10-01', 1),
 (400.00, '2020-10-01', 'AP', '2019-10-01', 2),
 (400.00, '2020-10-01', 'AP', '2019-10-01', 3),
 (400.00, '2020-10-01', 'AP', '2019-10-01', 4),
 (400.00, '2020-10-01', 'AP', '2019-10-01', 5),

 (500.00, '2021-10-01', 'AP', '2020-10-01', 1),
 (500.00, '2021-10-01', 'AP', '2020-10-01', 2),
 (500.00, '2021-10-01', 'AP', '2020-10-01', 3),
 (500.00, null, 'RP', '2020-10-01', 4),
 (500.00, '2021-10-01', 'AP', '2020-10-01', 5),

 (600.00, '2022-10-01', 'AP', '2021-10-01', 1),
 (600.00, '2022-10-01', 'AP', '2021-10-01', 2),
 (600.00, null, 'RP', '2021-10-01', 3),
 (600.00, '2022-10-01', 'AP', '2021-10-01', 4),
 (600.00, '2022-10-01', 'AP', '2021-10-01', 5);
 GO

/*****************************************************************
INFORMAÇÕES REFERENTES AOS CLIENTES E SUAS RESPECTIVAS VIATURAS.
******************************************************************/

 --Cliente (Nome, DataCad, Nif, Morada, Email, Sexo, IdViatura)

INSERT INTO Cliente (Nome, DataCad, Nif, Morada, Email, Sexo, IdViatura) VALUES
 
 ('Hedwig Marion', '2019-12-06', '3586629292', '47986 David Park', 'hmarion0@state.tx.us', 'F', 1),
 ('Billye Van Haeften', '2019-12-01', '2764090086', '8 Hoffman Circle', 'bvan1@harvard.edu', 'M', 2),
 ('Rori Lafrentz', '2019-12-22', '4788385975', '4404 Susan Way', 'rlafrentz2@fc2.com', 'M', 3),
 ('Jackquelin Thistleton', '2019-12-02', '9414918332', '45191 Rusk Place', 'jthistleton3@deviantart.com', 'M', 4),
 ('Adela Labroue', '2019-12-25', '6292959635', '6818 Killdeer Road', 'alabroue4@eventbrite.com', 'M', 5),
 ('Freida Crunkhorn', '2019-12-07', '7074076046', '91987 Sherman Alley', 'fcrunkhorn5@naver.com', 'F', 6),
 ('Joete Muriel', '2019-12-27', '1622034295', '6420 Mcbride Alley', 'jmuriel6@twitter.com', 'M', 7),
 ('Dorolice Crosoer', '2019-12-23', '7848995853', '1718 Continental Parkway', 'dcrosoer7@businessweek.com', 'M', 8),
 ('Tobiah Loughlan', '2019-12-24', '5975178472', '47041 Holy Cross Alley', 'tloughlan8@moonfruit.com', 'F', 9),
 ('Nissie Nolot', '2019-12-01', '7505065800', '0 Melrose Alley', 'nnolot9@opensource.org', 'M', 10),
 ('Kenn Toohey', '2019-12-10', '6123893836', '674 Anthes Pass', 'ktooheya@usatoday.com', 'M', 11),
 ('Berky Caudell', '2019-12-05', '9913987361', '54628 Hoard Court', 'bcaudellb@businesswire.com', 'F', 12),
 ('Carolann Robbins', '2019-12-25', '2923435868', '441 Amoth Drive', 'crobbinsc@theatlantic.com', 'F', 13),
 ('Hettie Baradel', '2019-12-12', '2639328540', '17279 Golden Leaf Road', 'hbaradeld@nps.gov', 'F', 14),
 ('Welbie Vlasin', '2019-12-24', '3428496810', '57204 Carey Pass', 'wvlasine@nba.com', 'F', 15),
 ('Ivonne Sivewright', '2019-12-14', '1708503424', '1677 Shelley Terrace', 'isivewrightf@blogtalkradio.com', 'F', 16),
 ('Alys Lowery', '2019-12-13', '7199378327', '9783 Florence Terrace', 'aloweryg@psu.edu', 'F', 17),
 ('Nichols Overel', '2019-12-03', '5377397971', '149 Susan Lane', 'noverelh@clickbank.net', 'M', 18),
 ('Carlie Pevreal', '2019-12-17', '5239996758', '6275 Barnett Avenue', 'cpevreali@behance.net', 'F', 19),
 ('Lia Reasce', '2019-12-17', '9078847846', '60035 Fieldstone Road', 'lreascej@trellian.com', 'M', 20),
 ('Gabbi Stedmond', '2019-12-29', '6537614498', '90 Menomonie Pass', 'gstedmondk@ca.gov', 'M', 21),
 ('Linc Swatradge', '2019-12-18', '6731260917', '839 Vahlen Junction', 'lswatradgel@sfgate.com', 'F', 22),
 ('Carlita Colliard', '2019-12-09', '9138020331', '85894 Veith Road', 'ccolliardm@freewebs.com', 'M', 23),
 ('Karmen Brunotti', '2019-12-12', '5363943496', '2 Charing Cross Avenue', 'kbrunottin@samsung.com', 'F', 24),
 ('Reinald Dayment', '2019-12-23', '5205195256', '295 Bowman Trail', 'rdaymento@nydailynews.com', 'M', 25);
 GO

/************************************************************************
INFORMAÇÕES REFERENTES AOS PRODUTOS EM ESTOQUE E A QUE OFICINA PERTENCE.
*************************************************************************/

 --Estocar (IdOficina, IdProduto)

 INSERT INTO Estocar (IdOficina, IdProduto) VALUES

 (1, 1),
 (1, 2),
 (1, 3),
 (1, 4),
 (1, 5),
 (1, 6),
 (1, 7),
 (1, 8),
 (1, 9),
 (1, 10),
 (1, 11),
 (1, 12),
 (1, 13),
 (1, 14),
 (1, 15),
 (1, 16),
 (1, 17),
 (1, 18),
 (2, 1),
 (2, 2),
 (2, 3),
 (2, 4),
 (2, 5),
 (2, 6),
 (2, 7),
 (2, 8),
 (2, 9),
 (2, 10),
 (2, 11),
 (2, 12),
 (2, 13),
 (2, 14),
 (2, 15),
 (3, 1),
 (3, 2),
 (3, 3),
 (3, 4),
 (3, 5),
 (3, 6),
 (3, 7),
 (3, 8),
 (3, 9),
 (3, 10),
 (3, 11),
 (3, 12),
 (3, 13),
 (3, 14),
 (3, 15),
 (4, 1),
 (4, 2),
 (4, 3),
 (4, 4),
 (4, 5),
 (4, 6),
 (4, 7),
 (4, 8),
 (4, 9),
 (4, 10),
 (4, 11),
 (4, 12),
 (4, 13),
 (4, 14),
 (4, 15),
 (5, 1),
 (5, 2),
 (5, 3),
 (5, 4),
 (5, 6),
 (5, 7),
 (5, 8),
 (5, 9),
 (5, 10),
 (5, 11),
 (5, 12),
 (5, 13),
 (5, 14),
 (5, 15);
 GO

/*************************************************************************
INFORMAÇÕES REFERENTES AOS CLIENTES QUE FORAM INDICADOS E QUEM OS INDICOU.
**************************************************************************/

 -- Indicar (IdIndicado, IdCliente)

 INSERT INTO Indicar (IdIndicado, IdCliente) VALUES

 (8, 1),
 (9, 1),
 (10, 1),
 (13, 10),
 (14, 10),
 (15, 10),
 (16, 10),
 (23, 20),
 (24, 20),
 (25, 20);
 GO

/*************************************************************************
INFORMAÇÕES REFERENTES AOS SERVIÇOS QUE SERÃO PRESTADOS PELAS OFICINAS.
**************************************************************************/

 -- Servico (Id, Tipo, Descricao, PrecoHora, TempoExec, PrecoTotal, DataAtual, IdProduto)

INSERT INTO Servico (Tipo, Descricao, PrecoHora, TempoExec, PrecoTotal, DataAtual, IdProduto) VALUES 

 ('Troca de Pneu', 'quisque ut erat curabitur gravida nisi at nibh in hac', 30.00, 3, 297.00, '2021-12-27', 1),
 ('Troca Filtro de Ar', 'justo in blandit ultrices enim lorem ipsum dolor sit amet', 30.00, 1, 56.00, '2021-12-28', 2),
 ('Troca Filtro de Óleo', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 30.00, 7, 227.00, '2021-12-26', 3),
 ('Troca Oleo de Motor', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 30.00, 5, 192.00, '2021-12-29', 4),
 ('Troca Filtro Combustivel', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum', 30.00, 5, 183.00, '2021-12-27', 5),
 ('Troca Filtro de Cabine', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer', 30.00, 20, 600.00, '2021-12-28', 6),
 ('Troca Parafuso Roda', 'a pede posuere nonummy integer non velit donec diam neque', 30.00, 3, 127.00, '2021-12-28', 7),
 ('Troca Anti congelante', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', 30.00, 2, 82.00, '2021-12-27', 8),
 ('Troca Escovas Dianteiras', 'volutpat sapien arcu sed augue aliquam erat volutpat in congue', 30.00, 6, 229.00, '2021-12-30', 9),
 ('Troca ADBLUE', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 30.00, 5, 172.00, '2021-12-30', 10),
 ('Troca Valvula Pneu', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 30.00, 1, 47.00, '2021-12-26', 11),
 ('Troca Vidro Dianteiro', 'auctor gravida sem praesent id massa id nisl venenatis lacinia', 30.00, 4, 191.00, '2021-12-29', 12),
 ('Troca Lampada', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium', 30.00, 2, 78.00, '2021-12-30', 13),
 ('Troca Kit Reparo Pneu', 'tristique est et tempus semper est quam pharetra magna ac', 30.00, 8, 245.00, '2021-12-25', 14),
 ('Troca Vidro Traseiro', 'quam nec dui luctus rutrum nulla tellus in sagittis dui', 30.00, 5, 325.00, '2021-12-25', 15);
 GO
 
/**************************************************************************************************************************************
INFORMAÇÕES REFERENTES AS MARCAÇÕES DE SERVIÇOS FEITAS PELOS CLIENTES PASA AS SUAS VIATURAS E POR QUAIS OFICINAS QUEREM SER ATENDIDOS
***************************************************************************************************************************************/

 --Marcacao (Id, Data, KmAtual, ObsViatura,  IdCliente,  IdOficina)

INSERT INTO Marcacao (Data, KmAtual, ObsViatura, IdCliente, IdOficina) VALUES

('2022-01-01', 16302, 'in porttitor pede justo eu massa donec dapibus duis at', 8, 3),
('2022-01-03', 34902, 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo', 4, 2),
('2022-01-04', 93842, 'libero nam dui proin leo odio porttitor id consequat in', 10, 2),
('2022-01-04', 67382, 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 8, 1),
('2022-01-05', 68285, 'velit id pretium iaculis diam erat fermentum justo nec condimentum', 22, 3),
('2022-01-07', 53966, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 5, 5),
('2022-01-11', 49874, 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', 1, 5),
('2022-01-14', 104502, 'ac diam cras pellentesque volutpat dui maecenas tristique est et', 12, 2),
('2022-01-19', 27176, 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec', 11, 3),
('2022-01-22', 67953, 'odio porttitor id consequat in consequat ut nulla sed accumsan', 9, 2),
('2022-01-22', 54483, 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 7, 1),
('2022-01-25', 76380, 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', 18, 2),
('2022-02-05', 76437, 'tellus in sagittis dui vel nisl duis ac nibh fusce', 3, 4),
('2022-02-07', 76256, 'mollis molestie lorem quisque ut erat curabitur gravida nisi at', 8, 4),
('2022-02-16', 71142, 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 25, 3),
('2022-02-19', 80666, 'in felis donec semper sapien a libero nam dui proin', 20, 4),
('2022-02-22', 48703, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 7, 4),
('2022-03-02', 95738, 'at nibh in hac habitasse platea dictumst aliquam augue quam', 14, 4),
('2022-03-02', 67510, 'auctor sed tristique in tempus sit amet sem fusce consequat', 23, 2),
('2022-03-08', 18196, 'blandit non interdum in ante vestibulum ante ipsum primis in', 10, 5),
('2022-03-09', 90518, 'porttitor lorem id ligula suspendisse ornare consequat lectus in est', 16, 5),
('2022-03-13', 63649, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', 7, 2),
('2022-03-13', 74490, 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 18, 4),
('2022-03-14', 75863, 'ultrices vel augue vestibulum ante ipsum primis in faucibus orci', 8, 3),
('2022-03-15', 24484, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', 10, 3),
('2022-03-24', 40580, 'ligula sit amet eleifend pede libero quis orci nullam molestie', 25, 5),
('2022-03-26', 100194, 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 25, 4),
('2022-04-03', 82253, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', 11, 3),
('2022-04-04', 45161, 'nulla dapibus dolor vel est donec odio justo sollicitudin ut', 1, 1),
('2022-04-08', 95162, 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 23, 5),
('2022-04-09', 41656, 'risus semper porta volutpat quam pede lobortis ligula sit amet', 13, 3),
('2022-04-11', 46513, 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 24, 5),
('2022-04-12', 22364, 'vehicula consequat morbi a ipsum integer a nibh in quis', 17, 2),
('2022-04-14', 104531, 'condimentum id luctus nec molestie sed justo pellentesque viverra pede', 13, 5),
('2022-04-17', 105954, 'condimentum id luctus nec molestie sed justo pellentesque viverra pede', 5, 5),
('2022-04-18', 100628, 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', 24, 4),
('2022-04-18', 35547, 'felis fusce posuere felis sed lacus morbi sem mauris laoreet', 17, 4),
('2022-04-23', 73500, 'convallis nunc proin at turpis a pede posuere nonummy integer', 15, 3),
('2022-04-26', 44916, 'sit amet cursus id turpis integer aliquet massa id lobortis', 15, 1),
('2022-05-06', 36721, 'pretium quis lectus suspendisse potenti in eleifend quam a odio', 25, 1),
('2022-05-06', 15897, 'sapien cursus vestibulum proin eu mi nulla ac enim in', 14, 1),
('2022-05-12', 74811, 'vel est donec odio justo sollicitudin ut suscipit a feugiat', 15, 3),
('2022-05-13', 63659, 'non pretium quis lectus suspendisse potenti in eleifend quam a', 18, 1),
('2022-05-14', 48809, 'quisque porta volutpat erat quisque erat eros viverra eget congue', 7, 2),
('2022-05-16', 96824, 'massa id nisl venenatis lacinia aenean sit amet justo morbi', 3, 1),
('2022-05-17', 11954, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 8, 3),
('2022-05-22', 56679, 'leo rhoncus sed vestibulum sit amet cursus id turpis integer', 5, 2),
('2022-05-23', 78228, 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec', 13, 4),
('2022-05-25', 66853, 'dolor morbi vel lectus in quam fringilla rhoncus mauris enim', 4, 2),
('2022-05-25', 71616, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna', 15, 5),
('2022-05-26', 85726, 'sagittis nam congue risus semper porta volutpat quam pede lobortis', 15, 5),
('2022-05-30', 10877, 'ut nulla sed accumsan felis ut at dolor quis odio', 9, 4),
('2022-06-07', 23665, 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 8, 2),
('2022-06-09', 11952, 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', 24, 1),
('2022-06-14', 17565, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien', 15, 2),
('2022-06-16', 91352, 'quam nec dui luctus rutrum nulla tellus in sagittis dui', 1, 4),
('2022-06-18', 44403, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis', 14, 1),
('2022-06-24', 108881, 'massa donec dapibus duis at velit eu est congue elementum', 15, 3),
('2022-06-26', 65341, 'eget orci vehicula condimentum curabitur in libero ut massa volutpat', 11, 5),
('2022-06-29', 105411, 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 15, 2);
GO

/**********************************************************************
INFORMAÇÕES REFERENTES AOS SERVIÇOS QUE SÃO PRESTADOS POR CADA OFICINA.
***********************************************************************/

-- Prestar (IdServico, IdOficina)

INSERT INTO Prestar (IdOficina, IdServico) VALUES 
 
 (1, 1),
 (1, 2),
 (1, 3),
 (1, 4),
 (1, 5),
 (1, 6),
 (1, 7),
 (1, 8),
 (1, 9),
 (1, 10),
 (1, 11),
 (1, 12),
 (1, 13),
 (1, 14),
 (1, 15),
 (2, 1),
 (2, 2),
 (2, 3),
 (2, 4),
 (2, 5),
 (3, 1),
 (3, 2),
 (3, 3),
 (3, 4),
 (3, 5),
 (3, 6),
 (3, 7),
 (3, 8),
 (4, 10),
 (4, 11),
 (4, 12),
 (4, 13),
 (4, 14),
 (3, 15),
 (5, 5),
 (5, 6),
 (5, 7),
 (5, 8),
 (5, 9),
 (5, 10);
 GO

/****************************************************************
INFORMAÇÕES REFERENTES AOS SERVICOS FATURADOS QUANDO EXECUTADOS.
*****************************************************************/

 -- Faturar (IdServico, IdMarcacao, Data, Status)

INSERT INTO Faturar (IdServico, IdMarcacao, Data, Status) VALUES 

 (4, 1, '2022-01-01', 'EXC'),
 (4, 2, '2022-01-03', 'EXC'),
 (3, 3, '2022-01-04', 'EXC'),
 (5, 4, '2022-01-04', 'EXC'),
 (2, 5, '2022-01-05', 'EXC'),
 (3, 6, '2022-01-07', 'EXC'),
 (2, 7, '2022-01-11', 'EXC'),
 (4, 8, '2022-01-14', 'EXC'),
 (3, 9, '2022-01-19', 'EXC'),
 (4, 10, '2022-01-22', 'EXC'),
 (5, 11, '2022-01-22', 'EXC'),
 (3, 12, '2022-01-25', 'EXC'),
 (3, 13, '2022-02-05', 'EXC'),
 (1, 14, '2022-02-07', 'EXC'),
 (1, 15, '2022-02-16', 'NAOEXC'),
 (2, 16, '2022-02-22', 'EXC'),
 (1, 17, '2022-02-19', 'EXC'),
 (1, 18, '2022-03-02', 'EXC'),
 (2, 19, '2022-03-02', 'EXC'),
 (3, 20, '2022-03-08', 'EXC'),
 (4, 21, '2022-03-09', 'EXC'),
 (4, 22, '2022-03-13', 'EXC'),
 (1, 23, '2022-03-13', 'EXC'),
 (4, 24, '2022-03-14', 'EXC'),
 (3, 25, '2022-03-15', 'EXC'),
 (4, 26, '2022-03-24', 'EXC'),
 (2, 27, '2022-03-26', 'EXC'),
 (1, 28, '2022-04-03', 'NAOEXC'),
 (4, 29, '2022-04-04', 'NAOEXC'),
 (2, 30, '2022-04-08', 'EXC'),
 (4, 31, '2022-04-09', 'EXC'),
 (5, 32, '2022-04-11', 'NAOEXC'),
 (2, 33, '2022-04-12', 'EXC'),
 (1, 34, '2022-04-14', 'EXC'),
 (1, 35, '2022-04-17', 'EXC'),
 (3, 36, '2022-04-18', 'NAOEXC'),
 (3, 37, '2022-04-18', 'EXC'),
 (5, 38, '2022-04-23', 'EXC'),
 (3, 39, '2022-04-26', 'EXC'),
 (5, 40, '2022-05-06', 'EXC'),
 (4, 41, '2022-05-06', 'EXC'),
 (4, 42, '2022-05-12', 'EXC'),
 (4, 43, '2022-05-13', 'EXC'),
 (5, 44, '2022-05-14', 'EXC'),
 (3, 45, '2022-05-16', 'EXC'),
 (4, 46, '2022-05-17', 'EXC'),
 (4, 47, '2022-05-22', 'NAOEXC'),
 (2, 48, '2022-05-23', 'EXC'),
 (5, 49, '2022-05-25', 'EXC'),
 (5, 50, '2022-05-25', 'EXC'),
 (2, 51, '2022-05-26', 'EXC'),
 (5, 52, '2022-05-30', 'EXC'),
 (5, 53, '2022-06-07', 'EXC'),
 (4, 54, '2022-06-09', 'EXC'),
 (3, 55, '2022-06-14', 'EXC'),
 (2, 56, '2022-06-16', 'EXC'),
 (5, 57, '2022-06-18', 'EXC'),
 (5, 58, '2022-06-24', 'EXC'),
 (5, 59, '2022-06-26', 'EXC'),
 (1, 60, '2022-06-29', 'EXC');
 GO

/*************************************************
INFORMAÇÕES REFERENTES AOS TELEFONES DOS CLIENTES 
**************************************************/

--TelefoneCliente (IdCliente, Telefone)

INSERT INTO TelefoneCliente (IdCLiente, Telefone) VALUES 

 (1, '9107986562'),
 (1, '5399667725'),
 (1, '3302670386'),
 (2, '7546169963'),
 (2, '6238416521'),
 (2, '5851349293'),
 (3, '8404919603'),
 (3, '2502669281'),
 (3, '7189943246'),
 (4, '2482966272'),
 (5, '2249266992'),
 (6, '7861565113'),
 (7, '4839987987'),
 (8, '3854767018'),
 (9, '2583748904'),
 (9, '6846290262'),
 (10, '7151897422'),
 (11, '4765801858'),
 (12, '2616799765'),
 (13, '6038369281'),
 (14, '8195932854'),
 (14, '8589225603'),
 (15, '2332667787'),
 (15, '4668479050'),
 (16, '9169353239'),
 (17, '2155564200'),
 (18, '1195357191'),
 (18, '3577234078'),
 (19, '2032787241'),
 (20, '3874876255'),
 (21, '3071490460'),
 (22, '1845021582'),
 (23, '8762416881'),
 (23, '9138638387'),
 (24, '8451505459'),
 (24, '8451505439'),
 (24, '8458705439'),
 (25, '8451505439'),
 (25, '8451565439'),
 (25, '8121505439'),
 (25, '8451509879');
 GO

/*************************************************
INFORMAÇÕES REFERENTES AOS TELEFONES DAS OFICINAS 
**************************************************/


 --TelefoneOficina (IdOficina, Telefone)

 INSERT INTO TelefoneOficina (IdOficina, Telefone) VALUES 

 (1, '9107357E53'),
 (1, '5399623425'),
 (1, '3341230386'),
 (1, '7546459963'),
 (2, '6456656521'),
 (2, '2534629293'),
 (2, '8642359603'),
 (2, '4123419281'),
 (3, '5454543246'),
 (3, '2523456272'),
 (3, '2249132452'),
 (3, '7152345543'),
 (4, '4823142122'),
 (4, '3854767018'),
 (4, '2412344214'),
 (4, '6845645642'),
 (5, '7155463562'),
 (5, '4743535338'),
 (5, '2624152323'),
 (5, '6523453444'),
 (5, '8112341234');
 GO





 

 
 
 

