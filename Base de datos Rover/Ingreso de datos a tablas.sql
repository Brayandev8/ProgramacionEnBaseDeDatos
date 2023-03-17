insert into terreno (id_tipo_terreno,id_cultivo,id_clima) value 
	(001,101,011),
    (002,202,022);
insert into clima (nombre,temporada_inicio,temporada_final,descripcion) value 
	("montañoso","2002-6-8","2011-5-10","Puede aumentar la lluvia y causa daños por vientos de huracan");
insert into simulacion (id_usuario,id_rover,id_terreno,fecha_creacion,tiemp_seg,punto_inicio_x,punto_final_x,punto_inicio_Y,punto_final_Y,distancia) values 
	(001,101,011,"2023-12-3",45.8,24.2,36.8,58.2,94.2,9.82);
insert into estructura (nombre,peso,descripcion) values
	("Convecional", 9.2 ,"Es muy eficaz para terrenos firmes"),
    ("Oruga", 12.5 ,"Es muy eficaz para terrenos blandos");
insert into rueda (nombre, tamaño, peso) values
	("Tipo panal", 10, 2.6),
	("Tipo neumatico ancho", 10, 5.5);
insert into usuario (nombre,edad,id_ocupacion,id_genero,correo) values 
	("Alvaro", '1995-11-22',102,2,"alv@gmail.com"),
    ("Mauricio", '1994-12-08',102,2,"mau@gmail.com"),
    ("Nicolas", '2000-04-30',101,2,"Nico@gmail.com"),
    ("Cristian", '2003-06-05',101,2,"cris@gmail.com");