-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2018 a las 18:33:37
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `punto_venta`
--

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id`, `nombre`) VALUES
(0, 'DESACTIVO'),
(1, 'ACTIVO');

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `perfil`) VALUES
(1, 'GERENTE'),
(2, 'REPARTIDOR '),
(3, 'VENDEDOR');

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `nombre`, `direccion`, `rfc`, `cp`, `tel`, `num_sess`, `latitud`, `longitud`, `password`, `created`, `updated`, `activo`) VALUES
(13, 'Software de Mexico: Soluciones y Negocios', 'Av. Revolucion No. 168, Acxotla del rio', 'SMS170220PT9', 90160, '24612317894', 2, '', '', '12345678', '2018-02-28', '2018-02-28', 1);

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `ap`, `am`, `user`, `password`, `perfil_id`, `direccion`, `num_int`, `num_ext`, `colonia`, `municipio`, `telefono`, `celular`, `created`, `updated`, `fec_nac`, `activo`) VALUES
(19, 'Luigi', 'Perez', 'Calzada', 'GianBros', 123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-28', '2018-02-28', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
