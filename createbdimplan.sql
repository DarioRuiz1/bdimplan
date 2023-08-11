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
-- Estructura de tabla para la tabla 'c_permisos'
CREATE TABLE `c_permisos` (
  `cv_permiso` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `ds_permiso` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_cabildo'
CREATE TABLE `c_cabildo` (
  `cv_cabildo` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `ds_cabildo` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_perpetuidad'
CREATE TABLE `c_perpetuidad` (
  `cv_perpetuidad` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `ds_perpetuidad` VARCHAR(100) NOT NULL,
  `num_perpetuidad` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_inhumado'
CREATE TABLE `c_inhumado` (
  `cv_inhumado` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `nombre` VARCHAR(40) NOT NULL,
  `ape_pat` VARCHAR(30) NOT NULL,
  `ape_mat` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_exhumado'
CREATE TABLE `c_exhumado` (
  `cv_exhumado` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `nombre` VARCHAR(40) NOT NULL,
  `ape_pat` VARCHAR(30) NOT NULL,
  `ape_mat` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'm_personas'
CREATE TABLE `m_personas` (
  `cv_persona` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `ape_pat` VARCHAR(20) NOT NULL,
  `ape_mat` VARCHAR(20) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `rol` VARCHAR(50) NOT NULL)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'm_user'
CREATE TABLE `m_user` (
  `cv_user` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `cv_persona` INT(9) NOT NULL,
  `user` VARCHAR(30) UNIQUE KEY NOT NULL,
  `pass` VARCHAR(20) NOT NULL)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'usuario_permiso'
CREATE TABLE `usuario_permiso` (
  `cvuser_permiso` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `cv_user` INT(9) NOT NULL,
  `cv_permiso` INT(9) NOT NULL,
  CONSTRAINT `fk_usuario_permiso_permiso_idx` FOREIGN KEY (`cv_user`) REFERENCES `dbimplan`.`m_user`(`cv_user`),
  CONSTRAINT `fk_usuario_permiso_usuario_idx` FOREIGN KEY (`cv_permiso`) REFERENCES `dbimplan`.`c_permisos`(`cv_permiso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'm_datos'
CREATE TABLE `m_datos` (
  `clave` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `poligono` TINYINT(2) NOT NULL,
  `cv_perpetuidad` INT(9) NOT NULL,
  `cv_inhumado` INT(9) NOT NULL,
  `cv_exhumado` INT(9) NOT NULL,
  `cv_cabildo` INT(9) NOT NULL,
  `capacidad` VARCHAR(99) NOT NULL,
  `coordenadas` VARCHAR(200) NOT NULL,
  `caracteristicas` VARCHAR(255) NOT NULL,
  `observaciones` VARCHAR(255) NOT NULL,
  CONSTRAINT `fk_data_perpet` FOREIGN KEY (`cv_perpetuidad`) REFERENCES `dbimplan`.`c_perpetuidad`(`cv_perpetuidad`),
  CONSTRAINT `fk_data_inh` FOREIGN KEY (`cv_inhumado`) REFERENCES `dbimplan`.`c_inhumado`(`cv_inhumado`),
  CONSTRAINT `fk_data_ehu` FOREIGN KEY (`cv_exhumado`) REFERENCES `dbimplan`.`c_exhumado`(`cv_exhumado`),
  CONSTRAINT `fk_data_cab` FOREIGN KEY (`cv_cabildo`) REFERENCES `dbimplan`.`c_cabildo`(`cv_cabildo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
