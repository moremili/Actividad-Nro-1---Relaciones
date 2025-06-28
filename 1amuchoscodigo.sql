INSERT INTO propietarios (id_propietario, nombre, apellido, direccion) VALUES
(1, ´juan´, ´perez´, ´buenosaires´)
(2, ´mari´, ´rodriguez´, ´lima´)
(3, ´carlos´, ´lopez´, ´santiago´)
(4, ´ana´, ´garcia´, ´bogota´)
(5, ´pedro´, ´martinez´, quito´)

INSERT INTO vehiculos (id_vehiculos, marca, modelo, anio, patente, id_propietario) VALUES
(1, ´toyota´, ´corollo´, ´2015´, ´abc123´, 1)
(2, ´foed´, ´´focus´, ´2018´, ´def456´, 2)
(3, ´honda´, ´civic´, ´2012´, ´ghi789´, 3)
(4, ´volkwagen´, ´golf´, ´2019´, ´jkl012´, 4)
(5, ´nissan´, ´sentra´, ´2016´, ´mno345´, 5)
(1, ´toyota´, ´corollo´, ´2015´, ´abc123´, 2)
(2, ´foed´, ´´focus´, ´2018´, ´def456´, 3)
(3, ´honda´, ´civic´, ´2012´, ´ghi789´, 5)

SELECT
propietarios.nombre,
propietarios.apellido,
propietarios.direccion,
vehiculos.marca,
vehiculos.modelo,
vehiculos.anio,
vehiculos.patente
FROM
propietarios
INNER JOIN
vehiculos ON
propietarios.id_propietarios=
vehiculos.id_propietario;