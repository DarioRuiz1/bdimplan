## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_cabildo`, `ds_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria');

-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `t_inhumado` (`cv_inhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Jose', 'Ruiz', 'Panigua'),
(1, 'Alan', 'Perez', 'Panigua'),
(2, 'Carlos', 'Villagran', 'Mendez'),
(2, 'Angel', 'Guizar', 'Garcia'),
(2, 'Cristian', 'Jimenez', 'Castañeda'),
(3, 'Eugenio', 'Derbez', 'Gonzalez'),
(3, 'Maria', 'Montenegro', 'Garcia'),
(3, 'Roberto', 'Guillen', 'Gomez'),
(4, 'Enrique', 'Aguilar', 'Garcia'),
(4, 'Claudia', 'Sanchez', 'Garcia'),
(5, 'Florinda', 'Meza', 'Gomez'),
(5, 'Yoni', 'Guillen', 'Abarca'),
(5, 'Jorge', 'Ruiz', 'Ramirez'),
(6, 'Ismael', 'Panti', 'Gomez'),
(6, 'Manuel', 'Abarca', 'Perez'),
(7, 'Alejandro', 'Ruiz', 'Aguilar'),
(7, 'Iori', 'Guillen', 'Lopez');

-- Volcado de datos en la tabla 'c_exhumado'
INSERT INTO `t_exhumado` (`cv_exhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Dario', 'Ruiz', 'Garcia'),
(1, 'Ricardo', 'Perez', 'Vazquez'),
(2, 'Chiri', 'Lopez', 'Gomez'),
(2, 'Cris', 'Mendez', 'Morales'),
(3, 'Alan', 'Reyes', 'Abarca'),
(3, 'Angel', 'Montes', 'Guizar'),
(3, 'Eugenia', 'Uribe', 'Panti'),
(3, 'Cristina', 'Jimenez', 'Castañeda');

-- Volcado de datos en la tabla 'm_tumba'
INSERT INTO `m_tumba` (`cv_tumba`, `clave`, `poligono`, `cv_perpetuidad`, `ds_perpetuidad`, `num_perpetuidad`, `cv_cabildo`, `capacidad_gavetas`, `coordenadas`, `caracteristicas`, `observaciones`) VALUES 
(1, 'S2P25', '2', 1, 'Familia Morales Panigua', 25, 1, 6, POINT(19.2608, 99.0829), 'CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO'),
(null, 'S1P20', '1', 2, 'Familia Ruiz Garcia', 20, 1, 5, POINT(20.2618, 98.0139), 'CAPILLA DE COLOR ROSADO', 'A LADO DE UN OXXO'),
(null, 'S3P22', '3', 3, 'Familia Perez Lopez', 22, 1, 4, POINT(20.3015, 98.3040), 'CAPILLA DE COLOR VERDE', 'A LADO DE LA CAPILLA VERDE'),
(null, 'S4P26', '4', 4, 'Familia Guizar Garcia', 26, 1, 7, POINT(20.2217, 98.6012), 'CAPILLA DE COLOR ROJO', 'A LADO DE UNA FERRETERIA'),
(null, 'S5P28', '5', 5, 'Familia Jimenez Castañeda', 28, 1, 6, POINT(20.1639, 98.1015), 'CAPILLA DE COLOR AZUL', 'A LADO LA CAPILLA AMARILLA'),
(null, 'S6P35', '6', 6, 'Familia Ramirez Mendez', 35, 1, 4, POINT(20.1012, 98.1567), 'CAPILLA DE COLOR AMARILLO', 'A LADO LA CAPILLA NARANJA'),
(null, 'S7P15', '7', 7, 'Familia Guillen Garcia', 15, 1, 2, POINT(20.0210, 98.7012), 'CAPILLA DE COLOR NARANJA', 'A LADO DE UNA FARMACIA'),
(null, 'S8P32', '8', 8, 'Familia Montes Ordoñez', 32, 1, 8, POINT(20.4012, 98.8022), 'CAPILLA DE COLOR CAFE', 'A LADO DE UNA CASA ABANDONADA');

/*
   cv_inhumado creo que en m_tumba no va, ya que se hace la consulta con el cv_tumba a la tabla trans para buscar los inhumados
   cv_exhumado está bn
*/

select `cv_tumba`, `clave`, `poligono`, `cv_perpetuidad`, `ds_perpetuidad`, `num_perpetuidad`, `cv_cabildo`, `capacidad_gavetas`, CONCAT('Latitud: ', ST_Y(coordenadas), ', Longitud: ', ST_X(coordenadas)), `caracteristicas`, `observaciones` from m_tumba;

SELECT cv_tumba, cv_inhumado, CONCAT(nombre, ' ' , ape_pat, ' ' , ape_mat) AS 'Inhumado' 
FROM t_inhumado 
INNER JOIN m_tumba ON t_inhumado.cv_inhumado = m_tumba.cv_tumba;

