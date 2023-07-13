-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2023 a las 00:58:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `campo_deportivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `usuario`, `password`, `nombres`) VALUES
(1, 'Angelo23', 'angelo123', 'Angelo Pizarro'),
(2, 'angelo@gmail.com', 'angelo123', 'Angelo Pizarro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE `campos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `campos`
--

INSERT INTO `campos` (`id`, `nombre`) VALUES
(1, 'CAMPO 1'),
(2, 'CAMPO 2'),
(3, 'CAMPO 3'),
(4, 'CAMPO 4'),
(5, 'CAMPO 5'),
(6, 'CAMPO 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `horario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `horario`) VALUES
(1, '10 AM'),
(2, '11 AM'),
(3, '12 PM'),
(4, '1 PM'),
(5, '2 PM'),
(6, '3 PM'),
(7, '4 PM'),
(8, '5 PM'),
(9, '6 PM'),
(10, '7 PM'),
(11, '8 PM'),
(12, '9 PM'),
(13, '10 PM'),
(14, '11 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id_horas` int(11) NOT NULL,
  `hora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id_horas`, `hora`) VALUES
(1, '1 hora'),
(2, '2 horas'),
(3, '3 horas'),
(4, '4 horas'),
(5, '5 horas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `campo_seleccionado` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_horas` int(11) NOT NULL,
  `total_pagar` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `captura_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `campo_seleccionado`, `nombres`, `apellidos`, `dni`, `celular`, `id_turno`, `id_horas`, `total_pagar`, `fecha`, `id_horario`, `forma_pago`, `captura_img`) VALUES
(1, 'campo 1', 'angelo', 'pizarro', '56565656', '656565656', 150, 1, 'S/.150', '2023-07-14', 14, 'yape', 'perro.jpg'),
(2, 'campo 1', 'harold', 'piuzarro', '15646464', '222222222', 200, 2, 'S/.400', '2023-07-29', 3, 'on', 'perro.jpg'),
(3, 'campo 1', 'kathy', 'pizarro', '56565656', '654646544', 150, 1, 'S/.150', '2023-07-22', 13, 'efectivo', 'perro.jpg'),
(4, 'campo 1', 'angelo', 'pizarro romero', '56565655', '646544545', 150, 2, 'S/.300', '2023-07-14', 11, 'plin', 'perro.jpg'),
(5, 'campo 1', 'fgggfhf', 'dfgdf', '56565656', '556164654', 150, 2, 'S/.300', '2023-07-26', 1, 'yape', 'perro.jpg'),
(6, 'campo 1', 'weres', 'sfsdfds', '25758585', '585858585', 200, 2, 'S/.400', '2023-07-21', 1, 'yape', 'perro.jpg'),
(7, 'campo 1', 'angelo', 'pizarro', '56565656', '123456789', 150, 2, 'S/.300', '2023-07-15', 8, 'plin', 'perro.jpg'),
(8, 'campo 1', 'angelo', 'dfgdfgdfg', '11111111', '222222222', 150, 2, 'S/.300', '2023-07-22', 9, 'yape', 'perro.jpg'),
(9, 'campo 1', 'harold', 'pizarro', '22222222', '333333333', 150, 3, 'S/.450', '2023-07-14', 1, 'yape', 'perro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo1`
--

CREATE TABLE `turnos_campo1` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo1`
--

INSERT INTO `turnos_campo1` (`id_turno`, `turno`) VALUES
(150, 'Dia'),
(200, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo2`
--

CREATE TABLE `turnos_campo2` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo2`
--

INSERT INTO `turnos_campo2` (`id_turno`, `turno`) VALUES
(130, 'Dia'),
(150, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo3`
--

CREATE TABLE `turnos_campo3` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo3`
--

INSERT INTO `turnos_campo3` (`id_turno`, `turno`) VALUES
(100, 'Dia'),
(130, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo4`
--

CREATE TABLE `turnos_campo4` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo4`
--

INSERT INTO `turnos_campo4` (`id_turno`, `turno`) VALUES
(90, 'Dia'),
(110, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo5`
--

CREATE TABLE `turnos_campo5` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo5`
--

INSERT INTO `turnos_campo5` (`id_turno`, `turno`) VALUES
(80, 'Dia'),
(90, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos_campo6`
--

CREATE TABLE `turnos_campo6` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos_campo6`
--

INSERT INTO `turnos_campo6` (`id_turno`, `turno`) VALUES
(60, 'Dia'),
(70, 'Noche');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id_horas`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_horas` (`id_horas`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Indices de la tabla `turnos_campo1`
--
ALTER TABLE `turnos_campo1`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `turnos_campo2`
--
ALTER TABLE `turnos_campo2`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `turnos_campo3`
--
ALTER TABLE `turnos_campo3`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `turnos_campo4`
--
ALTER TABLE `turnos_campo4`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `turnos_campo5`
--
ALTER TABLE `turnos_campo5`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `turnos_campo6`
--
ALTER TABLE `turnos_campo6`
  ADD PRIMARY KEY (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `campos`
--
ALTER TABLE `campos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id_horas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `turnos_campo1`
--
ALTER TABLE `turnos_campo1`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `turnos_campo2`
--
ALTER TABLE `turnos_campo2`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `turnos_campo3`
--
ALTER TABLE `turnos_campo3`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `turnos_campo4`
--
ALTER TABLE `turnos_campo4`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `turnos_campo5`
--
ALTER TABLE `turnos_campo5`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `turnos_campo6`
--
ALTER TABLE `turnos_campo6`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id_horas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
