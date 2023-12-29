SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
## Borrar la base de datos llamada: "dbimplan", en caso de que exista
DROP DATABASE IF EXISTS dbimplan;

## Crear la base de datos "dbimplan", en caso de que no exista
CREATE DATABASE IF NOT EXISTS dbimplan;

## Entrar a la base de datos llamada: "dbimplan"
USE dbimplan;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_cabildo'
CREATE TABLE `c_cabildo` (
  `cv_sesion_cabildo` INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `ds_sesion_cabildo` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Estructura de tabla para la tabla 'm_users'
CREATE TABLE `m_users` (
  `cv_user` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `nombre` VARCHAR(70) NOT NULL,
  `ape_pat` VARCHAR(70) NOT NULL,
  `ape_mat` VARCHAR(70) NOT NULL,
  `login` VARCHAR(70) NOT NULL,
  `password` VARCHAR(70) NOT NULL,
  `rol` ENUM("ADMINISTRADOR", "CAPTURISTA")  NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'm_tumba'
CREATE TABLE `m_perpetuidad` (
  `cv_perpetuidad` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `clave` VARCHAR(6) NOT NULL,
  `poligono` TINYINT(2) NOT NULL,
  `propietario` VARCHAR(255) NOT NULL,
  `num_perpetuidad` INT(4) NOT NULL,
  `fecha_sesion_cabildo` DATE NOT NULL,
  `capacidad_gavetas` INT(2) NOT NULL,
  `coordenadas` VARCHAR(255) NOT NULL,
  `caracteristicas` VARCHAR(255) NOT NULL,
  `observaciones_historicas` VARCHAR(255),
  `src_perpetuidad` VARCHAR(255) NOT NULL,
  `src_titulo` VARCHAR(255) NOT NULL,
  `src_comprobante_pago` VARCHAR(255) NOT NULL,
  `payment_status` ENUM("PAGADO", "ADEUDO", "CANCELADO") NOT NULL,
  `last_modification` DATETIME NOT NULL,
  `cv_sesion_cabildo` INT(6) NOT NULL,
  CONSTRAINT `fk_data_cab` FOREIGN KEY (`cv_sesion_cabildo`) REFERENCES `dbimplan`.`c_cabildo`(`cv_sesion_cabildo`)
  ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_inhumado'
CREATE TABLE `t_perpetuidad` (
  `cv_tperpetuidad` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `clave` VARCHAR(6) NOT NULL,
  `nombre` VARCHAR(70) NOT NULL,
  `ape_pat` VARCHAR(70) NOT NULL, 
  `ape_mat` VARCHAR(70) NOT NULL,
  `tipo` ENUM("INHUMADO", "EXHUMADO") NOT NULL,
  `ultima_modificacion` DATE NOT NULL)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
