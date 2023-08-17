## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_permiso'
INSERT INTO `c_rol` (`cv_rol`, `ds_rol`) VALUES 
(1, 'Administrador'),
(null, 'Capturista');

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_cabildo`, `ds_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria');

-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `c_inhumado` (`cv_inhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Jose', 'Ruiz', 'Panigua'),
(2, 'Alan', 'Perez', 'Panigua'),
(3, 'Carlos', 'Perez', 'Mendez'),
(4, 'Angel', 'Guizar', 'Garcia'),
(5, 'Cris', 'Guillen', 'Gomez');

-- Volcado de datos en la tabla 'c_exhumado'
INSERT INTO `c_exhumado` (`cv_exhumado`, `nombre`, `ape_pat`, `ape_mat`) VALUES 
(1, 'Dario', 'Ruiz', 'Garcia'),
(null, 'Ricardo', 'Perez', 'Vazquez'),
(null, 'Cris', 'Jimenez', 'Castañeda');

-- Volcado de datos en la tabla 'm_user'
INSERT INTO `m_user` (`cv_user`, `nombre`, `ape_pat`, `ape_mat`, `email`, `pass`, `cv_rol`) VALUES 
(1, 'Hernan', 'Ruiz', 'Panigua', 'hernanr@gmail.com', '123456', 1),
(null, 'Juan', 'Perez', 'Panigua', 'juanp@gmail.com', '123467', 2);

-- Volcado de datos en la tabla 'm_tumba'
INSERT INTO `m_tumba` (`cv_tumba`, `clave`, `poligono`, `cv_perpetuidad`, `ds_perpetuidad`, `num_perpetuidad`, `cv_inhumado`, `cv_exhumado`, `cv_cabildo`, `capacidad_gavetas`, `coordenadas`, `caracteristicas`, `observaciones`) VALUES 
(1, 'S2P25', '2', 1, 'Familia Morales Panigua', '25' , 1, 2, 1, 6, POINT(19.2608, 99.0829), 'CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO'),
(null, 'S2P25', '2', 1, 'Familia Morales Panigua', '25' , 1, 2, 1, 6, POINT(19.2608, 99.0829), 'CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS', 'AL NORTE COLINDA CON MONUMENTO HISTÓRICO');

select `cv_tumba`, `clave`, `poligono`, `cv_perpetuidad`, `ds_perpetuidad`, `num_perpetuidad`, `cv_inhumado`, `cv_exhumado`, `cv_cabildo`, `capacidad_gavetas`, CONCAT('Latitud: ', ST_Y(coordenadas), ', Longitud: ', ST_X(coordenadas)), `caracteristicas`, `observaciones` from m_tumba;



