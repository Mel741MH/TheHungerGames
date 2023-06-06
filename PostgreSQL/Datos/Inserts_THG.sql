insert into departamento values ('Alquimia', 1);
insert into departamento values ('Militar', 2);

insert into empleado values ('E11',row('Roy','Mustang','Hughes'),'1977-04-12', 'H', 'Dir Uno', 16300.96,NULL, 1, 'Leer');
insert into empleado values ('E12',row('Eduardo','Elric','Hohenheim'),'1990-04-12', 'H', 'Dir Dos', 12300.56,'E11', 1, 'Dibujar');
insert into empleado values ('E13',row('Alfonso','Elric','Hohenheim'),'1992-05-23', 'H', 'Dir Tres', 5000.25, 'E12', 1, 'Videojuegos');

insert into emp_dpto values ('E12', 1, '2015-06-17');
insert into emp_dpto values ('E13', 2, '2017-03-27');

insert into lugares values (1, 'Lugar Uno');
insert into lugares values (2, 'Lugar Dos');

insert into proyecto values (1, 'Proy Uno', 'Lugar Uno',1);
insert into proyecto values (2, 'Proy Dos', 'Lugar Dos',2);

insert into emp_proy values ('E12', 1, 15.4);
insert into emp_proy values ('E13', 2, 20.4);

insert into dependientes values ('E12', row('Winri','Rockbell','Elric'), 'M', '1991-01-23', 'Conyugue');
insert into dependientes values ('E13', row('Trisha','Elric','Curtis'), 'M', '1970-12-03', 'Madre');