## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- Volcado de datos en la tabla 'c_cabildo'
INSERT INTO `c_cabildo` (`cv_sesion_cabildo`, `ds_sesion_cabildo`) VALUES 
(1, 'Sesion ordinaria'),
(null, 'Sesion extraordinaria'),
(null, 'Sesion solemne');
	
-- Volcado de datos en la tabla 'm_tumba'
INSERT INTO `m_perpetuidad` (`cv_perpetuidad`, `clave`, `poligono`, `propietario`, `num_perpetuidad`, `cv_sesion_cabildo`, 
`fecha_sesion_cabildo`, `capacidad_gavetas`, `coordenadas`, `caracteristicas`, `observaciones_historicas`,
`src_perpetuidad`, `src_titulo`, `src_comprobante_pago`, `payment_status`, `last_modification`) VALUES 
(1, 'P1P11', '1', 'Familia Morales Panigua', 11, 1, '1998-10-04', 6, '19°26′08″N 99°08′29″O', 
"CAPILLA DE COLOR BLANCO, POSEE PUERTA Y VENTANAS DE HERRERÍA COLOR NEGRO, PRESENTA DETALLES NEOGÓTICOS",
'AL NORTE COLINDA CON MONUMENTO HISTÓRICO',
"https://i.pinimg.com/S1P25_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P25_TITULO.jpg", 
"https://i.pinimg.com/S1P25_PAGO.jpg", "PAGADO", "2023-11-1T08:11:55.4566668"),  

(null, 'P1P27', '1', 'Familia Guillen Pinto', 27, 2, '1999-08-22', 4, '19°26′08″N 88°06′222″O', 
'CAPILLA DE COLOR GRIS, PRESENTA FISURAS EN PARAMENTO ORIENTE', null,
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P20_TITULO.jpg", 
"https://i.pinimg.com/S1P20_PAGO.jpg", "ADEUDO", "2023-11-2T08:11:55.4566668"),

(null, 'P1P38', '1', 'Familia Morales Gordillo', 38, 3, '1997-11-08', 2, '19°26′08″N 55°09′266″O', 
'CAPILLA DE COLOR NARANJA, POSEE HERRERIA DE COLOR GRIS, PRESENTA HUMEDAD', 
"COLINDA CON BARDA PERIMETRAL UBICADA EN TERCERA PONIENTE SUR",
"https://i.pinimg.com/S1P22_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P22_TITULO.jpg", 
"https://i.pinimg.com/S1P22_PAGO.jpg", "CANCELADO", "2023-11-3T08:11:55.4566668"),

(null, 'P2P47', '2', 'FAMILIA Garduño Ortiz', 47, 2, '2010-11-07', 6, '7°33′45″N 22°04′140″O', 
'CAPILLA DE COLOR BLANCA, PRESENTA CUBIERTA DE TABLACEMENTO', 
'COLINDA CON ACCESO NORTE',
"https://i.pinimg.com/S1P26_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P26_TITULO.jpg", 
"https://i.pinimg.com/S1P26_PAGO.jpg", "CANCELADO", "2023-11-4T08:11:55.4566668"),

(null, 'P2P89', '2', 'Familia Culebro Guillen', 89, 1, '1997-07-06', 2, '7°33′45″N 18°25′132″O', 
'CAPILLA DE COLOR NARANJA, PRESENTA HERRERIA EN COLOR NEGRO.', 
'MONUMENTO HISTORICO', 
"https://i.pinimg.com/S1P28_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P28_TITULO.jpg", 
"https://i.pinimg.com/S1P20_PAGO.jpg", "PAGADO", "2023-11-5T08:11:55.4566668"),

(null, 'P3P14', '3', 'Familia Dominguez Jimenez', 14, 2, '2018-12-20', 2, '7°33′45″N 25°34′12″O', 
'CAPILLA DE COLOR BLANCA, PRESENTA HUMEDAD EN TODOS SUS MUROS.', null, 
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P35_TITULO.jpg", 
"https://i.pinimg.com/S1P20_PAGO.jpg", "ADEUDO", "2023-11-6T00:00:00"),

(null, 'P3P55', '3', 'Familia Flores Aguilar', 55, 3, '2015-03-16', 4, '7°33′45″N 22°17′18″O', 
'CAPILLA DE COLOR AZUL, PRESENTA CRISTALES ESMERILADOS.', 
'AL ORIENTE COLINDA CON MONUMENTO HISTORICO',
"https://i.pinimg.com/S1P20_PERPETUIDAD.jpg", 
"https://i.pinimg.com/S1P12_TITULO.jpg", 
"https://i.pinimg.com/S1P20_PAGO.jpg", "ADEUDO", "2023-11-7T08:11:55.4566668");
select * from m_perpetuidad;

-- Volcado de datos en la tabla 'c_inhumado'
INSERT INTO `t_perpetuidad` (`cv_tperpetuidad`, `clave`, `nombre`, `ape_pat`, `ape_mat`, `tipo`, `ultima_modificacion`) VALUES 
(null, 'P3P55', 'Jose', 'Ruiz', 'Panigua', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P11', 'Alan', 'Perez', 'Panigua', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Carlos', 'Villagran', 'Mendez', 'INHUMADO', '2023-11-7T00:00:00'),
(null, 'P1P27', 'Angel', 'Guizar', 'Garcia', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P11', 'Cristian', 'Jimenez', 'Castañeda', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P55', 'Eugenio', 'Derbez', 'Gonzalez', 'EXHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Maria', 'Montenegro', 'Garcia', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Roberto', 'Guillen', 'Gomez', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P11', 'Enrique', 'Aguilar', 'Garcia', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P27', 'Claudia', 'Sanchez', 'Garcia', 'EXHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P11', 'Florinda', 'Meza', 'Gomez', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P1P27', 'Yoni', 'Guillen', 'Abarca', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Jorge', 'Ruiz', 'Ramirez', 'EXHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Ismael', 'Panti', 'Gomez', 'EXHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P55', 'Manuel', 'Abarca', 'Perez', 'INHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P14', 'Alejandro', 'Ruiz', 'Aguilar', 'EXHUMADO', '2023-11-7T08:11:55.4566668'),
(null, 'P3P55', 'Iori', 'Guillen', 'Lopez', 'INHUMADO', '2023-11-7T08:11:55.4566668');

SELECT * FROM t_perpetuidad;

