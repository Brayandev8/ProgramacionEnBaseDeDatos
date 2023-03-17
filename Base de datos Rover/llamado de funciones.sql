select contar_terrenos_por_clima(id,id_clima) as terrenos_por_clima
from terreno
select dias_duracion(temporada_inicio,temporada_final) as dias_duracion
from clima
select distancia(punto_inicio_x,punto_final_x,punto_inicio_Y,punto_final_Y) as distancia
from simulacion 