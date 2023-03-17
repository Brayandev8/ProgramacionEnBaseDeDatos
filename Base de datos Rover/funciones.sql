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