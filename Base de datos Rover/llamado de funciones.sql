select contar_terrenos_por_clima(id,id_clima) as terrenos_por_clima
from terreno
-- llamado funcion distancia y velocidad --
select distancia()  distancia, velocidad()  velocidad, dias_duracion() dias_duracion, dias_duracion() dias_duracion