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

INSERT INTO lider VALUES ('0000000000000000','Coriolanus Snow','Masculino',84,'0000');
INSERT INTO lider VALUES ('0000000000000001','Cassius Heath','Masculino',52,'0001');
INSERT INTO lider VALUES ('0000000000000002','Benicius Scraut','Masculino',64,'0002');
INSERT INTO lider VALUES ('0000000000000003','Patricia Zicker','Femenino',49,'0003');
INSERT INTO lider VALUES ('0000000000000004','Gianiria Luxor','Femenino',36,'0004');
INSERT INTO lider VALUES ('0000000000000005','Laurette Pyrmont','Femenino',48,'0005');
INSERT INTO lider VALUES ('0000000000000006','Grandel Brandestetter','Masculino',71,'0006');
INSERT INTO lider VALUES ('0000000000000007','Julio Sterlingshire','Masculino',58,'0007');
INSERT INTO lider VALUES ('0000000000000008','Closs Bayon','Femenino',45,'0008');
INSERT INTO lider VALUES ('0000000000000009','Dominic Phox','Masculino',66,'0009');
INSERT INTO lider VALUES ('0000000000000010','Artemis Windrunner','Femenino',34,'0010');
INSERT INTO lider VALUES ('0000000000000011','Legume Crathor','Masculino',59,'0011');
INSERT INTO lider VALUES ('0000000000000012','Sawyer Undersee','Masculino',50,'0012');
INSERT INTO lider VALUES ('0000000000000013','Alma Coin','Femenino',62,'0013');

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
