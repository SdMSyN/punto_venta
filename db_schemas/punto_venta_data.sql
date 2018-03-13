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
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created`, `created_by_user_id`, `activo`, `img`) VALUES
(47, 'Reparacion', '2018-02-28', 19, 1, 'Reparacion.jpg'),
(48, 'Mantenimiento', '2018-02-28', 19, 1, 'Mantenimiento.jpg'),
(49, 'Software', '2018-02-28', 19, 1, 'Software.png'),
(50, 'Sabanas', '2018-02-28', 19, 1, 'Sabanas.jpg');

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
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `cant_minima`, `img`, `descripcion`, `activo`, `codigo_barras`, `categoria_id`, `subcategoria_id`, `created`, `updated`, `created_by_user_id`, `updated_by_user_id`) VALUES
(5, 'Cotizador', 950.00, 8, '0.png', 'Cotizador integral', 1, '12345678', 49, 710, '2018-02-28', '2018-02-28', 19, 19),
(6, 'Ventas', 950.00, 5, '1.jpg', 'Sistema de ventas, donaciÃ³n y descuento', 1, '87654321', 49, 710, '2018-02-28', '2018-02-28', 19, 19),
(7, 'Monserrat', 300.00, 3, '2.jpg', 'Sabana Monserrat', 1, '7890254380125', 50, 712, '2018-02-28', '2018-02-28', 19, 19);

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `nombre`, `activo`, `categoria_id`, `created`, `create_by`, `updated`, `update_by`, `img`) VALUES
(706, 'ReparaciÃ³n PC', 1, 47, '2018-02-28', 19, '2018-02-28', 19, 'Reparacion_PC.jpg'),
(707, 'Reparacion Laptop', 1, 47, '2018-02-28', 19, '2018-02-28', 19, 'Reparacion Laptop.jpg'),
(708, 'Office', 1, 48, '2018-02-28', 19, '2018-02-28', 19, 'Office.jpg'),
(709, 'Antivirus', 1, 48, '2018-02-28', 19, '2018-02-28', 19, 'Antivirus.jpg'),
(710, 'Punto de Venta', 1, 49, '2018-02-28', 19, '2018-02-28', 19, 'Punto de Venta.png'),
(711, 'Sistema Escolar', 1, 49, '2018-02-28', 19, '2018-02-28', 19, 'Sistema Escolar.png'),
(712, 'Matrimoniales', 1, 50, '2018-02-28', 19, '2018-02-28', 19, 'Matrimoniales.jpg');

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `nombre`, `direccion`, `rfc`, `cp`, `tel`, `num_sess`, `latitud`, `longitud`, `password`, `created`, `updated`, `activo`) VALUES
(13, 'Software de Mexico: Soluciones y Negocios', 'Av. Revolucion No. 168, Acxotla del rio', 'SMS170220PT9', 90160, '24612317894', 2, '', '', '12345678', '2018-02-28', '2018-02-28', 1),
(14, 'Karla', 'Ignacio Zaragoza No. 1', 'JUAJ910191FG1', 90810, '23566788', 2, '19.3188808', '-98.1799204', '1234', '2018-02-28', '2018-02-28', 1);

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `ap`, `am`, `user`, `password`, `perfil_id`, `direccion`, `num_int`, `num_ext`, `colonia`, `municipio`, `telefono`, `celular`, `created`, `updated`, `fec_nac`, `activo`) VALUES
(19, 'Luigi', 'Perez', 'Calzada', 'GianBros', 123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-28', '2018-02-28', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
