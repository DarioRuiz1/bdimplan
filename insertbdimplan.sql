## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_permiso'
INSERT INTO `c_permisos` (`cv_permiso`, `ds_permiso`) VALUES 
(1, 'Administrador'),
(null, 'Capturista');

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_cabildo`, `ds_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria');

-- Volcado de datos en la tabla 'c_perpetuidad'
INSERT INTO `c_perpetuidad` (`cv_perpetuidad`, `ds_perpetuidad`, `num_perpetuidad`) VALUES 
(1, 'Familia Morales Panigua', '25'),
(null, 'Familia Panigua Morales', '6');

-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `c_inhumado` (`cv_inhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Jose', 'Ruiz', 'Panigua'),
(null, 'Alan', 'Perez', 'Panigua');

-- Volcado de datos en la tabla 'c_exhumado'
INSERT INTO `c_exhumado` (`cv_exhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Jose', 'Ruiz', 'Panigua'),
(null, 'Alan', 'Perez', 'Panigua');

-- Volcado de datos en la tabla 'm_personas'
INSERT INTO `m_personas` (`cv_persona`, `nombre`, `ape_pat`, `ape_mat`, `email`, `rol`) VALUES 
(1, 'Jose', 'Ruiz', 'Panigua', 'joserois@gmail.com', 'Capturista'),
(null, 'Alan', 'Perez', 'Panigua', 'alanperes@gmail.com', 'Administrador');

-- Volcado de datos en la tabla 'm_user'
INSERT INTO `m_user` (`cv_user`, `cv_persona`, `user`, `pass`) VALUES 
(1, 2, 'alanperes@gmail.com', '123456'),
(null, 1, 'joserois@gmail.com', '123467');

-- Volcado de datos en la tabla 'm_datos'
INSERT INTO `m_datos` (`clave`, `poligono`, `cv_perpetuidad`, `cv_inhumado`, `cv_exhumado`, `cv_cabildo`, `capacidad`, `coordenadas`, `caracteristicas`, `observaciones`) VALUES 
('S2P25', '2', 1, 1, 2, 1, '6 gavetas', '19°26′08″ N 99°08′29″ O', 'CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO'),
('S2P6', '2', 2, 2, 1, 2, '4 gavetas', '19°26′08″ S 99°08′29″ E', 'CAPILLA DE COLOR AZUL, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO');

select * from m_datos;



