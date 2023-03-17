-- Codigo de la funcion de Cristian --
delimiter //
CREATE FUNCTION contar_terrenos_por_clima(id INT, idclima int)
RETURNS INT
deterministic
BEGIN
  DECLARE terrenos INT;
  SELECT COUNT(id) INTO terrenos
    group by (idclima);
  RETURN terrenos;
END//
-- Codigo de la funcion de Jhonatan --
delimiter //
CREATE FUNCTION dias_duracion (inicio date, fin date) returns int
deterministic
BEGIN
	declare dias int;
    select timestampdiff(day,inicio,fin) into dias;
    RETURN dias;
END
//
-- Codigo de la funcion de Alejandro --
delimiter //
CREATE FUNCTION distancia(x1 float, x2 float, y1 float, y2 float) RETURNS float
    DETERMINISTIC
BEGIN
	declare dis float;
    select sqrt(power(x2-x1,2)+power(y2-y1,2)) into dis;
    RETURN dis;
END
//
-- Codigo de la funcion de Brayan --
delimiter //
CREATE FUNCTION velocidad (d float, t float) returns float
deterministic
BEGIN
	declare vel float;
    select d/t into vel;
    RETURN vel;
END
//
-- Codigo de la funcion de Deiver --
DELIMITER //
CREATE FUNCTION calcularPesoRover(id_estructura INT, id_rueda INT) RETURNS float
    DETERMINISTIC
BEGIN
	DECLARE pesoE, pesoR, pesoF FLOAT;
    SET pesoE = (SELECT peso FROM estructura WHERE id = id_estructura);
    SET pesoR = (SELECT peso FROM rueda WHERE id = id_rueda);
	SET pesoF = ROUND(pesoE + pesoR,2);
    RETURN pesoF;
END;
//