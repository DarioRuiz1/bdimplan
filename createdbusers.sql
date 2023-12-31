SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
## Borrar la base de datos llamada: "dbusers", en caso de que exista
DROP DATABASE IF EXISTS dbusers;

## Crear la base de datos "dbusers", en caso de que no exista
CREATE DATABASE IF NOT EXISTS dbusers;

## Entrar a la base de datos llamada: "dbusers"
USE dbusers;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'c_rol'
CREATE TABLE `c_rol` (
  `cv_rol` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `ds_rol` VARCHAR(30) NOT NULL) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
-- Estructura de tabla para la tabla 'm_user'
CREATE TABLE `m_user` (
  `cv_user` INT(9) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `ape_pat` VARCHAR(20) NOT NULL,
  `ape_mat` VARCHAR(20) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `pass` VARCHAR(50) NOT NULL,
  `cv_rol` INT(9) NOT NULL,
  CONSTRAINT `fk_data_rol` FOREIGN KEY (`cv_rol`) REFERENCES `dbusers`.`c_rol`(`cv_rol`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;