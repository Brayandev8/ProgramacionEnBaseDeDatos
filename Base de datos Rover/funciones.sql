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