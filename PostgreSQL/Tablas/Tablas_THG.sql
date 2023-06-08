CREATE TABLE grado_dificultad(
	color varchar(8) PRIMARY KEY NOT NULL,
	descripcion text NOT NULL
);

CREATE TABLE puntuacion(
	calificacion int PRIMARY KEY NOT NULL,
	descripcion text NOT NULL
);

CREATE TYPE name(
	nombre text,
	apellido text,
);

CREATE TABLE persona(
	curp varchar(18) PRIMARY KEY NOT NULL,
	nombre name NOT NULL,
	sexo varchar(9) NOT NULL,
	edad int NOT NULL,
);

CREATE TABLE lider(
	id_lider varchar(4) NOT NULL UNIQUE

) INHERITS (persona);

CREATE TABLE distrito(
	nombre varchar(2) PRIMARY KEY NOT NULL,
	lider_fk varchar(4) NOT NULL,
	especialidad text NOT NULL,
	puestos_trabajo text NOT NULL,
	numero_habitantes int NOT NULL,
	porcentaje_hombres real NOT NULL,
	porcentaje_mujeres real NOT NULL,
	ubicacion text NOT NULL,
	clima text NOT NULL,
	juegos_ganados int NOT NULL,
	--tributos varchar NOT NULL,
	controlado_por_capitolio bool,

	FOREIGN KEY (lider_fk) REFERENCES lider(id_lider)
);

--

CREATE TABLE tributo(
	id_tributo varchar(4) NOT NULL UNIQUE,
	distrito_fk varchar(2) NOT NULL,
	habilidad varchar(50) NOT NULL,

	FOREIGN KEY (distrito_fk) REFERENCES distrito(nombre)

) INHERITS (persona);

CREATE TABLE mentor(
	id_mentor varchar(4) NOT NULL UNIQUE,
	distrito_fk varchar(2) NOT NULL,
	ed_juegos_ganada int NOT NULL,

	FOREIGN KEY (distrito_fk) REFERENCES distrito(nombre)

) INHERITS (persona);

CREATE TABLE vigilante(
	id_vigilante varchar(4) NOT NULL UNIQUE, 
	puesto varchar(30) NOT NULL,

) INHERITS (persona);

CREATE TABLE prueba(
	codigo varchar(4) PRIMARY KEY NOT NULL,
	nombre varchar(30) NOT NULL,
	tipo varchar(20) NOT NULL,
	grado_dificultad_fk varchar(8) NOT NULL,
	--evaluador_fk varchar(4) NOT NULL,
	--vencedor_fk varchar(4) NOT NULL,
	tiempo_empleado time NOT NULL,
	
	FOREIGN KEY (grado_dificultad_fk) REFERENCES grado_dificultad(color)
	--FOREIGN KEY (evaluador_fk) REFERENCES vigilante(num_personal)
	--FOREIGN KEY (vencedor_fk) REFERENCES tributo(id_tributo)
);

CREATE TABLE capitolio(
	--presidente varchar NOT NULL,
	numero_habitantes int NOT NULL,
	porcentaje_hombres real NOT NULL,
	porcentaje_mujeres real NOT NULL,
	ubicacion text NOT NULL,
	clima text NOT NULL,
	lugares_interes text NOT NULL


);

CREATE TABLE jornada(
	codigo_prueba
	id_participante 

	FOREIGN KEY codigo_prueba REFERENCES prueba(codigo)
	FOREIGN KEY id_participante REFERENCES 
);