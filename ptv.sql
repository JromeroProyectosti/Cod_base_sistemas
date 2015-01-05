-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-04-2014 a las 19:58:16
-- Versión del servidor: 5.1.72-cll-lve
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto_cordillera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_ciudad`
--

CREATE TABLE IF NOT EXISTS `ptv_ciudad` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCiudad` varchar(250) NOT NULL,
  `IdRegion` int(11) NOT NULL,
  PRIMARY KEY (`IdCiudad`),
  KEY `IdRegion` (`IdRegion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `ptv_ciudad`
--

INSERT INTO `ptv_ciudad` (`IdCiudad`, `NombreCiudad`, `IdRegion`) VALUES
(1, 'Arica', 1),
(2, 'Parinacota', 1),
(3, 'Iquique', 2),
(4, 'El Tamarugal', 2),
(5, 'Antofagasta', 3),
(6, 'El Loa', 3),
(7, 'Tocopilla', 3),
(8, 'Chañaral', 4),
(9, 'Copiapó', 4),
(10, 'Huasco', 4),
(11, 'Choapa', 5),
(12, 'Elqui', 5),
(13, 'Limarí', 5),
(14, 'Isla de Pascua', 6),
(15, 'Los Andes', 6),
(16, 'Petorca', 6),
(17, 'Quillota', 6),
(18, 'San Antonio', 6),
(19, 'San Felipe de Aconcagua', 6),
(20, 'Valparaiso', 6),
(21, 'Chacabuco', 7),
(22, 'Cordillera', 7),
(23, 'Maipo', 7),
(24, 'Melipilla', 7),
(25, 'Santiago', 7),
(26, 'Talagante', 7),
(27, 'Cachapoal', 8),
(28, 'Cardenal Caro', 8),
(29, 'Colchagua', 8),
(30, 'Cauquenes', 9),
(31, 'Curicó', 9),
(32, 'Linares', 9),
(33, 'Talca', 9),
(34, 'Arauco', 10),
(35, 'Bio Bío', 10),
(36, 'Concepción', 10),
(37, 'Ñuble', 10),
(38, 'Cautín', 11),
(39, 'Malleco', 11),
(40, 'Valdivia', 12),
(41, 'Ranco', 12),
(42, 'Chiloé', 13),
(43, 'Llanquihue', 13),
(44, 'Osorno', 13),
(45, 'Palena', 13),
(46, 'Aisén', 14),
(47, 'Capitán Prat', 14),
(48, 'Coihaique', 14),
(49, 'General Carrera', 14),
(50, 'Antártica Chilena', 15),
(51, 'Magallanes', 15),
(52, 'Tierra del Fuego', 15),
(53, 'Última Esperanza', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_comuna`
--

CREATE TABLE IF NOT EXISTS `ptv_comuna` (
  `IdComuna` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComuna` varchar(250) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  PRIMARY KEY (`IdComuna`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Volcado de datos para la tabla `ptv_comuna`
--

INSERT INTO `ptv_comuna` (`IdComuna`, `NombreComuna`, `IdCiudad`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'General Lagos', 2),
(4, 'Putre', 2),
(5, 'Alto Hospicio', 3),
(6, 'Iquique', 3),
(7, 'Camiña', 4),
(8, 'Colchane', 4),
(9, 'Huara', 4),
(10, 'Pica', 4),
(11, 'Pozo Almonte', 4),
(12, 'Antofagasta', 5),
(13, 'Mejillones', 5),
(14, 'Sierra Gorda', 5),
(15, 'Taltal', 5),
(16, 'Calama', 6),
(17, 'Ollague', 6),
(18, 'San Pedro de Atacama', 6),
(19, 'María Elena', 7),
(20, 'Tocopilla', 7),
(21, 'Chañaral', 8),
(22, 'Diego de Almagro', 8),
(23, 'Caldera', 9),
(24, 'Copiapó', 9),
(25, 'Tierra Amarilla', 9),
(26, 'Alto del Carmen', 10),
(27, 'Freirina', 10),
(28, 'Huasco', 10),
(29, 'Vallenar', 10),
(30, 'Canela', 11),
(31, 'Illapel', 11),
(32, 'Los Vilos', 11),
(33, 'Salamanca', 11),
(34, 'Andacollo', 12),
(35, 'Coquimbo', 12),
(36, 'La Higuera', 12),
(37, 'La Serena', 12),
(38, 'Paihuaco', 12),
(39, 'Vicuña', 12),
(40, 'Combarbalá', 13),
(41, 'Monte Patria', 13),
(42, 'Ovalle', 13),
(43, 'Punitaqui', 13),
(44, 'Río Hurtado', 13),
(45, 'Isla de Pascua', 14),
(46, 'Calle Larga', 15),
(47, 'Los Andes', 15),
(48, 'Rinconada', 15),
(49, 'San Esteban', 15),
(50, 'La Ligua', 16),
(51, 'Papudo', 16),
(52, 'Petorca', 16),
(53, 'Zapallar', 16),
(54, 'Hijuelas', 17),
(55, 'La Calera', 17),
(56, 'La Cruz', 17),
(57, 'Limache', 17),
(58, 'Nogales', 17),
(59, 'Olmué', 17),
(60, 'Quillota', 17),
(61, 'Algarrobo', 18),
(62, 'Cartagena', 18),
(63, 'El Quisco', 18),
(64, 'El Tabo', 18),
(65, 'San Antonio', 18),
(66, 'Santo Domingo', 18),
(67, 'Catemu', 19),
(68, 'Llaillay', 19),
(69, 'Panquehue', 19),
(70, 'Putaendo', 19),
(71, 'San Felipe', 19),
(72, 'Santa María', 19),
(73, 'Casablanca', 20),
(74, 'Concón', 20),
(75, 'Juan Fernández', 20),
(76, 'Puchuncaví', 20),
(77, 'Quilpué', 20),
(78, 'Quintero', 20),
(79, 'Valparaíso', 20),
(80, 'Villa Alemana', 20),
(81, 'Viña del Mar', 20),
(82, 'Colina', 21),
(83, 'Lampa', 21),
(84, 'Tiltil', 21),
(85, 'Pirque', 22),
(86, 'Puente Alto', 22),
(87, 'San José de Maipo', 22),
(88, 'Buin', 23),
(89, 'Calera de Tango', 23),
(90, 'Paine', 23),
(91, 'San Bernardo', 23),
(92, 'Alhué', 24),
(93, 'Curacaví', 24),
(94, 'María Pinto', 24),
(95, 'Melipilla', 24),
(96, 'San Pedro', 24),
(97, 'Cerrillos', 25),
(98, 'Cerro Navia', 25),
(99, 'Conchalí', 25),
(100, 'El Bosque', 25),
(101, 'Estación Central', 25),
(102, 'Huechuraba', 25),
(103, 'Independencia', 25),
(104, 'La Cisterna', 25),
(105, 'La Granja', 25),
(106, 'La Florida', 25),
(107, 'La Pintana', 25),
(108, 'La Reina', 25),
(109, 'Las Condes', 25),
(110, 'Lo Barnechea', 25),
(111, 'Lo Espejo', 25),
(112, 'Lo Prado', 25),
(113, 'Macul', 25),
(114, 'Maipú', 25),
(115, 'Ñuñoa', 25),
(116, 'Pedro Aguirre Cerda', 25),
(117, 'Peñalolén', 25),
(118, 'Providencia', 25),
(119, 'Pudahuel', 25),
(120, 'Quilicura', 25),
(121, 'Quinta Normal', 25),
(122, 'Recoleta', 25),
(123, 'Renca', 25),
(124, 'San Miguel', 25),
(125, 'San Joaquín', 25),
(126, 'San Ramón', 25),
(127, 'Santiago', 25),
(128, 'Vitacura', 25),
(129, 'El Monte', 26),
(130, 'Isla de Maipo', 26),
(131, 'Padre Hurtado', 26),
(132, 'Peñaflor', 26),
(133, 'Talagante', 26),
(134, 'Codegua', 27),
(135, 'Coínco', 27),
(136, 'Coltauco', 27),
(137, 'Doñihue', 27),
(138, 'Graneros', 27),
(139, 'Las Cabras', 27),
(140, 'Machalí', 27),
(141, 'Malloa', 27),
(142, 'Mostazal', 27),
(143, 'Olivar', 27),
(144, 'Peumo', 27),
(145, 'Pichidegua', 27),
(146, 'Quinta de Tilcoco', 27),
(147, 'Rancagua', 27),
(148, 'Rengo', 27),
(149, 'Requínoa', 27),
(150, 'San Vicente de Tagua Tagua', 27),
(151, 'La Estrella', 28),
(152, 'Litueche', 28),
(153, 'Marchihue', 28),
(154, 'Navidad', 28),
(155, 'Peredones', 28),
(156, 'Pichilemu', 28),
(157, 'Chépica', 29),
(158, 'Chimbarongo', 29),
(159, 'Lolol', 29),
(160, 'Nancagua', 29),
(161, 'Palmilla', 29),
(162, 'Peralillo', 29),
(163, 'Placilla', 29),
(164, 'Pumanque', 29),
(165, 'San Fernando', 29),
(166, 'Santa Cruz', 29),
(167, 'Cauquenes', 30),
(168, 'Chanco', 30),
(169, 'Pelluhue', 30),
(170, 'Curicó', 31),
(171, 'Hualañé', 31),
(172, 'Licantén', 31),
(173, 'Molina', 31),
(174, 'Rauco', 31),
(175, 'Romeral', 31),
(176, 'Sagrada Familia', 31),
(177, 'Teno', 31),
(178, 'Vichuquén', 31),
(179, 'Colbún', 32),
(180, 'Linares', 32),
(181, 'Longaví', 32),
(182, 'Parral', 32),
(183, 'Retiro', 32),
(184, 'San Javier', 32),
(185, 'Villa Alegre', 32),
(186, 'Yerbas Buenas', 32),
(187, 'Constitución', 33),
(188, 'Curepto', 33),
(189, 'Empedrado', 33),
(190, 'Maule', 33),
(191, 'Pelarco', 33),
(192, 'Pencahue', 33),
(193, 'Río Claro', 33),
(194, 'San Clemente', 33),
(195, 'San Rafael', 33),
(196, 'Talca', 33),
(197, 'Arauco', 34),
(198, 'Cañete', 34),
(199, 'Contulmo', 34),
(200, 'Curanilahue', 34),
(201, 'Lebu', 34),
(202, 'Los Álamos', 34),
(203, 'Tirúa', 34),
(204, 'Alto Biobío', 35),
(205, 'Antuco', 35),
(206, 'Cabrero', 35),
(207, 'Laja', 35),
(208, 'Los Ángeles', 35),
(209, 'Mulchén', 35),
(210, 'Nacimiento', 35),
(211, 'Negrete', 35),
(212, 'Quilaco', 35),
(213, 'Quilleco', 35),
(214, 'San Rosendo', 35),
(215, 'Santa Bárbara', 35),
(216, 'Tucapel', 35),
(217, 'Yumbel', 35),
(218, 'Chiguayante', 36),
(219, 'Concepción', 36),
(220, 'Coronel', 36),
(221, 'Florida', 36),
(222, 'Hualpén', 36),
(223, 'Hualqui', 36),
(224, 'Lota', 36),
(225, 'Penco', 36),
(226, 'San Pedro de La Paz', 36),
(227, 'Santa Juana', 36),
(228, 'Talcahuano', 36),
(229, 'Tomé', 36),
(230, 'Bulnes', 37),
(231, 'Chillán', 37),
(232, 'Chillán Viejo', 37),
(233, 'Cobquecura', 37),
(234, 'Coelemu', 37),
(235, 'Coihueco', 37),
(236, 'El Carmen', 37),
(237, 'Ninhue', 37),
(238, 'Ñiquen', 37),
(239, 'Pemuco', 37),
(240, 'Pinto', 37),
(241, 'Portezuelo', 37),
(242, 'Quillón', 37),
(243, 'Quirihue', 37),
(244, 'Ránquil', 37),
(245, 'San Carlos', 37),
(246, 'San Fabián', 37),
(247, 'San Ignacio', 37),
(248, 'San Nicolás', 37),
(249, 'Treguaco', 37),
(250, 'Yungay', 37),
(251, 'Carahue', 38),
(252, 'Cholchol', 38),
(253, 'Cunco', 38),
(254, 'Curarrehue', 38),
(255, 'Freire', 38),
(256, 'Galvarino', 38),
(257, 'Gorbea', 38),
(258, 'Lautaro', 38),
(259, 'Loncoche', 38),
(260, 'Melipeuco', 38),
(261, 'Nueva Imperial', 38),
(262, 'Padre Las Casas', 38),
(263, 'Perquenco', 38),
(264, 'Pitrufquén', 38),
(265, 'Pucón', 38),
(266, 'Saavedra', 38),
(267, 'Temuco', 38),
(268, 'Teodoro Schmidt', 38),
(269, 'Toltén', 38),
(270, 'Vilcún', 38),
(271, 'Villarrica', 38),
(272, 'Angol', 39),
(273, 'Collipulli', 39),
(274, 'Curacautín', 39),
(275, 'Ercilla', 39),
(276, 'Lonquimay', 39),
(277, 'Los Sauces', 39),
(278, 'Lumaco', 39),
(279, 'Purén', 39),
(280, 'Renaico', 39),
(281, 'Traiguén', 39),
(282, 'Victoria', 39),
(283, 'Corral', 40),
(284, 'Lanco', 40),
(285, 'Los Lagos', 40),
(286, 'Máfil', 40),
(287, 'Mariquina', 40),
(288, 'Paillaco', 40),
(289, 'Panguipulli', 40),
(290, 'Valdivia', 40),
(291, 'Futrono', 41),
(292, 'La Unión', 41),
(293, 'Lago Ranco', 41),
(294, 'Río Bueno', 41),
(295, 'Ancud', 42),
(296, 'Castro', 42),
(297, 'Chonchi', 42),
(298, 'Curaco de Vélez', 42),
(299, 'Dalcahue', 42),
(300, 'Puqueldón', 42),
(301, 'Queilén', 42),
(302, 'Quemchi', 42),
(303, 'Quellón', 42),
(304, 'Quinchao', 42),
(305, 'Calbuco', 43),
(306, 'Cochamó', 43),
(307, 'Fresia', 43),
(308, 'Frutillar', 43),
(309, 'Llanquihue', 43),
(310, 'Los Muermos', 43),
(311, 'Maullín', 43),
(312, 'Puerto Montt', 43),
(313, 'Puerto Varas', 43),
(314, 'Osorno', 44),
(315, 'Puero Octay', 44),
(316, 'Purranque', 44),
(317, 'Puyehue', 44),
(318, 'Río Negro', 44),
(319, 'San Juan de la Costa', 44),
(320, 'San Pablo', 44),
(321, 'Chaitén', 45),
(322, 'Futaleufú', 45),
(323, 'Hualaihué', 45),
(324, 'Palena', 45),
(325, 'Aisén', 46),
(326, 'Cisnes', 46),
(327, 'Guaitecas', 46),
(328, 'Cochrane', 47),
(329, 'Ohiggins', 47),
(330, 'Tortel', 47),
(331, 'Coihaique', 48),
(332, 'Lago Verde', 48),
(333, 'Chile Chico', 49),
(334, 'Río Ibáñez', 49),
(335, 'Antártica', 50),
(336, 'Cabo de Hornos', 50),
(337, 'Laguna Blanca', 51),
(338, 'Punta Arenas', 51),
(339, 'Río Verde', 51),
(340, 'San Gregorio', 51),
(341, 'Porvenir', 52),
(342, 'Primavera', 52),
(343, 'Timaukel', 52),
(344, 'Natales', 53),
(345, 'Torres del Paine', 53);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_empresa`
--

CREATE TABLE IF NOT EXISTS `ptv_empresa` (
  `RutEmpresa` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `NombreEmpresa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `RazonSocial` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Direccion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `IdTipoempresa` int(11) NOT NULL,
  `IdMaestra` int(11) NOT NULL,
  PRIMARY KEY (`RutEmpresa`),
  KEY `IdTipoempresa` (`IdTipoempresa`),
  KEY `IdTipoempresa_2` (`IdTipoempresa`),
  KEY `IdMaestra` (`IdMaestra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ptv_empresa`
--

INSERT INTO `ptv_empresa` (`RutEmpresa`, `NombreEmpresa`, `RazonSocial`, `Telefono`, `Direccion`, `IdTipoempresa`, `IdMaestra`) VALUES
('11.111.111-1', 'KAFUS', 'IMPORTADORA KAFUS LTDA.', '22222222', 'ESTACION CENTRAL 22', 1, 1),
('22.222.222-2', 'ROMERAL', 'COMERCIALIZADORA ROMERAL LTDA.', '22222222', 'SAN MIGUEL 22', 2, 2),
('33.333.333-3', 'VITAL', 'DISTRIBUIDORA VITAL S.A.', '33333333', 'MAIPU 33', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_maestra`
--

CREATE TABLE IF NOT EXISTS `ptv_maestra` (
  `IdMaestra` int(11) NOT NULL AUTO_INCREMENT,
  `Logo` varchar(50) NOT NULL,
  PRIMARY KEY (`IdMaestra`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ptv_maestra`
--

INSERT INTO `ptv_maestra` (`IdMaestra`, `Logo`) VALUES
(1, 'tenno'),
(2, 'otro'),
(3, 'otro mas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_movimiento`
--

CREATE TABLE IF NOT EXISTS `ptv_movimiento` (
  `IdMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `FechaVenta` datetime NOT NULL,
  `Venta` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `ValorUnitario` int(11) NOT NULL,
  `ValorVenta` int(11) NOT NULL,
  `UtilidadVenta` int(11) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `IdStock` int(11) NOT NULL,
  PRIMARY KEY (`IdMovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_producto`
--

CREATE TABLE IF NOT EXISTS `ptv_producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Sabor` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `PrecioCompra` int(11) NOT NULL,
  `PrecioVenta` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Utilidad` int(11) NOT NULL,
  `IdEmpresa` int(11) NOT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `IdEmpresa` (`IdEmpresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `ptv_producto`
--

INSERT INTO `ptv_producto` (`IdProducto`, `Codigo`, `Descripcion`, `Sabor`, `PrecioCompra`, `PrecioVenta`, `Cantidad`, `Utilidad`, `IdEmpresa`) VALUES
(1, '7802820600100', 'AGUA MINERAL CON GAS', 'NATURAL', 400, 500, 1000, 100, 2),
(8, '1234564889', 'CocaCola 1.5', 'Normal', 500, 700, 0, 200, 2),
(9, '1234564889', 'CocaCola 1.5', 'Normal', 500, 700, 0, 200, 2),
(10, '789524165', 'PASTILLAS LIGNI', 'SIN SABOR', 1000, 1500, 0, 500, 2),
(11, '097786738', 'Nectar Wats', 'Naranja', 200, 500, 0, 300, 2),
(16, '0900980980', 'CREMA', 'FRUTILLA', 9000, 90000, 0, 81000, 12),
(17, '9808908', 'prueba', 'prueba', 900, 1000, 0, 100, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_region`
--

CREATE TABLE IF NOT EXISTS `ptv_region` (
  `IdRegion` int(11) NOT NULL AUTO_INCREMENT,
  `NombreRegion` varchar(250) NOT NULL,
  `DescripcionRegion` varchar(250) NOT NULL,
  PRIMARY KEY (`IdRegion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ptv_region`
--

INSERT INTO `ptv_region` (`IdRegion`, `NombreRegion`, `DescripcionRegion`) VALUES
(1, 'Arica y Parinacota', 'XV'),
(2, 'Tarapacá', 'I'),
(3, 'Antofagasta', 'II'),
(4, 'Atacama', 'III'),
(5, 'Coquimbo', 'IV'),
(6, 'Valparaiso', 'V'),
(7, 'Metropolitana de Santiago', 'RM'),
(8, 'Libertador General Bernardo OHiggins', 'VI'),
(9, 'Maule', 'VII'),
(10, 'Biobío', 'VIII'),
(11, 'La Araucanía', 'IX'),
(12, 'Los Ríos', 'XIV'),
(13, 'Los Lagos', 'X'),
(14, 'Aisén del General Carlos Ibáñez del Campo', 'XI'),
(15, 'Magallanes y de la Antártica Chilena', 'XII');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_rol`
--

CREATE TABLE IF NOT EXISTS `ptv_rol` (
  `IdRol` int(11) NOT NULL AUTO_INCREMENT,
  `TipoRol` varchar(50) NOT NULL,
  PRIMARY KEY (`IdRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ptv_rol`
--

INSERT INTO `ptv_rol` (`IdRol`, `TipoRol`) VALUES
(1, 'Administrador'),
(2, 'Vendedor'),
(3, 'Bodegero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_stock`
--

CREATE TABLE IF NOT EXISTS `ptv_stock` (
  `IdStock` int(11) NOT NULL AUTO_INCREMENT,
  `FechaIngreso` datetime NOT NULL,
  `DocumentoCompra` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `CantidadAnterior` int(11) NOT NULL,
  `CantidadEntrante` int(11) NOT NULL,
  `CantidadTotal` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  PRIMARY KEY (`IdStock`),
  KEY `IdProducto` (`IdProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ptv_stock`
--

INSERT INTO `ptv_stock` (`IdStock`, `FechaIngreso`, `DocumentoCompra`, `CantidadAnterior`, `CantidadEntrante`, `CantidadTotal`, `IdProducto`) VALUES
(1, '0000-00-00 00:00:00', 'G1234', 1000, 1000, 1000, 1),
(2, '0000-00-00 00:00:00', 'ge8989', 0, 2000, 2000, 15),
(3, '0000-00-00 00:00:00', 'GH900', 0, 89, 89, 16),
(4, '0000-00-00 00:00:00', 'io9000', 0, 78, 78, 17),
(5, '0000-00-00 00:00:00', 'GC958', 0, 80, 80, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_sucursal`
--

CREATE TABLE IF NOT EXISTS `ptv_sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `RutEmpresa` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `NombreSucursal` varchar(250) NOT NULL,
  `DireccionSucursal` varchar(250) NOT NULL,
  `TelefonoSucursal` varchar(50) NOT NULL,
  `IdComuna` int(11) NOT NULL,
  `IdMaestra` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`),
  KEY `RutEmpresa` (`RutEmpresa`,`IdComuna`,`IdMaestra`),
  KEY `RutEmpresa_2` (`RutEmpresa`),
  KEY `IdComuna` (`IdComuna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ptv_sucursal`
--

INSERT INTO `ptv_sucursal` (`IdSucursal`, `RutEmpresa`, `NombreSucursal`, `DireccionSucursal`, `TelefonoSucursal`, `IdComuna`, `IdMaestra`) VALUES
(1, '11.111.111-1', 'Sucursal 1', 'Direccion 1', '', 3, 0),
(2, '11.111.111-1', 'Sucursal 2', 'Direccion 2', '', 109, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_sucursalusuario`
--

CREATE TABLE IF NOT EXISTS `ptv_sucursalusuario` (
  `IdSucursal` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  KEY `IdSucursal` (`IdSucursal`,`IdUsuario`),
  KEY `IdSucursal_2` (`IdSucursal`),
  KEY `IdUsuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ptv_sucursalusuario`
--

INSERT INTO `ptv_sucursalusuario` (`IdSucursal`, `IdUsuario`) VALUES
(1, 433),
(1, 439),
(2, 433),
(2, 437),
(2, 438),
(2, 439);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_tipoempresa`
--

CREATE TABLE IF NOT EXISTS `ptv_tipoempresa` (
  `IdTipoempresa` int(11) NOT NULL AUTO_INCREMENT,
  `TipoEmpresa` varchar(50) NOT NULL,
  PRIMARY KEY (`IdTipoempresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ptv_tipoempresa`
--

INSERT INTO `ptv_tipoempresa` (`IdTipoempresa`, `TipoEmpresa`) VALUES
(1, 'EMPRESA'),
(2, 'PROVEEDOR'),
(3, 'CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ptv_usuario`
--

CREATE TABLE IF NOT EXISTS `ptv_usuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `IdRol` int(11) NOT NULL,
  `NombreUsuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Activo` int(11) NOT NULL,
  `FechaRegistro` datetime NOT NULL,
  `IdMaestra` int(11) NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `TipoPerfil` (`IdRol`,`IdMaestra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=440 ;

--
-- Volcado de datos para la tabla `ptv_usuario`
--

INSERT INTO `ptv_usuario` (`IdUsuario`, `IdRol`, `NombreUsuario`, `Apellido`, `Correo`, `Usuario`, `Clave`, `Activo`, `FechaRegistro`, `IdMaestra`) VALUES
(433, 1, 'MARCELO', 'FUENTES', 'mfuentes@kafus.cl', 'mfuentes', '12345678', 1, '0000-00-00 00:00:00', 1),
(434, 2, 'HANS', 'ZUÑIGA', 'hzuniga@romeral.cl', 'hzuniga', '12345678', 2, '0000-00-00 00:00:00', 2),
(435, 3, 'RODRIGO', 'BARRIENTOS', 'rbarrientos@vital.cl', 'rbarrientos', '12345678', 3, '0000-00-00 00:00:00', 3),
(436, 1, 'Jose', 'Pepe', 'jpepe@kafus.cl', 'jpepe', '12345678', 1, '0000-00-00 00:00:00', 1),
(437, 1, 'Jose', 'Pepe', 'jpepe@kafus.cl', 'jpepe', '12345678', 0, '0000-00-00 00:00:00', 1),
(438, 1, 'Crisitan', 'Pajamillo', 'cpaji@kafus.cl', 'pajis', '12345678', 0, '0000-00-00 00:00:00', 1),
(439, 1, 'MArcelo', 'perez', 'mperes@kafus.cl', 'mperez', '12345678', 1, '0000-00-00 00:00:00', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ptv_ciudad`
--
ALTER TABLE `ptv_ciudad`
  ADD CONSTRAINT `ptv_ciudad_ibfk_1` FOREIGN KEY (`IdRegion`) REFERENCES `ptv_region` (`IdRegion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ptv_comuna`
--
ALTER TABLE `ptv_comuna`
  ADD CONSTRAINT `ptv_comuna_ibfk_1` FOREIGN KEY (`IdCiudad`) REFERENCES `ptv_ciudad` (`IdCiudad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ptv_empresa`
--
ALTER TABLE `ptv_empresa`
  ADD CONSTRAINT `ptv_empresa_ibfk_1` FOREIGN KEY (`IdMaestra`) REFERENCES `ptv_maestra` (`IdMaestra`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ptv_empresa_ibfk_2` FOREIGN KEY (`IdTipoempresa`) REFERENCES `ptv_tipoempresa` (`IdTipoempresa`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ptv_sucursal`
--
ALTER TABLE `ptv_sucursal`
  ADD CONSTRAINT `ptv_sucursal_ibfk_1` FOREIGN KEY (`RutEmpresa`) REFERENCES `ptv_empresa` (`RutEmpresa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ptv_sucursal_ibfk_2` FOREIGN KEY (`IdComuna`) REFERENCES `ptv_comuna` (`IdComuna`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ptv_sucursalusuario`
--
ALTER TABLE `ptv_sucursalusuario`
  ADD CONSTRAINT `suc_rest` FOREIGN KEY (`IdSucursal`) REFERENCES `ptv_sucursal` (`IdSucursal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_rest` FOREIGN KEY (`IdUsuario`) REFERENCES `ptv_usuario` (`IdUsuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ptv_usuario`
--
ALTER TABLE `ptv_usuario`
  ADD CONSTRAINT `rol_rest` FOREIGN KEY (`IdRol`) REFERENCES `ptv_rol` (`IdRol`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
