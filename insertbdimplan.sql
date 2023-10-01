## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_sesion_cabildo`, `ds_sesion_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria'),
(null, 'Sesion solemne');
	
-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `t_perpetuidad` (`cv_tperpetuidad`, `clave`, `nombre`, `ape_pat`, `ape_mat`, `tipo`, `ultima_modificacion`) VALUES 
(null, 'S2P25', 'Jose', 'Ruiz', 'Panigua', 2, '1998-10-04'),
(null, 'S2P25', 'Alan', 'Perez', 'Panigua', 2, '1998-10-04'),
(null, 'S3P26', 'Carlos', 'Villagran', 'Mendez', 1, '1998-10-04'),
(null, 'S3P26', 'Angel', 'Guizar', 'Garcia', 1, '1998-10-04'),
(null, 'S3P26', 'Cristian', 'Jimenez', 'Castañeda', 'INHUMADO', '1998-10-04'),
(null, 'S4P27', 'Eugenio', 'Derbez', 'Gonzalez', 'EXHUMADO', '1998-10-04'),
(null, 'S4P27', 'Maria', 'Montenegro', 'Garcia', 'INHUMADO', '1998-10-04'),
(null, 'S4P27', 'Roberto', 'Guillen', 'Gomez', 'INHUMADO', '1998-10-04'),
(null, 'S5P28', 'Enrique', 'Aguilar', 'Garcia', 'INHUMADO', '1998-10-04'),
(null, 'S5P28', 'Claudia', 'Sanchez', 'Garcia', 'EXHUMADO', '1998-10-04'),
(null, 'S6P29', 'Florinda', 'Meza', 'Gomez', 'INHUMADO', '1998-10-04'),
(null, 'S6P29', 'Yoni', 'Guillen', 'Abarca', 'INHUMADO', '1998-10-04'),
(null, 'S7P30', 'Jorge', 'Ruiz', 'Ramirez', 'EXHUMADO', '1998-10-04'),
(null, 'S7P30', 'Ismael', 'Panti', 'Gomez', 'EXHUMADO', '1998-10-04'),
(null, 'S7P30', 'Manuel', 'Abarca', 'Perez', 'INHUMADO', '1998-10-04'),
(null, 'S8P31', 'Alejandro', 'Ruiz', 'Aguilar', 'EXHUMADO', '1998-10-04'),
(null, 'S8P31', 'Iori', 'Guillen', 'Lopez', 'INHUMADO', '1998-10-04');

-- Volcado de datos en la tabla 'm_tumba'
INSERT INTO `m_perpetuidad` (`cv_perpetuidad`, `clave`, `poligono`, `propietario`, `num_perpetuidad`, `cv_sesion_cabildo`, 
`fecha_sesion_cabildo`,  `ultima_modificacion`, `capacidad_gavetas`, `coordenadas`, `caracteristicas`, `observaciones_historicas`,
`src_perpetuidad`, `src_titulo`, `src_comprobante_pago`) VALUES 
(1, 'S2P25', '2', 'Familia Morales Panigua', 25, 1, '1998-10-04', '1998-10-04', 6, POINT(19.2608, 99.0829), 
'CAPILLA DE COLOR ROSADO', 'Aqui descansa un personaje muy querido', 
"https://i.pinimg.com/S1P25_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P25_TITULO.jpg", "https://i.pinimg.com/S1P25_PAGO.jpg"),
(null, 'S1P20', '1', 'Familia Ruiz Garcia', 20, 1, '1998-10-04', '1998-10-04', 5, POINT(20.2618, 98.0139), 'CAPILLA DE COLOR ROSADO', null, 
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P20_TITULO.jpg", "https://i.pinimg.com/S1P20_PAGO.jpg"),
(null, 'S3P22', '3', 'Familia Perez Lopez', 22, 1, '1998-10-04', '1998-10-04', 4, POINT(20.3015, 98.3040), 'CAPILLA DE COLOR VERDE', null,
"https://i.pinimg.com/S1P22_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P22_TITULO.jpg", "https://i.pinimg.com/S1P22_PAGO.jpg"),
(null, 'S4P26', '4', 'Familia Guizar Garcia', 26, 1, '1998-10-04', '1998-10-04', 7, POINT(20.2217, 98.6012), 'CAPILLA DE COLOR ROJO', null,
"https://i.pinimg.com/S1P26_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P26_TITULO.jpg", "https://i.pinimg.com/S1P26_PAGO.jpg"),
(null, 'S5P28', '5', 'Familia Jimenez Castañeda', 28, 1, '1998-10-04', '1998-10-04', 6, POINT(20.1639, 98.1015), 'CAPILLA DE COLOR AZUL', null, 
"https://i.pinimg.com/S1P28_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P28_TITULO.jpg", "https://i.pinimg.com/S1P20_PAGO.jpg"),
(null, 'S6P35', '6', 'Familia Ramirez Mendez', 35, 1, '1998-10-04', '1998-10-04', 4, POINT(20.1012, 98.1567), 'CAPILLA DE COLOR AMARILLO', null, 
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P35_TITULO.jpg", "https://i.pinimg.com/S1P20_PAGO.jpg"),
(null, 'S7P15', '7', 'Familia Guillen Garcia', 15, 1, '1998-10-04', '1998-10-04', 2, POINT(20.0210, 98.7012), 'CAPILLA DE COLOR NARANJA', null,
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P12_TITULO.jpg", "https://i.pinimg.com/S1P20_PAGO.jpg"),
(null, 'S8P32', '8', 'Familia Montes Ordoñez', 32, 1, '1998-10-04', '1998-10-04', 8, POINT(20.4012, 98.8022), 'CAPILLA DE COLOR CAFE', null, 
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", "https://i.pinimg.com/S1P31_TITULO.jpg", "https://i.pinimg.com/S1P20_PAGO.jpg");

select * from m_perpetuidad;

select `cv_perpetuidad`, `clave`, `poligono`, `propietario`, `num_perpetuidad`, `cv_sesion_cabildo`, 
`fecha_sesion_cabildo`,  `ultima_modificacion`, `capacidad_gavetas`, `caracteristicas`, `observaciones_historicas`,
CONCAT('Latitud: ', ST_Y(coordenadas), ', Longitud: ', ST_X(coordenadas)),
`src_perpetuidad`, `src_titulo`, `src_comprobante_pago` from m_perpetuidad;

select * from `t_perpetuidad`

