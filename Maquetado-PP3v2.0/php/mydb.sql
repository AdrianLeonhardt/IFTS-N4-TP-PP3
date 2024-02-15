-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 00:41:43
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `horario` int(11) NOT NULL,
  `vacante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `id` int(11) NOT NULL,
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
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contraseña`, `tipo`) VALUES
(58, '12', '121', 2),
(59, '', '', 2),
(60, '', 'asd', 2),
(61, '', '', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socio`
--
ALTER TABLE `socio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
