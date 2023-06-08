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
	--activo boolean NOT NULL,

) INHERITS (persona);

CREATE TABLE capitolio(
	presidente_fk varchar(4) NOT NULL,
	numero_habitantes int NOT NULL,
	porcentaje_hombres real NOT NULL,
	porcentaje_mujeres real NOT NULL,
	ubicacion text NOT NULL,
	clima text NOT NULL,
	lugares_interes text NOT NULL,

	FOREIGN KEY (presidente_fk) REFERENCES lider(id_lider)
);

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
CREATE TABLE mentor(
	id_mentor varchar(4) NOT NULL UNIQUE,
	distrito_fk varchar(2) NOT NULL,
	ed_juegos_ganada int NOT NULL, --Cambiar a varchar(3) para '01°'
	--activo boolean NOT NULL,

	FOREIGN KEY (distrito_fk) REFERENCES distrito(nombre)

) INHERITS (persona);

CREATE TABLE tributo(
	id_tributo varchar(4) NOT NULL UNIQUE,
	distrito_fk varchar(2) NOT NULL,
	habilidad varchar(50) NOT NULL,
	punt_espectaculo int NOT NULL,
	mentor_fk varchar(4) NOT NULL,
	activo boolean NOT NULL,

	FOREIGN KEY (distrito_fk) REFERENCES distrito(nombre),
	FOREIGN KEY (mentor_fk) REFERENCES mentor(id_mentor)

) INHERITS (persona);


CREATE TABLE vigilante(
	id_vigilante varchar(4) NOT NULL UNIQUE, 
	puesto varchar(30) NOT NULL,
	activo boolean NOT NULL

) INHERITS (persona);

CREATE TABLE prueba(
	codigo varchar(4) PRIMARY KEY NOT NULL,
	nombre varchar(30) NOT NULL,
	tipo varchar(20) NOT NULL,
	grado_dificultad_fk varchar(8) NOT NULL,
	fecha date NOT NULL, --Checar orden de los inserts
	evaluador_fk varchar(4) NOT NULL,
	--vencedor_fk varchar(4) NOT NULL,
	tiempo_empleado time NOT NULL,
	
	FOREIGN KEY (grado_dificultad_fk) REFERENCES grado_dificultad(color),
	FOREIGN KEY (evaluador_fk) REFERENCES vigilante(id_vigilante)
	--FOREIGN KEY (vencedor_fk) REFERENCES tributo(id_tributo)
);

--Participante es mi tabla relación entre Tributo-Prueba
CREATE TABLE participante(
	codigo_prueba varchar(4) NOT NULL,
	id_participante varchar(4) NOT NULL,

	FOREIGN KEY (codigo_prueba) REFERENCES prueba(codigo),
	FOREIGN KEY (id_participante) REFERENCES tributo(id_tributo)
);