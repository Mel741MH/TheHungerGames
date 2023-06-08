--Tabla Grado de Dificultad

INSERT INTO grado_dificultad VALUES ('Amarillo','Pruebas de peligro menor. No ponen en riesgo mortal al participante.');
INSERT INTO grado_dificultad VALUES ('Naranja','Pruebas de peligro bajo. Ponen en ligero riesgo al participante.');
INSERT INTO grado_dificultad VALUES ('Rojo','Pruebas de peligro intermedio. Ponen en riesgo considerable al participante.');
INSERT INTO grado_dificultad VALUES ('Negro','Pruebas de peligro alto. Ponen en riesgo mortal al participante.');

--Tabla Puntuación

INSERT INTO puntuacion VALUES (1,'Muy malo');
INSERT INTO puntuacion VALUES (2,'Malo');
INSERT INTO puntuacion VALUES (3,'Muy Deficiente');
INSERT INTO puntuacion VALUES (4,'Deficiente');
INSERT INTO puntuacion VALUES (5,'Insatisfactorio');
INSERT INTO puntuacion VALUES (6,'Aceptable');
INSERT INTO puntuacion VALUES (7,'Satisfactorio');
INSERT INTO puntuacion VALUES (8,'Bueno');
INSERT INTO puntuacion VALUES (9,'Muy bueno');
INSERT INTO puntuacion VALUES (10,'Sobresaliente');
INSERT INTO puntuacion VALUES (11,'Excelente');
INSERT INTO puntuacion VALUES (12,'Excepcional');

--Tabla Líderes

INSERT INTO lider VALUES ('0000000000000000','Coriolanus Snow','Masculino',84,'P000');
INSERT INTO lider VALUES ('0000000000000001','Cassius Heath','Masculino',52,'L001');
INSERT INTO lider VALUES ('0000000000000002','Benicius Scraut','Masculino',64,'L002');
INSERT INTO lider VALUES ('0000000000000003','Patricia Zicker','Femenino',49,'L003');
INSERT INTO lider VALUES ('0000000000000004','Gianiria Luxor','Femenino',36,'L004');
INSERT INTO lider VALUES ('0000000000000005','Laurette Pyrmont','Femenino',48,'L005');
INSERT INTO lider VALUES ('0000000000000006','Grandel Brandestetter','Masculino',71,'L006');
INSERT INTO lider VALUES ('0000000000000007','Julio Sterlingshire','Masculino',58,'L007');
INSERT INTO lider VALUES ('0000000000000008','Closs Bayon','Femenino',45,'L008');
INSERT INTO lider VALUES ('0000000000000009','Dominic Phox','Masculino',66,'L009');
INSERT INTO lider VALUES ('0000000000000010','Artemis Windrunner','Femenino',34,'L010');
INSERT INTO lider VALUES ('0000000000000011','Legume Crathor','Masculino',59,'L011');
INSERT INTO lider VALUES ('0000000000000012','Sawyer Undersee','Masculino',50,'L012');
INSERT INTO lider VALUES ('0000000000000013','Alma Coin','Femenino',62,'L013');

--Tabla Capitolio

INSERT INTO capitolio VALUES ('0000',100000,50.00,50.00,'Región central dentro de Panem, es la sede del gobierno y la élite gobernante.',
	'Clima controlado artificialmente, con temperaturas moderadas y condiciones climáticas agradables durante todo el año.',
	'La Plaza de la Ciudad, El Distrito de la Moda, El Gran Salón, El Jardín de las Rosas, El Centro de Entretenimiento y El Estadio de los Juegos del Hambre.');

--Tabla Distrito

INSERT INTO distrito VALUES ('1', '0001', 'Industria de lujo y productos de alta gama.',
	'Joyería fina, Diseño de moda, Fabricación de productos de lujo y Artesanía de calidad.',
	89000,46.32,53.68,'Región noroeste de Panem.',
	'Clima templado con estaciones bien definidas. Inviernos suaves y veranos cálidos.',11,true);
INSERT INTO distrito VALUES ('2', '0002', 'Industria producción militar y construcción.',
	'Entrenadores militares, Fabricación de armas y equipos de defensa, Ingeniería de fortificaciones y Construcción de infraestructuras defensivas.',
	73000,66.28,33.72,'Región montañosa del sur de Panem.',
	'Clima montañoso con inviernos fríos y veranos frescos.',12,true);
INSERT INTO distrito VALUES ('3', '0003', 'Industria tecnológica y electrónica.',
	'Ingenieros electrónicos, Programadores de computadoras, Técnicos de mantenimiento, Fabricantes de dispositivos electrónicos y Ensambladores.',
	96000,50.12,49.88,'Región este de Panem.',
	'Clima continental con inviernos fríos y veranos calurosos y húmedos.',5,true);
INSERT INTO distrito VALUES ('4', '0004', 'Industria pesquera y marítima.',
	'Pescadores, Trabajadores de embarcaciones, Buzos y Trabajadores de la industria marítima.',
	62000,52.07,47.93,'Zona costera del sureste de Panem.',
	'Clima costero subtropical con inviernos suaves y veranos cálidos y húmedos.',9,true);
INSERT INTO distrito VALUES ('5', '0005', 'Industria energética y tecnológica',
	'Ingenieros de energía, Técnicos de paneles solares y turbinas eólicas, Operadores de plantas de energía y Trabajadores en la industria de baterías.',
	80000,76.21,23.79,'Región central de Panem.',
	'Clima continental seco con veranos calurosos y secos, y inviernos fríos.',6,true);
INSERT INTO distrito VALUES ('6', '0006', 'Industria de Transporte y Logística.',
	'Conductores de trenes y camiones, Pilotos de aviones, Técnicos de mantenimiento de vehículos y Planificadores de logística.',
	81000,60.29,39.71,'Región montañosa de Panem central.',
	'Clima continental templado con inviernos fríos y veranos suaves.',4,true);
INSERT INTO distrito VALUES ('7', '0007', 'Industria maderera.',
	'Leñadores, Trabajadores forestales, Aserradores, Carpinteros y Fabricantes de muebles de madera.',
	91000,56.11,43.89,'Región boscosa en el norte de Panem.',
	'Clima templado con inviernos fríos y veranos suaves y húmedos.',7,true);
INSERT INTO distrito VALUES ('8', '0008', 'Industria textil y de confección.',
	'Tejedores, Costureras, Diseñadores de moda, Fabricantes de prendas de vestir y Trabajadores de la industria textil.',
	89000,40.48,59.52,'Región en el noreste de Panem.',
	'Clima subtropical con inviernos suaves y veranos calurosos y húmedos.',3,true);
INSERT INTO distrito VALUES ('9', '0009', 'Industria de cosecha de cultivos.',
	'Agricultores, Recolectores de cultivos y Trabajadores en la industria agrícola.',
	103000,58.02,41.98,'Región agrícola fértil del sur de Panem.',
	'Clima subtropical con inviernos suaves y veranos calurosos y húmedos.',4,true);
INSERT INTO distrito VALUES ('10', '0010', 'Industria ganadera y de productos cárnicos.',
	'Rancheros, Pastores, Carniceros, Trabajadores en mataderos y Procesadores de carne.',
	92000,52.79,47.21,'Vasta región de tierras de pastoreo en el suroeste de Panem.',
	'Clima semiárido con inviernos suaves y veranos calurosos y secos.',5,true);
INSERT INTO distrito VALUES ('11', '0011', 'Industria agrícola y productora de alimentos.',
	'Agricultores, Trabajadores agrícolas y Trabajadores en la industria alimentaria.',
	87000,61.10,38.90,'Región agrícola en el oeste de Panem.',
	'Clima tropical con estaciones húmedas y secas. Altas temperaturas durante todo el año.',5,true);
INSERT INTO distrito VALUES ('12', '0012', 'Industria minera de carbón y Extractora de recursos naturales',
	'Mineros, Ingenieros Mineros, Trabajadores de túneles y Extracción de minerales.',
	59000,60.29,39.71,'Región montañosa en el centro de Panem.',
	'Clima montañoso con inviernos fríos y nevados, y veranos frescos.',4,true);
INSERT INTO distrito VALUES ('13', '0013', 'Industria de energía nuclear y de armas.',
	'Ingenieros nucleares, Científicos de investigación, Agricultores hidropónicos y Líderes de resistencia.',
	41000,70.98,29.02,'Región subterránea secreta en ubicación desconocida del continente de Panem.',
	'Clima controlado artificialmente, clima templado constante.',0,false);

--Tabla Mentores

INSERT INTO mentor VALUES ('0000000000000014','Auroora Dimond', 'Femenino', 56, 'M001','1', 67);
INSERT INTO mentor VALUES ('0000000000000015','Chester Capin', 'Masculino', 35, 'M002','2', 73);
INSERT INTO mentor VALUES ('0000000000000016','Sebastien Lexa', 'Masculino', 51, 'M003','3', 54);
INSERT INTO mentor VALUES ('0000000000000017','Lethia Brosh', 'Femenino', 64, 'M004','4', 33);
INSERT INTO mentor VALUES ('0000000000000018','Lindie Rayson', 'Femenino', 52, 'M005','5', 59);
INSERT INTO mentor VALUES ('0000000000000019','Beltran Reder', 'Masculino', 47, 'M006','6', 57);
INSERT INTO mentor VALUES ('0000000000000020','Liza Barthel', 'Femenino', 23, 'M007','7', 72);
INSERT INTO mentor VALUES ('0000000000000021','Andrus Lenchenko', 'Masculino', 40, 'M008','8', 58);
INSERT INTO mentor VALUES ('0000000000000022','Roderich Hilary', 'Masculino', 68, 'M009','9', 42);
INSERT INTO mentor VALUES ('0000000000000023','Hardis Dumblton', 'Masculino', 56, 'M010','10', 68);
INSERT INTO mentor VALUES ('0000000000000024','Sky Pretious', 'Femenino', 43, 'M011','11', 45);
INSERT INTO mentor VALUES ('0000000000000025','Haymicht Abernathy', 'Masculino', 40, 'M012','12', 50);

--Tabla Tributo

INSERT INTO tributo VALUES ('0000000000000100','Glimmer Von Luxe', 'Femenino',17,'T011','1','Espada',
							10,'M001',true);
INSERT INTO tributo VALUES ('0000000000000101','Marvel Hawthorne', 'Masculino',17,'T012','1','Daga',
							9,'M001',true);
INSERT INTO tributo VALUES ('0000000000000102','Clove Sinclair', 'Femenino',15,'T021','2','Hacha',
							10,'M002',true);
INSERT INTO tributo VALUES ('0000000000000103','Cato Sterling', 'Masculino',18,'T022','2','Guadaña',
							10,'M002',true);
INSERT INTO tributo VALUES ('0000000000000104','Lucy Montrose', 'Femenino',13,'T031','3','Lanza',
							6,'M003',true);
INSERT INTO tributo VALUES ('0000000000000105','Ian Aurelius', 'Masculino',14,'T032','3','Minas',
							7,'M003',true);
INSERT INTO tributo VALUES ('0000000000000106','Tara Macken', 'Femenino',16,'T041','4','Espada con diente',
							6,'M004',true);
INSERT INTO tributo VALUES ('0000000000000107','Breck Rosenthal', 'Masculino',12,'T042','4','Puñal',
							5,'M004',true);
INSERT INTO tributo VALUES ('0000000000000108','Foxface Blackwood', 'Femenino',15,'T051','5','Cuchillo',
							8,'M005',true);
INSERT INTO tributo VALUES ('0000000000000109','Alexander Mark', 'Masculino',15,'T052','5','Hoz',
							7,'M005',true);
INSERT INTO tributo VALUES ('0000000000000110','Kara Petersen', 'Femenino',15,'T061','6','Arco y Flecha',
							7,'M006',true);
INSERT INTO tributo VALUES ('0000000000000111','Ashton Moio', 'Masculino',16,'T062','6','Combate cuerpo a cuerpo',
							7,'M006',true);
INSERT INTO tributo VALUES ('0000000000000112','Leigha Hancock', 'Femenino',17,'T071','7','Lanzar cuchillos',
							6,'M007',true);
INSERT INTO tributo VALUES ('0000000000000113','Sam Lee', 'Masculino',17,'T072','7','Machete',
							9,'M007',true);
INSERT INTO tributo VALUES ('0000000000000114','Mackenzie Lintz', 'Femenino',15,'T081','8','Lanza',
							6,'M008',true);
INSERT INTO tributo VALUES ('0000000000000115','Samuel Tan', 'Masculino',14,'T082','8','Cuchillo',
							7,'M008',true);
INSERT INTO tributo VALUES ('0000000000000116','Annie Thurman', 'Femenino',14,'T091','9','Espada',
							6,'M009',true);
INSERT INTO tributo VALUES ('0000000000000117','Imanol Freeman', 'Masculino',14,'T092','9','Hacha',
							5,'M009',true);
INSERT INTO tributo VALUES ('0000000000000118','Dakota Hood', 'Femenino',16,'T101','10','Daga',
							5,'M010',true);
INSERT INTO tributo VALUES ('0000000000000119','Jeremy Marinas', 'Masculino',18,'T102','10','Fuerza Física',
							7,'M010',true);
INSERT INTO tributo VALUES ('0000000000000120','Rue Holmes', 'Femenino',12,'T111','11','Honda y Piedra',
							7,'M011',true);
INSERT INTO tributo VALUES ('0000000000000121','Tresh Oken', 'Masculino',18,'T112','11','Fuerza Bruta',
							7,'M011',true);
INSERT INTO tributo VALUES ('0000000000000122','Katniss Everdeen', 'Femenino',16,'T121','12','Arco y Flecha',
							11,'M012',true);
INSERT INTO tributo VALUES ('0000000000000123','Peeta Mellark', 'Masculino',16,'T122','12','Camuflaje',
							8,'M012',true);

--Tabla Vigilante

INSERT INTO vigilante VALUES ('0000000000000025','Alejandro Lynthal', 'Masculino', 50,'V001','Seguridad',true);
INSERT INTO vigilante VALUES ('0000000000000026','Renie Kasting', 'Masculino', 23,'V002','Militar',true);
INSERT INTO vigilante VALUES ('0000000000000027','Bobbie Trorey', 'Masculino', 34,'V003','Guardia',true);
INSERT INTO vigilante VALUES ('0000000000000028','Dwight Scholfield', 'Masculino', 45,'V004','Seguridad',true);
INSERT INTO vigilante VALUES ('0000000000000029','Selig Flute', 'Masculino', 39,'V005','Militar',true);
INSERT INTO vigilante VALUES ('0000000000000030','Hervey Cheine', 'Masculino', 28,'V006','Guardia',true);

--Tabla Prueba

INSERT INTO prueba VALUES ('PR01','Manejo de armas','2023-04-03','Combate','Negro','V001','2:32:51');
INSERT INTO prueba VALUES ('PR02','Escalada','2023-04-09','Supervivencia','Amarillo','V002','0:57:49');
INSERT INTO prueba VALUES ('PR03','Camuflaje','2023-04-15','Supervivencia','Amarillo','V003','4:08:17');
INSERT INTO prueba VALUES ('PR04','Caza','2023-04-27','Supervivencia','Rojo','V004','6:20:24');
INSERT INTO prueba VALUES ('PR05','Tiro con arco','2023-05-01','Combate','Naranja','V005','3:16:01');
INSERT INTO prueba VALUES ('PR06','Combate cuerpo a cuerpo','2023-05-30','Combate','Naranja','V006','1:18:04');

--Tabla Participante

INSERT INTO participante VALUES ('PR01','T011');
INSERT INTO participante VALUES ('PR01','T012');
INSERT INTO participante VALUES ('PR01','T021');
INSERT INTO participante VALUES ('PR01','T022');
INSERT INTO participante VALUES ('PR02','T031');
INSERT INTO participante VALUES ('PR02','T032');
INSERT INTO participante VALUES ('PR02','T041');
INSERT INTO participante VALUES ('PR02','T042');
INSERT INTO participante VALUES ('PR03','T051');
INSERT INTO participante VALUES ('PR03','T052');
INSERT INTO participante VALUES ('PR03','T061');
INSERT INTO participante VALUES ('PR03','T062');
INSERT INTO participante VALUES ('PR04','T071');
INSERT INTO participante VALUES ('PR04','T072');
INSERT INTO participante VALUES ('PR04','T081');
INSERT INTO participante VALUES ('PR04','T082');
INSERT INTO participante VALUES ('PR05','T091');
INSERT INTO participante VALUES ('PR05','T092');
INSERT INTO participante VALUES ('PR05','T101');
INSERT INTO participante VALUES ('PR05','T102');
INSERT INTO participante VALUES ('PR06','T111');
INSERT INTO participante VALUES ('PR06','T112');
INSERT INTO participante VALUES ('PR06','T121');
INSERT INTO participante VALUES ('PR06','T122');
