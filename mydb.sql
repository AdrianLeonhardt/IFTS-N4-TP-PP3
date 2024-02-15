-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 19:47:39
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `horario` int(11) NOT NULL,
  `vacante` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

DROP TABLE IF EXISTS `socio`;
CREATE TABLE IF NOT EXISTS `socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `numerosocio` int(11) NOT NULL,
  `Lugar nacimiento` varchar(250) NOT NULL,
  `nacimiento` date NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `provincia` varchar(250) NOT NULL,
  `localidad` varchar(250) NOT NULL,
  `cp` varchar(6) NOT NULL,
  `dni` int(10) NOT NULL,
  `grupoflia` int(11) NOT NULL,
  `obraSocial` text NOT NULL,
  `estado` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`id`, `nombre`, `apellido`, `numerosocio`, `Lugar nacimiento`, `nacimiento`, `domicilio`, `provincia`, `localidad`, `cp`, `dni`, `grupoflia`, `obraSocial`, `estado`) VALUES
(2, 'a', 'a', 1, 'a', '2022-09-07', '123', '123123', '1231', '232', 123, 21, 'qweqwe', 2),
(3, '', '2112', 1, '', '2022-09-07', '', '', '', '', 0, 0, '', 2),
(4, 'nombre', 'ape', 1, 'lugar ', '2022-09-07', 'amunde 3515', 'BUENOS AIRES', 'local', '152', 35159203, 0, '', 2),
(5, '', '', 1, '', '2022-09-07', '', '', '', '', 0, 0, '', 2),
(6, '', '', 1, '', '0000-00-00', '', '', '', '', 0, 0, '', 2),
(7, '', '', 1, '', '2022-09-01', '', '', '', '', 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `tipo` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contraseña`, `tipo`) VALUES
(58, '12', '121', 2),
(59, '', '', 2),
(60, '', 'asd', 2),
(61, '', '', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
