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

INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider) 
VALUES ('SNOC421224CAP','Coriolanus Snow','Masculino',84,true,'P000');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('HEAC710412D01','Cassius Heath','Masculino',52,true,'L001');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('SCRB590829D02','Benicius Scraut','Masculino',64,true,'L002');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('ZICP740117D03','Patricia Zicker','Femenino',49,true,'L003');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('LUXG871128D04','Gianiria Luxor','Femenino',36,true,'L004');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('PYRL750902D05','Laurette Pyrmont','Femenino',48,true,'L005');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('GRAB521004D06','Grandel Brandestetter','Masculino',71,true,'L006');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('STEJ650616D07','Julio Sterlingshire','Masculino',58,true,'L007');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('BAYC780511D08','Closs Bayon','Femenino',45,true,'L008');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('PHOD570730D09','Dominic Phox','Masculino',66,true,'L009');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('WINA890214D10','Artemis Windrunner','Femenino',34,true,'L010');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('CRAL640925D11','Legume Crathor','Masculino',59,true,'L011');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('UNDS731204D12','Sawyer Undersee','Masculino',50,true,'L012');
INSERT INTO lider (curp, nombre,sexo,edad,activo,id_lider)
VALUES ('COIA610929D13','Alma Coin','Femenino',62,true,'L013');

--Tabla Capitolio

INSERT INTO capitolio VALUES ('P000',100000,50.00,50.00,'Región central dentro de Panem, es la sede del gobierno y la élite gobernante.',
	'Clima controlado artificialmente, con temperaturas moderadas y condiciones climáticas agradables durante todo el año.',
	'La Plaza de la Ciudad, El Distrito de la Moda, El Gran Salón, El Jardín de las Rosas, El Centro de Entretenimiento y El Estadio de los Juegos del Hambre.');

--Tabla Distrito

INSERT INTO distrito VALUES ('1', 'L001', 'Industria de lujo y productos de alta gama.',
	'Joyería fina, Diseño de moda, Fabricación de productos de lujo y Artesanía de calidad.',
	89000,46.32,53.68,'Región noroeste de Panem.',
	'Clima templado con estaciones bien definidas. Inviernos suaves y veranos cálidos.',11,true);
INSERT INTO distrito VALUES ('2', 'L002', 'Industria producción militar y construcción.',
	'Entrenadores militares, Fabricación de armas y equipos de defensa, Ingeniería de fortificaciones y Construcción de infraestructuras defensivas.',
	73000,66.28,33.72,'Región montañosa del sur de Panem.',
	'Clima montañoso con inviernos fríos y veranos frescos.',12,true);
INSERT INTO distrito VALUES ('3', 'L003', 'Industria tecnológica y electrónica.',
	'Ingenieros electrónicos, Programadores de computadoras, Técnicos de mantenimiento, Fabricantes de dispositivos electrónicos y Ensambladores.',
	96000,50.12,49.88,'Región este de Panem.',
	'Clima continental con inviernos fríos y veranos calurosos y húmedos.',5,true);
INSERT INTO distrito VALUES ('4', 'L004', 'Industria pesquera y marítima.',
	'Pescadores, Trabajadores de embarcaciones, Buzos y Trabajadores de la industria marítima.',
	62000,52.07,47.93,'Zona costera del sureste de Panem.',
	'Clima costero subtropical con inviernos suaves y veranos cálidos y húmedos.',9,true);
INSERT INTO distrito VALUES ('5', 'L005', 'Industria energética y tecnológica',
	'Ingenieros de energía, Técnicos de paneles solares y turbinas eólicas, Operadores de plantas de energía y Trabajadores en la industria de baterías.',
	80000,76.21,23.79,'Región central de Panem.',
	'Clima continental seco con veranos calurosos y secos, y inviernos fríos.',6,true);
INSERT INTO distrito VALUES ('6', 'L006', 'Industria de Transporte y Logística.',
	'Conductores de trenes y camiones, Pilotos de aviones, Técnicos de mantenimiento de vehículos y Planificadores de logística.',
	81000,60.29,39.71,'Región montañosa de Panem central.',
	'Clima continental templado con inviernos fríos y veranos suaves.',4,true);
INSERT INTO distrito VALUES ('7', 'L007', 'Industria maderera.',
	'Leñadores, Trabajadores forestales, Aserradores, Carpinteros y Fabricantes de muebles de madera.',
	91000,56.11,43.89,'Región boscosa en el norte de Panem.',
	'Clima templado con inviernos fríos y veranos suaves y húmedos.',7,true);
INSERT INTO distrito VALUES ('8', 'L008', 'Industria textil y de confección.',
	'Tejedores, Costureras, Diseñadores de moda, Fabricantes de prendas de vestir y Trabajadores de la industria textil.',
	89000,40.48,59.52,'Región en el noreste de Panem.',
	'Clima subtropical con inviernos suaves y veranos calurosos y húmedos.',3,true);
INSERT INTO distrito VALUES ('9', 'L009', 'Industria de cosecha de cultivos.',
	'Agricultores, Recolectores de cultivos y Trabajadores en la industria agrícola.',
	103000,58.02,41.98,'Región agrícola fértil del sur de Panem.',
	'Clima subtropical con inviernos suaves y veranos calurosos y húmedos.',4,true);
INSERT INTO distrito VALUES ('10', 'L010', 'Industria ganadera y de productos cárnicos.',
	'Rancheros, Pastores, Carniceros, Trabajadores en mataderos y Procesadores de carne.',
	92000,52.79,47.21,'Vasta región de tierras de pastoreo en el suroeste de Panem.',
	'Clima semiárido con inviernos suaves y veranos calurosos y secos.',5,true);
INSERT INTO distrito VALUES ('11', 'L011', 'Industria agrícola y productora de alimentos.',
	'Agricultores, Trabajadores agrícolas y Trabajadores en la industria alimentaria.',
	87000,61.10,38.90,'Región agrícola en el oeste de Panem.',
	'Clima tropical con estaciones húmedas y secas. Altas temperaturas durante todo el año.',5,true);
INSERT INTO distrito VALUES ('12', 'L012', 'Industria minera de carbón y Extractora de recursos naturales',
	'Mineros, Ingenieros Mineros, Trabajadores de túneles y Extracción de minerales.',
	59000,60.29,39.71,'Región montañosa en el centro de Panem.',
	'Clima montañoso con inviernos fríos y nevados, y veranos frescos.',4,true);
INSERT INTO distrito VALUES ('13', 'L013', 'Industria de energía nuclear y de armas.',
	'Ingenieros nucleares, Científicos de investigación, Agricultores hidropónicos y Líderes de resistencia.',
	41000,70.98,29.02,'Región subterránea secreta en ubicación desconocida del continente de Panem.',
	'Clima controlado artificialmente, clima templado constante.',0,false);

--Agregando datos a las nuevas columnas (Tributo_F_FK y Tributo_F_FK)

UPDATE distrito SET tributo_f_fk = 'T011' WHERE nombre = '1';
UPDATE distrito SET tributo_m_fk = 'T012' WHERE nombre = '1';
UPDATE distrito SET tributo_f_fk = 'T021' WHERE nombre = '2';
UPDATE distrito SET tributo_m_fk = 'T022' WHERE nombre = '2';
UPDATE distrito SET tributo_f_fk = 'T031' WHERE nombre = '3';
UPDATE distrito SET tributo_m_fk = 'T032' WHERE nombre = '3';
UPDATE distrito SET tributo_f_fk = 'T041' WHERE nombre = '4';
UPDATE distrito SET tributo_m_fk = 'T042' WHERE nombre = '4';
UPDATE distrito SET tributo_f_fk = 'T051' WHERE nombre = '5';
UPDATE distrito SET tributo_m_fk = 'T052' WHERE nombre = '5';
UPDATE distrito SET tributo_f_fk = 'T061' WHERE nombre = '6';
UPDATE distrito SET tributo_m_fk = 'T062' WHERE nombre = '6';
UPDATE distrito SET tributo_f_fk = 'T071' WHERE nombre = '7';
UPDATE distrito SET tributo_m_fk = 'T072' WHERE nombre = '7';
UPDATE distrito SET tributo_f_fk = 'T081' WHERE nombre = '8';
UPDATE distrito SET tributo_m_fk = 'T082' WHERE nombre = '8';
UPDATE distrito SET tributo_f_fk = 'T091' WHERE nombre = '9';
UPDATE distrito SET tributo_m_fk = 'T092' WHERE nombre = '9';
UPDATE distrito SET tributo_f_fk = 'T101' WHERE nombre = '10';
UPDATE distrito SET tributo_m_fk = 'T102' WHERE nombre = '10';
UPDATE distrito SET tributo_f_fk = 'T111' WHERE nombre = '11';
UPDATE distrito SET tributo_m_fk = 'T112' WHERE nombre = '11';
UPDATE distrito SET tributo_f_fk = 'T121' WHERE nombre = '12';
UPDATE distrito SET tributo_m_fk = 'T122' WHERE nombre = '12';

--Tabla Mentores

INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('DIMA670729D01','Auroora Dimond', 'Femenino', 56, true,'M001','1', '67°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('CAPC880217D02','Chester Capin', 'Masculino', 35, true, 'M002','2', '73°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('LEXS720131D03','Sebastien Lexa', 'Masculino', 51, true,'M003','3', '54°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('BROL590827D04','Lethia Brosh', 'Femenino', 64, true,'M004','4', '33°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('RAYL710531D05','Lindie Rayson', 'Femenino', 52, true, 'M005','5', '59°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('REDB760228D06','Beltran Reder', 'Masculino', 47, true, 'M006','6', '57°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('BARL000110D07','Liza Barthel', 'Femenino', 23, true, 'M007','7', '72°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('LENA831024D08','Andrus Lenchenko', 'Masculino', 40, true,'M008','8', '58°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('HILR550630D09','Roderich Hilary', 'Masculino', 68, true, 'M009','9', '42°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('DUMH670419D10','Hardis Dumblton', 'Masculino', 56, true, 'M010','10', '68°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('PRES800329D11','Sky Pretious', 'Femenino', 43, true,'M011','11', '45°');
INSERT INTO mentor (curp, nombre,sexo,edad,activo,id_mentor,distrito_fk,ed_juegos_ganada)
VALUES ('ABEH831201D12','Haymicht Abernathy', 'Masculino', 40, true,'M012','12', '50°');

--Tabla Tributo

INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('VONG060214D01','Glimmer VonLuxe', 'Femenino',17,true,'T011','1','Espada',10,'M001');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('HAWM060325D01','Marvel Hawthorne', 'Masculino',17,true,'T012','1','Daga',9,'M001');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('SINC081009D02','Clove Sinclair', 'Femenino',15,true,'T021','2','Hacha',10,'M002');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('STEC050519D02','Cato Sterling', 'Masculino',18,true,'T022','2','Guadaña',10,'M002');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MONL100308D03','Lucy Montrose', 'Femenino',13,true,'T031','3','Lanza',6,'M003');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('AURI090119D03','Ian Aurelius', 'Masculino',14,true,'T032','3','Minas',7,'M003');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MACI070929D04','Tara Macken', 'Femenino',16,true,'T041','4','Espada con diente',6,'M004');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('ROSB111105D04','Breck Rosenthal', 'Masculino',12,true,'T042','4','Puñal',5,'M004');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('BLAF080930D05','Foxface Blackwood', 'Femenino',15,true,'T051','5','Cuchillo',8,'M005');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MARA080910D05','Alexander Mark', 'Masculino',15,true,'T052','5','Hoz',7,'M005');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('PETK081201D06','Kara Petersen', 'Femenino',15,true,'T061','6','Arco y Flecha',7,'M006');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MOIA071031D06','Ashton Moio', 'Masculino',16,true,'T062','6','Combate cuerpo a cuerpo',7,'M006');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('HANL060627D07','Leigha Hancock', 'Femenino',17,true,'T071','7','Lanzar cuchillos',6,'M007');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('LEES060207D07','Sam Lee', 'Masculino',17,true,'T072','7','Machete',9,'M007');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('LINM080802D08','Mackenzie Lintz', 'Femenino',15,true,'T081','8','Lanza',6,'M008');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('TANS091121D08','Samuel Tan', 'Masculino',14,true,'T082','8','Cuchillo',7,'M008');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('THUA090503D09','Annie Thurman', 'Femenino',14,true,'T091','9','Espada',6,'M009');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('FREI091001D09','Imanol Freeman', 'Masculino',14,true,'T092','9','Hacha',5,'M009');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('HOOD071014D10','Dakota Hood', 'Femenino',16,true,'T101','10','Daga',5,'M010');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MARJ050729D10','Jeremy Marinas', 'Masculino',18,true,'T102','10','Fuerza Física',7,'M010');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('HOLR111204D11','Rue Holmes', 'Femenino',12,true,'T111','11','Honda y Piedra',7,'M011');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('OKET050612D11','Tresh Oken', 'Masculino',18,true,'T112','11','Fuerza Bruta',7,'M011');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('EVEK070508D12','Katniss Everdeen', 'Femenino',16,true,'T121','12','Arco y Flecha',11,'M012');
INSERT INTO tributo (curp, nombre,sexo,edad,activo,id_tributo,distrito_fk,habilidad,punt_espectaculo_fk,mentor_fk)
VALUES ('MELP070830D12','Peeta Mellark', 'Masculino',16,true,'T122','12','Camuflaje',8,'M012');

--Tabla Vigilante

INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto) 
VALUES ('LYNA700319V01','Alejandro Lynthal', 'Masculino', 50,true,'V001','Seguridad');
INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto)
VALUES ('KASR001030V02','Renie Kasting', 'Masculino', 23,true,'V002','Militar');
INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto)
VALUES ('TROB890119V03','Bobbie Trorey', 'Masculino', 34,true,'V003','Guardia');
INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto)
VALUES ('CRAS781203V04','Seneca Crane', 'Masculino', 45,true,'V004','Seguridad');
INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto)
VALUES ('HEAP740507V05','Plutarch Heavensbee', 'Masculino', 49,true,'V005','Militar');
INSERT INTO vigilante (curp, nombre,sexo,edad,activo,id_vigilante,puesto)
VALUES ('CHEH950428V06','Hervey Cheine', 'Masculino', 28,true,'V006','Guardia');

--Tabla Prueba

INSERT INTO prueba VALUES ('PR01','Manejo de armas','Combate','Negro','2023-04-03','V001','2:32:51');
INSERT INTO prueba VALUES ('PR02','Escalada','Supervivencia','Amarillo','2023-04-09','V002','0:57:49');
INSERT INTO prueba VALUES ('PR03','Camuflaje','Supervivencia','Amarillo','2023-04-15','V003','4:08:17');
INSERT INTO prueba VALUES ('PR04','Caza','Supervivencia','Rojo','2023-04-27','V004','6:20:24','T081');
INSERT INTO prueba VALUES ('PR05','Tiro con arco','Combate','Naranja','2023-05-01','V005','3:16:01');
INSERT INTO prueba VALUES ('PR06','Combate cuerpo a cuerpo','Combate','Naranja','2023-05-30','V006','1:18:04');

--Agregando datos a la nueva columna (Vencedor)
UPDATE prueba SET vencedor_fk = 'T012' WHERE codigo = 'PR01';
UPDATE prueba SET vencedor_fk = 'T041' WHERE codigo = 'PR02';
UPDATE prueba SET vencedor_fk = 'T062' WHERE codigo = 'PR03';
UPDATE prueba SET vencedor_fk = 'T081' WHERE codigo = 'PR04';
UPDATE prueba SET vencedor_fk = 'T101' WHERE codigo = 'PR05';
UPDATE prueba SET vencedor_fk = 'T122' WHERE codigo = 'PR06';

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
