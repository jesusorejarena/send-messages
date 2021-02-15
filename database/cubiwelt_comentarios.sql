-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2021 a las 05:43:10
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cubiwelt_comentarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_video`
--

CREATE TABLE `comentario_video` (
  `cod_com_vid` int(11) NOT NULL COMMENT 'Código del comentario',
  `fky_usu_onl` int(11) NOT NULL COMMENT 'Código del usuario',
  `fky_video` int(11) NOT NULL COMMENT 'Código del video',
  `tit_com_vid` text DEFAULT NULL COMMENT 'Titulo del Comentario',
  `com_com_vid` text NOT NULL COMMENT 'Comentario',
  `lik_com_vid` int(11) NOT NULL COMMENT 'Me gusta',
  `dis_com_vid` int(11) NOT NULL COMMENT 'No me gusta',
  `res_com_vid` int(11) DEFAULT NULL COMMENT 'Respuesta del comentario, recursividad',
  `ver_com_vid` enum('N','V') NOT NULL COMMENT 'Verificación del comentario',
  `est_com_vid` enum('A','I') NOT NULL COMMENT 'Estatus del comentario',
  `reg_com_vid` datetime DEFAULT current_timestamp() COMMENT 'Registro del comentario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comentarios de los videos';

--
-- Volcado de datos para la tabla `comentario_video`
--

INSERT INTO `comentario_video` (`cod_com_vid`, `fky_usu_onl`, `fky_video`, `tit_com_vid`, `com_com_vid`, `lik_com_vid`, `dis_com_vid`, `res_com_vid`, `ver_com_vid`, `est_com_vid`, `reg_com_vid`) VALUES
(15, 1, 1, 'hola', 'hola', 1, 0, 0, 'N', 'A', '2021-01-21 01:16:24'),
(17, 1, 1, NULL, 'hola', 0, 0, 15, 'N', 'A', '2021-01-21 01:18:12'),
(18, 1, 1, 'hola', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:40:07'),
(19, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:40:16'),
(20, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:42:49'),
(21, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:42:54'),
(22, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:43:12'),
(23, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:43:18'),
(24, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:44:10'),
(25, 1, 1, 'hola bebe', 'como estas?', 0, 0, 0, 'N', 'A', '2021-02-02 10:44:24'),
(26, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:01:52'),
(27, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:41'),
(28, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:46'),
(29, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:49'),
(30, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:50'),
(31, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:51'),
(32, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:51'),
(33, 1, 1, 'Holitaaas', 'como estaaas?', 0, 0, 0, 'N', 'A', '2021-02-02 11:05:56'),
(34, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:06:39'),
(35, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:06:57'),
(36, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:07:23'),
(37, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:08:34'),
(38, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:08:59'),
(39, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:09:03'),
(40, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:09:03'),
(41, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:09:04'),
(42, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:09:04'),
(43, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:09:05'),
(44, 1, 1, 'jejejeje', 'como estaaas?asdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:02'),
(45, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:05'),
(46, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:06'),
(47, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:06'),
(48, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:07'),
(49, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:07'),
(50, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:12'),
(51, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:13'),
(52, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:13'),
(53, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:13'),
(54, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:13'),
(55, 1, 1, 'jejejejeasdasd', 'como estaaas?asdasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:11:14'),
(56, 1, 1, 'asdasddasd', 'asdasdsa', 0, 0, 0, 'N', 'A', '2021-02-02 11:14:23'),
(57, 1, 1, 'yyjjy', 'ytjty', 0, 0, 0, 'N', 'A', '2021-02-02 11:14:42'),
(58, 1, 1, 'yyjjy', 'ytjty', 0, 0, 0, 'N', 'A', '2021-02-02 11:14:45'),
(59, 1, 1, 'yyjjy', 'ytjty', 0, 0, 0, 'N', 'A', '2021-02-02 11:14:47'),
(60, 1, 1, 'yyjjy', 'ytjty', 0, 0, 0, 'N', 'A', '2021-02-02 11:15:01'),
(61, 1, 1, 'awrqr', 'qwer', 0, 0, 0, 'N', 'A', '2021-02-02 11:15:32'),
(62, 1, 1, 'holitas bebe', 'te estraño', 0, 0, 0, 'N', 'A', '2021-02-02 11:20:45'),
(63, 1, 1, 'holitas bebe asdasd', 'te estrañoasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:21:10'),
(64, 1, 1, 'holitas bebe asdasd123', 'te estrañoasdasd13123', 0, 0, 0, 'N', 'A', '2021-02-02 11:21:32'),
(65, 1, 1, 'asjdjasdjasjd', 'te estrañoasdasd13123ajdsjasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:24:46'),
(66, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:27:54'),
(67, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:28:29'),
(68, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:28:45'),
(69, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:20'),
(70, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:32'),
(71, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:33'),
(72, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:33'),
(73, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:33'),
(74, 1, 1, 'asjdjasdjasjdasdasd', 'te estrañoasdasd13123ajdsjasd123235', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:55'),
(75, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:29:59'),
(76, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:30:00'),
(77, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:30:00'),
(78, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:30:00'),
(79, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:30:00'),
(80, 1, 1, 'asjdjasdjasjdasdasdad', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:05'),
(81, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:11'),
(82, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:12'),
(83, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:12'),
(84, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:13'),
(85, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:32:25'),
(86, 1, 1, 'asjdjasdjasjdasdasdad231', 'te estrañoasdasd13123ajdsjasd123235asd2123', 0, 0, 0, 'N', 'A', '2021-02-02 11:33:39'),
(87, 1, 1, 'asjdjasdjasjdasdasdad231jujuju', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj', 0, 0, 0, 'N', 'A', '2021-02-02 11:37:49'),
(88, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312', 0, 0, 0, 'N', 'A', '2021-02-02 11:38:23'),
(89, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312', 0, 0, 0, 'N', 'A', '2021-02-02 11:45:43'),
(90, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123qweqwe', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312qweqwe', 0, 0, 0, 'N', 'A', '2021-02-02 11:51:17'),
(91, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123qweqwe', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312qweqwe', 0, 0, 0, 'N', 'A', '2021-02-02 11:53:16'),
(92, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123qweqwe', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312qweqwe', 0, 0, 0, 'N', 'A', '2021-02-02 11:53:18'),
(93, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123qweqwe', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312qweqwe', 0, 0, 0, 'N', 'A', '2021-02-02 11:53:19'),
(94, 1, 1, 'asjdjasdjasjdasdasdad231jujuju123123qweqwe', 'te estrañoasdasd13123ajdsjasd123235asd2123jojoj12312qweqwe', 0, 0, 0, 'N', 'A', '2021-02-02 11:53:30'),
(95, 1, 1, 'asjdjasdjasjdasdasda', 'te estrañoasdasd131', 0, 0, 0, 'N', 'A', '2021-02-02 11:54:44'),
(96, 1, 1, 'asjdjasdjasjdasdasda', 'te estrañoasdasd131', 0, 0, 0, 'N', 'A', '2021-02-02 11:55:50'),
(97, 1, 1, 'asjdjasdjasjdasdasda123', 'te estrañoasdasd131ew', 0, 0, 0, 'N', 'A', '2021-02-02 11:55:56'),
(98, 1, 1, 'asjdjasdjasjdasdasda123123', 'te estrañoasdasd131ewtyuy', 0, 0, 0, 'N', 'A', '2021-02-02 11:57:09'),
(99, 1, 1, 'asjdjasdjasjdasdasda123123', 'te estrañoasdasd131ewtyuy', 0, 0, 0, 'N', 'A', '2021-02-02 11:59:10'),
(100, 1, 1, 'asjdjasdjasjdasdasda123123', 'te estrañoasdasd131ewtyuy', 0, 0, 0, 'N', 'A', '2021-02-02 11:59:15'),
(101, 1, 1, 'asjdjasdjasjdasdasda123123', 'te estrañoasdasd131ewtyuy', 0, 0, 0, 'N', 'A', '2021-02-02 11:59:38'),
(102, 1, 1, 'asjdjasdjasjdasdasda123123asfasfasf', 'te estrañoasdasd131ewtyuywfafasfas', 0, 0, 0, 'N', 'A', '2021-02-02 11:59:44'),
(103, 1, 1, 'asjdjasdjasjdasdasda123123asfasfasf123123', 'te estrañoasdasd131ewtyuywfafasfasadasdasdte estrañoasdasd131ewtyuywfafasfasadasdasdte estrañoasdasd131ewtyuywfafasfasadasdasdte estrañoasdasd131ewtyuywfafasfasadasdasdte estrañoasdasd131ewtyuywfafasfasadasdasd', 0, 0, 0, 'N', 'A', '2021-02-02 11:59:51'),
(104, 1, 1, 'dasdas', '2eqw', 0, 0, 0, 'N', 'A', '2021-02-03 12:00:07'),
(105, 1, 1, 'dasdas', '2eqw', 0, 0, 0, 'N', 'A', '2021-02-03 12:00:10'),
(106, 1, 1, 'dasdas', '2eqw', 0, 0, 0, 'N', 'A', '2021-02-03 12:00:11'),
(107, 1, 1, 'dasdas', '2eqw', 0, 0, 0, 'N', 'A', '2021-02-03 12:00:11'),
(108, 1, 1, 'asd', 'asd', 0, 0, 0, 'N', 'A', '2021-02-03 12:00:43'),
(109, 1, 1, 'asdasd', 'asdqrtasfasf', 0, 0, 0, 'N', 'A', '2021-02-03 12:01:24'),
(110, 1, 1, 'asdasd12412', 'asdqrtasfasf142', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:10'),
(111, 1, 1, 'asdasd12412', 'asdqrtasfasf142asdasd', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:49'),
(112, 1, 1, 'asdasd12412', 'asdqrtasfasf142asdasd', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:54'),
(113, 1, 1, 'asdasd12412', 'asdqrtasfasf142asdasddas', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:55'),
(114, 1, 1, 'asdasd12412', 'asdqrtasfasf142asdasddas', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:55'),
(115, 1, 1, 'asdasd12412', 'asdqrtasfasf142asdasddasasdasd', 0, 0, 0, 'N', 'A', '2021-02-03 12:02:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_usuarios`
--

CREATE TABLE `cursos_usuarios` (
  `cod_cur_usu` int(11) NOT NULL,
  `fky_usuario` int(11) NOT NULL,
  `fky_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos_usuarios`
--

INSERT INTO `cursos_usuarios` (`cod_cur_usu`, `fky_usuario`, `fky_curso`) VALUES
(1, 1, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like_comentario`
--

CREATE TABLE `like_comentario` (
  `cod_lik_vid` int(11) NOT NULL COMMENT 'Código del like del comentario',
  `tip_lik_vid` enum('L','D') NOT NULL COMMENT 'Like o Dislike',
  `fky_usu_onl` int(11) NOT NULL COMMENT 'Código del usuario',
  `fky_com_vid` int(11) NOT NULL COMMENT 'Código del comentario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `like_comentario`
--

INSERT INTO `like_comentario` (`cod_lik_vid`, `tip_lik_vid`, `fky_usu_onl`, `fky_com_vid`) VALUES
(2, 'L', 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_curso`
--

CREATE TABLE `tipo_curso` (
  `cod_tip_cur` int(11) NOT NULL COMMENT 'Código del Tipo de Curso. Autoincremental',
  `nom_tip_cur` varchar(50) NOT NULL COMMENT 'Nombre del tipo de curso',
  `fky_usu_onl` int(11) NOT NULL COMMENT 'Código del profesor',
  `hor_tip_cur` int(11) NOT NULL COMMENT 'Numero de Horas Académicas',
  `can_tip_cur` int(11) NOT NULL COMMENT 'Cantidad de clases del curso',
  `cer_tip_cur` varchar(50) NOT NULL COMMENT 'Nombre que aparecerá en el certificado',
  `des_tip_cur` text NOT NULL COMMENT 'Sirve para aclarar de qué se trata el curso.',
  `dir_tip_cur` varchar(80) NOT NULL COMMENT 'Curso Dirigido a?',
  `cla_tip_cur` int(11) NOT NULL COMMENT 'Cantidad de Clases',
  `obj_tip_cur` varchar(255) NOT NULL COMMENT 'Objetivo del Curso',
  `min_tip_cur` int(11) NOT NULL COMMENT 'Número mínimo de cupos',
  `max_tip_cur` int(11) NOT NULL COMMENT 'Numero maximo de cupos',
  `ava_tip_cur` char(1) NOT NULL COMMENT 'Valores: A: Certificado Avalado por el Ministerio de Educación N: Certificado No Avalado por el Ministerio de Educación',
  `mat_tip_cur` text DEFAULT NULL COMMENT 'URL del material del curso comprimido en un .zip',
  `con_tip_cur` text DEFAULT NULL COMMENT 'URL del contenido del curso',
  `ico_tip_cur` text NOT NULL COMMENT 'Icono del Curso',
  `car_tip_cur` text NOT NULL COMMENT 'Foto de la Card',
  `sli_tip_cur` text NOT NULL COMMENT 'Foto del Slider',
  `cao_tip_cur` text NOT NULL COMMENT 'URL para card de cursos online',
  `arc_tip_cur` text DEFAULT NULL COMMENT 'URL del material completo del curso online',
  `vid_tip_cur` text DEFAULT NULL COMMENT 'Video promocional del curso online',
  `fky_area` int(11) NOT NULL COMMENT 'Area a la que pertenece el curso: - Diseño Gráfico - Informática - Arquitectura - Comunicación Social',
  `fky_empresa` int(11) NOT NULL COMMENT 'Empresa que organiza el curso',
  `was_tip_cur` text DEFAULT NULL COMMENT 'URL del grupo de Whatsapp del Curso',
  `est_tip_cur` char(1) NOT NULL COMMENT 'Valores: A: Activo I: Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guarda los datos generales de los diferentes cursos que impa';

--
-- Volcado de datos para la tabla `tipo_curso`
--

INSERT INTO `tipo_curso` (`cod_tip_cur`, `nom_tip_cur`, `fky_usu_onl`, `hor_tip_cur`, `can_tip_cur`, `cer_tip_cur`, `des_tip_cur`, `dir_tip_cur`, `cla_tip_cur`, `obj_tip_cur`, `min_tip_cur`, `max_tip_cur`, `ava_tip_cur`, `mat_tip_cur`, `con_tip_cur`, `ico_tip_cur`, `car_tip_cur`, `sli_tip_cur`, `cao_tip_cur`, `arc_tip_cur`, `vid_tip_cur`, `fky_area`, `fky_empresa`, `was_tip_cur`, `est_tip_cur`) VALUES
(1, 'Revit', 1, 12, 12, 'asdasd', 'sadsadasd', 'asdsadasd', 45, 'afawf', 1, 2, 'f', 'asasfas', 'asdasd', 'sad', 'asd', 'asd', 'asd', NULL, NULL, 1, 1, NULL, 'A'),
(2, 'Illustrator', 1, 12, 12, 'asdasd', 'sadsadasd', 'asdsadasd', 45, 'afawf', 1, 2, 'f', 'asasfas', 'asdasd', 'sad', 'asd', 'asd', 'asd', NULL, NULL, 1, 1, NULL, 'A'),
(3, 'Programacion', 1, 12, 12, 'asdasd', 'sadsadasd', 'asdsadasd', 45, 'afawf', 1, 2, 'f', 'asasfas', 'asdasd', 'sad', 'asd', 'asd', 'asd', NULL, NULL, 1, 1, NULL, 'A'),
(4, 'Photoshop', 1, 12, 12, 'asdasd', 'sadsadasd', 'asdsadasd', 45, 'afawf', 1, 2, 'f', 'asasfas', 'asdasd', 'sad', 'asd', 'asd', 'asd', NULL, NULL, 1, 1, NULL, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_online`
--

CREATE TABLE `usuario_online` (
  `cod_usu_onl` int(11) NOT NULL,
  `nom_usu_onl` varchar(45) DEFAULT NULL,
  `ape_usu_onl` varchar(45) DEFAULT NULL,
  `ema_usu_onl` varchar(60) DEFAULT NULL,
  `cla_usu_onl` varchar(45) DEFAULT NULL,
  `reg_usu_onl` datetime DEFAULT NULL,
  `est_usu_onl` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_online`
--

INSERT INTO `usuario_online` (`cod_usu_onl`, `nom_usu_onl`, `ape_usu_onl`, `ema_usu_onl`, `cla_usu_onl`, `reg_usu_onl`, `est_usu_onl`) VALUES
(1, 'Jesus', 'Orejarena', 'jesusorejarena@gmail.com', 'Jesus1712.*', '2021-01-01 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `cod_vid` int(11) NOT NULL COMMENT 'Código del Video',
  `nom_vid` varchar(80) NOT NULL COMMENT 'Nombre o Título del Video',
  `pos_vid` int(11) NOT NULL COMMENT 'Posición del Video. Ejemplo 3/11',
  `fky_video_anterior` int(11) DEFAULT NULL,
  `fky_video_siguiente` int(11) DEFAULT NULL,
  `tie_vid` time NOT NULL COMMENT 'Tiempo del Video en Segundos',
  `cal_vid` char(1) NOT NULL COMMENT 'Indica si el video es calificable. Valores S o N',
  `des_vid` text NOT NULL COMMENT 'Descripción Publicitaria del Video',
  `blo_vid` text NOT NULL COMMENT 'Información del Blog',
  `glo_vid` text NOT NULL COMMENT 'Glosario del Video',
  `ata_vid` text NOT NULL COMMENT 'Atajos del teclado de cada video',
  `fky_tipo_curso` int(11) NOT NULL COMMENT 'Curso al que pertenece el video',
  `fky_video_modulo` int(11) DEFAULT 1 COMMENT 'Módulo al que pertenece el video',
  `por_vid` text DEFAULT NULL,
  `url_vid` text DEFAULT NULL COMMENT 'URL del video',
  `arc_vid` text NOT NULL COMMENT 'Archivos a Descargar para el Video',
  `est_vid` char(1) NOT NULL COMMENT 'Estatus del Video. A: Activo I: Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que guarda los videos de los cursos';

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`cod_vid`, `nom_vid`, `pos_vid`, `fky_video_anterior`, `fky_video_siguiente`, `tie_vid`, `cal_vid`, `des_vid`, `blo_vid`, `glo_vid`, `ata_vid`, `fky_tipo_curso`, `fky_video_modulo`, `por_vid`, `url_vid`, `arc_vid`, `est_vid`) VALUES
(1, 'Emprendimiento', 1, NULL, NULL, '05:00:00', 'A', 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 1, 1, 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'loremmmmmmmmmmmmmmmmmmmmmmloremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'loremmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario_video`
--
ALTER TABLE `comentario_video`
  ADD PRIMARY KEY (`cod_com_vid`),
  ADD KEY `fky_usu_onl` (`fky_usu_onl`),
  ADD KEY `fky_video` (`fky_video`);

--
-- Indices de la tabla `cursos_usuarios`
--
ALTER TABLE `cursos_usuarios`
  ADD PRIMARY KEY (`cod_cur_usu`),
  ADD KEY `fky_usuario` (`fky_usuario`),
  ADD KEY `fky_curso` (`fky_curso`);

--
-- Indices de la tabla `like_comentario`
--
ALTER TABLE `like_comentario`
  ADD PRIMARY KEY (`cod_lik_vid`),
  ADD KEY `fky_usu_onl` (`fky_usu_onl`),
  ADD KEY `fky_com_vid` (`fky_com_vid`);

--
-- Indices de la tabla `tipo_curso`
--
ALTER TABLE `tipo_curso`
  ADD PRIMARY KEY (`cod_tip_cur`);

--
-- Indices de la tabla `usuario_online`
--
ALTER TABLE `usuario_online`
  ADD PRIMARY KEY (`cod_usu_onl`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`cod_vid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario_video`
--
ALTER TABLE `comentario_video`
  MODIFY `cod_com_vid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código del comentario', AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `cursos_usuarios`
--
ALTER TABLE `cursos_usuarios`
  MODIFY `cod_cur_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `like_comentario`
--
ALTER TABLE `like_comentario`
  MODIFY `cod_lik_vid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código del like del comentario', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_curso`
--
ALTER TABLE `tipo_curso`
  MODIFY `cod_tip_cur` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código del Tipo de Curso. Autoincremental', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario_online`
--
ALTER TABLE `usuario_online`
  MODIFY `cod_usu_onl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `cod_vid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código del Video', AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario_video`
--
ALTER TABLE `comentario_video`
  ADD CONSTRAINT `comentario_video_ibfk_1` FOREIGN KEY (`fky_usu_onl`) REFERENCES `usuario_online` (`cod_usu_onl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_video_ibfk_2` FOREIGN KEY (`fky_video`) REFERENCES `video` (`cod_vid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cursos_usuarios`
--
ALTER TABLE `cursos_usuarios`
  ADD CONSTRAINT `fky_curso` FOREIGN KEY (`fky_curso`) REFERENCES `tipo_curso` (`cod_tip_cur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fky_usuario` FOREIGN KEY (`fky_usuario`) REFERENCES `usuario_online` (`cod_usu_onl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `like_comentario`
--
ALTER TABLE `like_comentario`
  ADD CONSTRAINT `like_comentario_ibfk_1` FOREIGN KEY (`fky_usu_onl`) REFERENCES `usuario_online` (`cod_usu_onl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_comentario_ibfk_2` FOREIGN KEY (`fky_com_vid`) REFERENCES `comentario_video` (`cod_com_vid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
