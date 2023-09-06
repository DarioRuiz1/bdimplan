## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_sesion_cabildo`, `ds_sesion_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria'),
(null, 'Sesion solemne');

-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `t_perpetuidad` (`clave`, `nombre`, `ape_pat`, `ape_mat`, `tipo`) VALUES 
('S2P25', 'Jose', 'Ruiz', 'Panigua', 2),
('S2P25', 'Alan', 'Perez', 'Panigua', 2),
('S3P26', 'Carlos', 'Villagran', 'Mendez', 1),
('S3P26', 'Angel', 'Guizar', 'Garcia', 1),
('S3P26', 'Cristian', 'Jimenez', 'Castañeda', 'INHUMADO'),
('S4P27', 'Eugenio', 'Derbez', 'Gonzalez', 'EXHUMADO'),
('S4P27', 'Maria', 'Montenegro', 'Garcia', 'INHUMADO'),
('S4P27', 'Roberto', 'Guillen', 'Gomez', 'INHUMADO'),
('S5P28', 'Enrique', 'Aguilar', 'Garcia', 'INHUMADO'),
('S5P28', 'Claudia', 'Sanchez', 'Garcia', 'EXHUMADO'),
('S6P29', 'Florinda', 'Meza', 'Gomez', 'INHUMADO'),
('S6P29', 'Yoni', 'Guillen', 'Abarca', 'INHUMADO'),
('S7P30', 'Jorge', 'Ruiz', 'Ramirez', 'EXHUMADO'),
('S7P30', 'Ismael', 'Panti', 'Gomez', 'EXHUMADO'),
('S7P30', 'Manuel', 'Abarca', 'Perez', 'INHUMADO'),
('S8P31', 'Alejandro', 'Ruiz', 'Aguilar', 'EXHUMADO'),
('S8P31', 'Iori', 'Guillen', 'Lopez', 'INHUMADO');

-- Volcado de datos en la tabla 'm_tumba'
INSERT INTO `m_perpetuidad` (`cv_perpetuidad`, `clave`, `poligono`, `propietario`, `num_perpetuidad`, `cv_sesion_cabildo`, `fecha_sesion_cabildo`, `capacidad_gavetas`, `coordenadas`, `caracteristicas`, `observaciones_historicas`) VALUES 
(1, 'S2P25', '2', 'Familia Morales Panigua', 25, 1, '1998-10-04', 6, POINT(19.2608, 99.0829), 'CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO'),
(null, 'S1P20', '1', 'Familia Ruiz Garcia', 20, 1, '1998-10-04', 5, POINT(20.2618, 98.0139), 'CAPILLA DE COLOR ROSADO', 'A LADO DE UN OXXO'),
(null, 'S3P22', '3', 'Familia Perez Lopez', 22, 1, '1998-10-04', 4, POINT(20.3015, 98.3040), 'CAPILLA DE COLOR VERDE', 'A LADO DE LA CAPILLA VERDE'),
(null, 'S4P26', '4', 'Familia Guizar Garcia', 26, 1, '1998-10-04', 7, POINT(20.2217, 98.6012), 'CAPILLA DE COLOR ROJO', 'A LADO DE UNA FERRETERIA'),
(null, 'S5P28', '5', 'Familia Jimenez Castañeda', 28, 1, '1998-10-04', 6, POINT(20.1639, 98.1015), 'CAPILLA DE COLOR AZUL', 'A LADO LA CAPILLA AMARILLA'),
(null, 'S6P35', '6', 'Familia Ramirez Mendez', 35, 1, '1998-10-04', 4, POINT(20.1012, 98.1567), 'CAPILLA DE COLOR AMARILLO', 'A LADO LA CAPILLA NARANJA'),
(null, 'S7P15', '7', 'Familia Guillen Garcia', 15, 1, '1998-10-04', 2, POINT(20.0210, 98.7012), 'CAPILLA DE COLOR NARANJA', 'A LADO DE UNA FARMACIA'),
(null, 'S8P32', '8', 'Familia Montes Ordoñez', 32, 1, '1998-10-04', 8, POINT(20.4012, 98.8022), 'CAPILLA DE COLOR CAFE', 'A LADO DE UNA CASA ABANDONADA');

select * from m_perpetuidad;

select `cv_perpetuidad`, `clave`, `poligono`, `propietario`, `num_perpetuidad`, 
`cv_sesion_cabildo`, `capacidad_gavetas`, 
CONCAT('Latitud: ', ST_Y(coordenadas), ', Longitud: ', ST_X(coordenadas)), `caracteristicas`, `observaciones_historicas` from m_perpetuidad;

select * from `t_perpetuidad`

