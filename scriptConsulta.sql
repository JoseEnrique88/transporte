select a.placa, b.tipo_identificacion,b.identificacion,b.nombre, count(d.conductor_identificacion) as cantidad_conductores
from vehiculo a, empresas b, conductores c,vehiculo_conductores d
where a.identificacion_empresas = b.identificacion
	and b.identificacion = c.identificacion_empresas
	and c.identificacion = d.conductor_identificacion
group by a.placa, b.tipo_identificacion,b.identificacion,b.nombre