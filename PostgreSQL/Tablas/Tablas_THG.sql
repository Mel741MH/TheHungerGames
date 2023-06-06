CREATE TABLE distrito AS(
	nombre char(2) NOT NULL,
	--lider char NOT NULL,
	especialidad text NOT NULL,
	puestos_trabajo text NOT NULL,
	numero_habitantes int NOT NULL,
	porcentaje_hombres real NOT NULL,
	porcentaje_mujeres real NOT NULL,
	ubicacion text NOT NULL,
	clima text NOT NULL,
	juegos_ganados int NOT NULL,
	--tributos char NOT NULL,
	controlado_por_capitolio bool,

	CONSTRAINT pk_nombre PRIMARY KEY (nombre)
);

CREATE TABLE capitolio AS(
	--presidente char NOT NULL,
	numero_habitantes int NOT NULL,
	porcentaje_hombres real NOT NULL,
	porcentaje_mujeres real NOT NULL,
	ubicacion text NOT NULL,
	clima text NOT NULL,
	lugares_interes text NOT NULL
);

CREATE TYPE name AS(
	nombres text,
	apaterno text,
	amaterno text
);

CREATE TABLE persona AS(
	curp char(18) NOT NULL,
	nombre name NOT NULL,
	sexo char(9) NOT NULL,
	edad int NOT NULL,

	CONSTRAINT pk_curp PRIMARY KEY (curp)
);

CREATE TABLE tributo AS(
	distrito_fk char(2) NOT NULL,
	habilidad char(50) NOT NULL,
	--sexo char(9) NOT NULL,
	--edad int NOT NULL,

	FOREIGN KEY (distrito_fk) REFERENCES distrito(nombre)

) INHERITS (persona);

CREATE TABLE mentor AS(
	distrito_fk char(2) NOT NULL,
	ed_juegos_ganada int NOT NULL,
	--tributos_fk char(9) NOT NULL,

	CONSTRAINT pk_curp PRIMARY KEY (curp),
	--FOREIGN KEY (tributos_fk) REFERENCES tributo(nombre) WHERE tributo(distrito_fk) = mentor(distrito_fk)

) INHERITS (persona);

CREATE TABLE vigilante AS(
	puesto char(30) NOT NULL,

) INHERITS (persona);