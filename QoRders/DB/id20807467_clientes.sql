-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2023 a las 01:53:47
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20807467_clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nif` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nif`, `password`, `name`, `address`, `email`, `account`, `active`) VALUES
('1234', '$2a$08$PjK93GAs6rKLhES.T4V/XeBdEXQr4xWtieCHRavjOBliD145vaOP6', 'pepe', '1234', 'pepe@pepe.es', '', 0),
('123456789', '$2a$08$GFG.9U.aBbVS9aP.8v1uFOMoMWboH5SGt/v1q1fgD6o.HUfj4YN3u', 'kev', 'batoi', 'kev@kev.es', '', 0),
('2111212', '$2a$08$vS76ndO6/dwhRleoravpHu4rLTJe2XdG04pwWCZ42jQ4i7XJIzDVe', 'Hola', '1123123', 'hola@hola.es', '', 0),
('21696890R', '$2a$08$ECWGFbdMpeSup3mLkBRB8.fV1aOr2jM47SyPdFu13xAgYaQprV6vm', 'cain', 'aljorf', 'cain@cain.es', '', 0),
('asffa', '$2a$08$pW56TMdUBCwWjr7YKTsqp.KXMZ4/aVfSANXWrYNQVxK.xrxZalr7a', 'adasf', 'asfaf', 'asfasf@afas.es', '', 0),
('asfsfs', '$2a$08$oOCaNBhrpMNgP52ETavoMOqaphLUJVwHS50bmGWKWZlwWvlmYXw4q', 'fsdf', 'sdfsfd', 'sfsdf@sfsdf.es', '', 0),
('pepepe', '$2a$08$xyWVoep8cmEkbAUMo.zWzeKZBNA9V/crWBKXFbbtbCJ/bfnEpGNxe', 'pepepepe', 'epeppe', 'pepe@pepe.es', '', 0),
('qsfdsdf', '$2a$08$gEAp4WJhIe5jmEoEy6SwJOl7bpsUDr2aG19ZPM6B9QtI4dk2QPKOe', 'sdfsd', 'sdfsfd', 'sfdsdf@sfsdf.es', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumidores`
--

CREATE TABLE `consumidores` (
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` int(9) NOT NULL,
  `date` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nif`);

--
-- Indices de la tabla `consumidores`
--
ALTER TABLE `consumidores`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
