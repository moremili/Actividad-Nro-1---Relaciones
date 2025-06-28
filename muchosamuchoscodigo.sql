INSERT INTO propietarios (id_propietario, nombre, apellido, direccion) VALUES
(1, ´juan´, ´perez´, ´buenosaires´)
(2, ´mari´, ´rodriguez´, ´lima´)
(3, ´carlos´, ´lopez´, ´santiago´)
(4, ´ana´, ´garcia´, ´bogota´)
(5, ´pedro´, ´martinez´, quito´);

INSERT INTO vehiculos (id_vehiculos, marca, modelo, anio, patente) VALUES
(1, ´toyota´, ´corollo´, ´2015´, ´abc123´)
(1, ´foed´, ´´focus´, ´2018´, ´def456´)
(3, ´honda´, ´civic´, ´2012´, ´ghi789´)
(4, ´volkwagen´, ´golf´, ´2019´, ´jkl012´)
(5, ´nissan´, ´sentra´, ´2016´, ´mno345´)
(6, ´renault´, ´clio´, ´2013´, ´pqr678´);

INSERT INTO relacion(id_prop, id_veh) VALUES
(4, 2)
(3, 3)
(2, 4)
(1, 5)
(3, 4)
(5, 6)
(6, 1)
(4, 6);

SELECT 
    propietarios.nombre,
    propietarios.apellido,
	propietarios.direccion,
    Vehiculos.marca,
    Vehiculos.modelo,
    Vehiculos.anio
	vehiculos.patente
FROM 
    relacion
INNER JOIN 
    propietarios ON relacion.if_prop = propietarios.id_propietario
INNER JOIN 
    vehiculos ON relacion.id_veh = vehiculos.id_vehiculo;