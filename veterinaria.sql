-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-09-2024 a las 23:44:49
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nombre_paciente` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `especie` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nombre_paciente`, `fecha_nacimiento`, `especie`) VALUES
(1, 'Milo', '2019-05-02', 'Perro'),
(2, 'Luna', '2020-02-14', 'Gato'),
(3, 'Rocky', '2018-10-11', 'Perro'),
(4, 'Kitty', '2021-01-23', 'Gato'),
(5, 'Max', '2017-08-04', 'Perro'),
(6, 'Simba', '2020-11-30', 'Gato'),
(7, 'Toby', '2016-03-15', 'Perro'),
(8, 'Coco', '2019-07-19', 'Gato'),
(9, 'Lola', '2015-12-25', 'Perro'),
(10, 'Socks', '2021-02-28', 'Gato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

DROP TABLE IF EXISTS `tratamientos`;
CREATE TABLE IF NOT EXISTS `tratamientos` (
  `id_tratamiento` int NOT NULL AUTO_INCREMENT,
  `tipo_tratamiento` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_tratamiento` int NOT NULL,
  `id_paciente` int NOT NULL,
  PRIMARY KEY (`id_tratamiento`),
  KEY `fk_paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id_tratamiento`, `tipo_tratamiento`, `fecha_tratamiento`, `id_paciente`) VALUES
(1, 'Vacunación', 2022, 2),
(2, 'Desparasitación', 2022, 2),
(3, 'Chequeo general', 2022, 2),
(4, 'Vacunación', 2022, 1),
(5, 'Desparasitación', 2022, 1),
(6, 'Chequeo general', 2022, 1),
(7, 'Tratamiento dental', 2022, 1),
(8, 'Vacunación', 2022, 4),
(9, 'Desparasitación', 2022, 4),
(10, 'Chequeo general', 2022, 4),
(11, 'Tratamiento de heridas', 2022, 4),
(12, 'Vacunación', 2022, 7),
(13, 'Desparasitación', 2022, 7),
(14, 'Chequeo general', 2022, 7),
(15, 'Tratamiento para alergias', 2022, 7),
(16, 'Vacunación', 2022, 9),
(17, 'Desparasitación', 2022, 9),
(18, 'Chequeo general', 2022, 9),
(19, 'Tratamiento para infección de oídos', 2022, 9),
(20, 'Vacunación', 2022, 10),
(21, 'Desparasitación', 2022, 10),
(22, 'Chequeo general', 2022, 10),
(23, 'Tratamiento para problemas de piel', 2022, 10),
(24, 'Vacunación', 2022, 3),
(25, 'Desparasitación', 2022, 3),
(26, 'Chequeo general', 2022, 3),
(27, 'Tratamiento para pulgas y garrapatas', 2022, 3),
(28, 'Limpieza dental', 2022, 4),
(29, 'Desparasitación', 2022, 4),
(30, 'Vacunación', 2022, 4),
(31, 'Extracción de dientes', 2022, 4),
(32, 'Tratamiento de la piel', 2022, 4),
(33, 'Radiografía', 2022, 4),
(34, 'Cirugía', 2022, 4);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD CONSTRAINT `fk_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
