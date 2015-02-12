-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 12-02-2015 a las 06:03:01
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `mydb`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ciudad`
-- 

CREATE TABLE `ciudad` (
  `IdCiudad` int(11) NOT NULL auto_increment,
  `NombreCiudad` varchar(250) NOT NULL,
  `IdRegion` int(11) NOT NULL,
  PRIMARY KEY  (`IdCiudad`),
  KEY `IdRegion` (`IdRegion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- 
-- Volcar la base de datos para la tabla `ciudad`
-- 

INSERT INTO `ciudad` VALUES (1, 'Arica', 1);
INSERT INTO `ciudad` VALUES (2, 'Parinacota', 1);
INSERT INTO `ciudad` VALUES (3, 'Iquique', 2);
INSERT INTO `ciudad` VALUES (4, 'El Tamarugal', 2);
INSERT INTO `ciudad` VALUES (5, 'Antofagasta', 3);
INSERT INTO `ciudad` VALUES (6, 'El Loa', 3);
INSERT INTO `ciudad` VALUES (7, 'Tocopilla', 3);
INSERT INTO `ciudad` VALUES (8, 'Chañaral', 4);
INSERT INTO `ciudad` VALUES (9, 'Copiapó', 4);
INSERT INTO `ciudad` VALUES (10, 'Huasco', 4);
INSERT INTO `ciudad` VALUES (11, 'Choapa', 5);
INSERT INTO `ciudad` VALUES (12, 'Elqui', 5);
INSERT INTO `ciudad` VALUES (13, 'Limarí', 5);
INSERT INTO `ciudad` VALUES (14, 'Isla de Pascua', 6);
INSERT INTO `ciudad` VALUES (15, 'Los Andes', 6);
INSERT INTO `ciudad` VALUES (16, 'Petorca', 6);
INSERT INTO `ciudad` VALUES (17, 'Quillota', 6);
INSERT INTO `ciudad` VALUES (18, 'San Antonio', 6);
INSERT INTO `ciudad` VALUES (19, 'San Felipe de Aconcagua', 6);
INSERT INTO `ciudad` VALUES (20, 'Valparaiso', 6);
INSERT INTO `ciudad` VALUES (21, 'Chacabuco', 7);
INSERT INTO `ciudad` VALUES (22, 'Cordillera', 7);
INSERT INTO `ciudad` VALUES (23, 'Maipo', 7);
INSERT INTO `ciudad` VALUES (24, 'Melipilla', 7);
INSERT INTO `ciudad` VALUES (25, 'Santiago', 7);
INSERT INTO `ciudad` VALUES (26, 'Talagante', 7);
INSERT INTO `ciudad` VALUES (27, 'Cachapoal', 8);
INSERT INTO `ciudad` VALUES (28, 'Cardenal Caro', 8);
INSERT INTO `ciudad` VALUES (29, 'Colchagua', 8);
INSERT INTO `ciudad` VALUES (30, 'Cauquenes', 9);
INSERT INTO `ciudad` VALUES (31, 'Curicó', 9);
INSERT INTO `ciudad` VALUES (32, 'Linares', 9);
INSERT INTO `ciudad` VALUES (33, 'Talca', 9);
INSERT INTO `ciudad` VALUES (34, 'Arauco', 10);
INSERT INTO `ciudad` VALUES (35, 'Bio Bío', 10);
INSERT INTO `ciudad` VALUES (36, 'Concepción', 10);
INSERT INTO `ciudad` VALUES (37, 'Ñuble', 10);
INSERT INTO `ciudad` VALUES (38, 'Cautín', 11);
INSERT INTO `ciudad` VALUES (39, 'Malleco', 11);
INSERT INTO `ciudad` VALUES (40, 'Valdivia', 12);
INSERT INTO `ciudad` VALUES (41, 'Ranco', 12);
INSERT INTO `ciudad` VALUES (42, 'Chiloé', 13);
INSERT INTO `ciudad` VALUES (43, 'Llanquihue', 13);
INSERT INTO `ciudad` VALUES (44, 'Osorno', 13);
INSERT INTO `ciudad` VALUES (45, 'Palena', 13);
INSERT INTO `ciudad` VALUES (46, 'Aisén', 14);
INSERT INTO `ciudad` VALUES (47, 'Capitán Prat', 14);
INSERT INTO `ciudad` VALUES (48, 'Coihaique', 14);
INSERT INTO `ciudad` VALUES (49, 'General Carrera', 14);
INSERT INTO `ciudad` VALUES (50, 'Antártica Chilena', 15);
INSERT INTO `ciudad` VALUES (51, 'Magallanes', 15);
INSERT INTO `ciudad` VALUES (52, 'Tierra del Fuego', 15);
INSERT INTO `ciudad` VALUES (53, 'Última Esperanza', 15);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `compras`
-- 

CREATE TABLE `compras` (
  `IdCompra` int(11) NOT NULL auto_increment,
  `idProveedor` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `FecharegistroCompra` datetime default NULL,
  `FechaingresoCompra` datetime default NULL,
  `Comprascol` varchar(45) default NULL,
  PRIMARY KEY  (`IdCompra`),
  KEY `fk_Compra_Usuarios1_idx` (`idUsuario`),
  KEY `fk_Compra_Proveedores1` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `compras`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comuna`
-- 

CREATE TABLE `comuna` (
  `IdComuna` int(11) NOT NULL auto_increment,
  `NombreComuna` varchar(250) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  PRIMARY KEY  (`IdComuna`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

-- 
-- Volcar la base de datos para la tabla `comuna`
-- 

INSERT INTO `comuna` VALUES (1, 'Arica', 1);
INSERT INTO `comuna` VALUES (2, 'Camarones', 1);
INSERT INTO `comuna` VALUES (3, 'General Lagos', 2);
INSERT INTO `comuna` VALUES (4, 'Putre', 2);
INSERT INTO `comuna` VALUES (5, 'Alto Hospicio', 3);
INSERT INTO `comuna` VALUES (6, 'Iquique', 3);
INSERT INTO `comuna` VALUES (7, 'Camiña', 4);
INSERT INTO `comuna` VALUES (8, 'Colchane', 4);
INSERT INTO `comuna` VALUES (9, 'Huara', 4);
INSERT INTO `comuna` VALUES (10, 'Pica', 4);
INSERT INTO `comuna` VALUES (11, 'Pozo Almonte', 4);
INSERT INTO `comuna` VALUES (12, 'Antofagasta', 5);
INSERT INTO `comuna` VALUES (13, 'Mejillones', 5);
INSERT INTO `comuna` VALUES (14, 'Sierra Gorda', 5);
INSERT INTO `comuna` VALUES (15, 'Taltal', 5);
INSERT INTO `comuna` VALUES (16, 'Calama', 6);
INSERT INTO `comuna` VALUES (17, 'Ollague', 6);
INSERT INTO `comuna` VALUES (18, 'San Pedro de Atacama', 6);
INSERT INTO `comuna` VALUES (19, 'María Elena', 7);
INSERT INTO `comuna` VALUES (20, 'Tocopilla', 7);
INSERT INTO `comuna` VALUES (21, 'Chañaral', 8);
INSERT INTO `comuna` VALUES (22, 'Diego de Almagro', 8);
INSERT INTO `comuna` VALUES (23, 'Caldera', 9);
INSERT INTO `comuna` VALUES (24, 'Copiapó', 9);
INSERT INTO `comuna` VALUES (25, 'Tierra Amarilla', 9);
INSERT INTO `comuna` VALUES (26, 'Alto del Carmen', 10);
INSERT INTO `comuna` VALUES (27, 'Freirina', 10);
INSERT INTO `comuna` VALUES (28, 'Huasco', 10);
INSERT INTO `comuna` VALUES (29, 'Vallenar', 10);
INSERT INTO `comuna` VALUES (30, 'Canela', 11);
INSERT INTO `comuna` VALUES (31, 'Illapel', 11);
INSERT INTO `comuna` VALUES (32, 'Los Vilos', 11);
INSERT INTO `comuna` VALUES (33, 'Salamanca', 11);
INSERT INTO `comuna` VALUES (34, 'Andacollo', 12);
INSERT INTO `comuna` VALUES (35, 'Coquimbo', 12);
INSERT INTO `comuna` VALUES (36, 'La Higuera', 12);
INSERT INTO `comuna` VALUES (37, 'La Serena', 12);
INSERT INTO `comuna` VALUES (38, 'Paihuaco', 12);
INSERT INTO `comuna` VALUES (39, 'Vicuña', 12);
INSERT INTO `comuna` VALUES (40, 'Combarbalá', 13);
INSERT INTO `comuna` VALUES (41, 'Monte Patria', 13);
INSERT INTO `comuna` VALUES (42, 'Ovalle', 13);
INSERT INTO `comuna` VALUES (43, 'Punitaqui', 13);
INSERT INTO `comuna` VALUES (44, 'Río Hurtado', 13);
INSERT INTO `comuna` VALUES (45, 'Isla de Pascua', 14);
INSERT INTO `comuna` VALUES (46, 'Calle Larga', 15);
INSERT INTO `comuna` VALUES (47, 'Los Andes', 15);
INSERT INTO `comuna` VALUES (48, 'Rinconada', 15);
INSERT INTO `comuna` VALUES (49, 'San Esteban', 15);
INSERT INTO `comuna` VALUES (50, 'La Ligua', 16);
INSERT INTO `comuna` VALUES (51, 'Papudo', 16);
INSERT INTO `comuna` VALUES (52, 'Petorca', 16);
INSERT INTO `comuna` VALUES (53, 'Zapallar', 16);
INSERT INTO `comuna` VALUES (54, 'Hijuelas', 17);
INSERT INTO `comuna` VALUES (55, 'La Calera', 17);
INSERT INTO `comuna` VALUES (56, 'La Cruz', 17);
INSERT INTO `comuna` VALUES (57, 'Limache', 17);
INSERT INTO `comuna` VALUES (58, 'Nogales', 17);
INSERT INTO `comuna` VALUES (59, 'Olmué', 17);
INSERT INTO `comuna` VALUES (60, 'Quillota', 17);
INSERT INTO `comuna` VALUES (61, 'Algarrobo', 18);
INSERT INTO `comuna` VALUES (62, 'Cartagena', 18);
INSERT INTO `comuna` VALUES (63, 'El Quisco', 18);
INSERT INTO `comuna` VALUES (64, 'El Tabo', 18);
INSERT INTO `comuna` VALUES (65, 'San Antonio', 18);
INSERT INTO `comuna` VALUES (66, 'Santo Domingo', 18);
INSERT INTO `comuna` VALUES (67, 'Catemu', 19);
INSERT INTO `comuna` VALUES (68, 'Llaillay', 19);
INSERT INTO `comuna` VALUES (69, 'Panquehue', 19);
INSERT INTO `comuna` VALUES (70, 'Putaendo', 19);
INSERT INTO `comuna` VALUES (71, 'San Felipe', 19);
INSERT INTO `comuna` VALUES (72, 'Santa María', 19);
INSERT INTO `comuna` VALUES (73, 'Casablanca', 20);
INSERT INTO `comuna` VALUES (74, 'Concón', 20);
INSERT INTO `comuna` VALUES (75, 'Juan Fernández', 20);
INSERT INTO `comuna` VALUES (76, 'Puchuncaví', 20);
INSERT INTO `comuna` VALUES (77, 'Quilpué', 20);
INSERT INTO `comuna` VALUES (78, 'Quintero', 20);
INSERT INTO `comuna` VALUES (79, 'Valparaíso', 20);
INSERT INTO `comuna` VALUES (80, 'Villa Alemana', 20);
INSERT INTO `comuna` VALUES (81, 'Viña del Mar', 20);
INSERT INTO `comuna` VALUES (82, 'Colina', 21);
INSERT INTO `comuna` VALUES (83, 'Lampa', 21);
INSERT INTO `comuna` VALUES (84, 'Tiltil', 21);
INSERT INTO `comuna` VALUES (85, 'Pirque', 22);
INSERT INTO `comuna` VALUES (86, 'Puente Alto', 22);
INSERT INTO `comuna` VALUES (87, 'San José de Maipo', 22);
INSERT INTO `comuna` VALUES (88, 'Buin', 23);
INSERT INTO `comuna` VALUES (89, 'Calera de Tango', 23);
INSERT INTO `comuna` VALUES (90, 'Paine', 23);
INSERT INTO `comuna` VALUES (91, 'San Bernardo', 23);
INSERT INTO `comuna` VALUES (92, 'Alhué', 24);
INSERT INTO `comuna` VALUES (93, 'Curacaví', 24);
INSERT INTO `comuna` VALUES (94, 'María Pinto', 24);
INSERT INTO `comuna` VALUES (95, 'Melipilla', 24);
INSERT INTO `comuna` VALUES (96, 'San Pedro', 24);
INSERT INTO `comuna` VALUES (97, 'Cerrillos', 25);
INSERT INTO `comuna` VALUES (98, 'Cerro Navia', 25);
INSERT INTO `comuna` VALUES (99, 'Conchalí', 25);
INSERT INTO `comuna` VALUES (100, 'El Bosque', 25);
INSERT INTO `comuna` VALUES (101, 'Estación Central', 25);
INSERT INTO `comuna` VALUES (102, 'Huechuraba', 25);
INSERT INTO `comuna` VALUES (103, 'Independencia', 25);
INSERT INTO `comuna` VALUES (104, 'La Cisterna', 25);
INSERT INTO `comuna` VALUES (105, 'La Granja', 25);
INSERT INTO `comuna` VALUES (106, 'La Florida', 25);
INSERT INTO `comuna` VALUES (107, 'La Pintana', 25);
INSERT INTO `comuna` VALUES (108, 'La Reina', 25);
INSERT INTO `comuna` VALUES (109, 'Las Condes', 25);
INSERT INTO `comuna` VALUES (110, 'Lo Barnechea', 25);
INSERT INTO `comuna` VALUES (111, 'Lo Espejo', 25);
INSERT INTO `comuna` VALUES (112, 'Lo Prado', 25);
INSERT INTO `comuna` VALUES (113, 'Macul', 25);
INSERT INTO `comuna` VALUES (114, 'Maipú', 25);
INSERT INTO `comuna` VALUES (115, 'Ñuñoa', 25);
INSERT INTO `comuna` VALUES (116, 'Pedro Aguirre Cerda', 25);
INSERT INTO `comuna` VALUES (117, 'Peñalolén', 25);
INSERT INTO `comuna` VALUES (118, 'Providencia', 25);
INSERT INTO `comuna` VALUES (119, 'Pudahuel', 25);
INSERT INTO `comuna` VALUES (120, 'Quilicura', 25);
INSERT INTO `comuna` VALUES (121, 'Quinta Normal', 25);
INSERT INTO `comuna` VALUES (122, 'Recoleta', 25);
INSERT INTO `comuna` VALUES (123, 'Renca', 25);
INSERT INTO `comuna` VALUES (124, 'San Miguel', 25);
INSERT INTO `comuna` VALUES (125, 'San Joaquín', 25);
INSERT INTO `comuna` VALUES (126, 'San Ramón', 25);
INSERT INTO `comuna` VALUES (127, 'Santiago', 25);
INSERT INTO `comuna` VALUES (128, 'Vitacura', 25);
INSERT INTO `comuna` VALUES (129, 'El Monte', 26);
INSERT INTO `comuna` VALUES (130, 'Isla de Maipo', 26);
INSERT INTO `comuna` VALUES (131, 'Padre Hurtado', 26);
INSERT INTO `comuna` VALUES (132, 'Peñaflor', 26);
INSERT INTO `comuna` VALUES (133, 'Talagante', 26);
INSERT INTO `comuna` VALUES (134, 'Codegua', 27);
INSERT INTO `comuna` VALUES (135, 'Coínco', 27);
INSERT INTO `comuna` VALUES (136, 'Coltauco', 27);
INSERT INTO `comuna` VALUES (137, 'Doñihue', 27);
INSERT INTO `comuna` VALUES (138, 'Graneros', 27);
INSERT INTO `comuna` VALUES (139, 'Las Cabras', 27);
INSERT INTO `comuna` VALUES (140, 'Machalí', 27);
INSERT INTO `comuna` VALUES (141, 'Malloa', 27);
INSERT INTO `comuna` VALUES (142, 'Mostazal', 27);
INSERT INTO `comuna` VALUES (143, 'Olivar', 27);
INSERT INTO `comuna` VALUES (144, 'Peumo', 27);
INSERT INTO `comuna` VALUES (145, 'Pichidegua', 27);
INSERT INTO `comuna` VALUES (146, 'Quinta de Tilcoco', 27);
INSERT INTO `comuna` VALUES (147, 'Rancagua', 27);
INSERT INTO `comuna` VALUES (148, 'Rengo', 27);
INSERT INTO `comuna` VALUES (149, 'Requínoa', 27);
INSERT INTO `comuna` VALUES (150, 'San Vicente de Tagua Tagua', 27);
INSERT INTO `comuna` VALUES (151, 'La Estrella', 28);
INSERT INTO `comuna` VALUES (152, 'Litueche', 28);
INSERT INTO `comuna` VALUES (153, 'Marchihue', 28);
INSERT INTO `comuna` VALUES (154, 'Navidad', 28);
INSERT INTO `comuna` VALUES (155, 'Peredones', 28);
INSERT INTO `comuna` VALUES (156, 'Pichilemu', 28);
INSERT INTO `comuna` VALUES (157, 'Chépica', 29);
INSERT INTO `comuna` VALUES (158, 'Chimbarongo', 29);
INSERT INTO `comuna` VALUES (159, 'Lolol', 29);
INSERT INTO `comuna` VALUES (160, 'Nancagua', 29);
INSERT INTO `comuna` VALUES (161, 'Palmilla', 29);
INSERT INTO `comuna` VALUES (162, 'Peralillo', 29);
INSERT INTO `comuna` VALUES (163, 'Placilla', 29);
INSERT INTO `comuna` VALUES (164, 'Pumanque', 29);
INSERT INTO `comuna` VALUES (165, 'San Fernando', 29);
INSERT INTO `comuna` VALUES (166, 'Santa Cruz', 29);
INSERT INTO `comuna` VALUES (167, 'Cauquenes', 30);
INSERT INTO `comuna` VALUES (168, 'Chanco', 30);
INSERT INTO `comuna` VALUES (169, 'Pelluhue', 30);
INSERT INTO `comuna` VALUES (170, 'Curicó', 31);
INSERT INTO `comuna` VALUES (171, 'Hualañé', 31);
INSERT INTO `comuna` VALUES (172, 'Licantén', 31);
INSERT INTO `comuna` VALUES (173, 'Molina', 31);
INSERT INTO `comuna` VALUES (174, 'Rauco', 31);
INSERT INTO `comuna` VALUES (175, 'Romeral', 31);
INSERT INTO `comuna` VALUES (176, 'Sagrada Familia', 31);
INSERT INTO `comuna` VALUES (177, 'Teno', 31);
INSERT INTO `comuna` VALUES (178, 'Vichuquén', 31);
INSERT INTO `comuna` VALUES (179, 'Colbún', 32);
INSERT INTO `comuna` VALUES (180, 'Linares', 32);
INSERT INTO `comuna` VALUES (181, 'Longaví', 32);
INSERT INTO `comuna` VALUES (182, 'Parral', 32);
INSERT INTO `comuna` VALUES (183, 'Retiro', 32);
INSERT INTO `comuna` VALUES (184, 'San Javier', 32);
INSERT INTO `comuna` VALUES (185, 'Villa Alegre', 32);
INSERT INTO `comuna` VALUES (186, 'Yerbas Buenas', 32);
INSERT INTO `comuna` VALUES (187, 'Constitución', 33);
INSERT INTO `comuna` VALUES (188, 'Curepto', 33);
INSERT INTO `comuna` VALUES (189, 'Empedrado', 33);
INSERT INTO `comuna` VALUES (190, 'Maule', 33);
INSERT INTO `comuna` VALUES (191, 'Pelarco', 33);
INSERT INTO `comuna` VALUES (192, 'Pencahue', 33);
INSERT INTO `comuna` VALUES (193, 'Río Claro', 33);
INSERT INTO `comuna` VALUES (194, 'San Clemente', 33);
INSERT INTO `comuna` VALUES (195, 'San Rafael', 33);
INSERT INTO `comuna` VALUES (196, 'Talca', 33);
INSERT INTO `comuna` VALUES (197, 'Arauco', 34);
INSERT INTO `comuna` VALUES (198, 'Cañete', 34);
INSERT INTO `comuna` VALUES (199, 'Contulmo', 34);
INSERT INTO `comuna` VALUES (200, 'Curanilahue', 34);
INSERT INTO `comuna` VALUES (201, 'Lebu', 34);
INSERT INTO `comuna` VALUES (202, 'Los Álamos', 34);
INSERT INTO `comuna` VALUES (203, 'Tirúa', 34);
INSERT INTO `comuna` VALUES (204, 'Alto Biobío', 35);
INSERT INTO `comuna` VALUES (205, 'Antuco', 35);
INSERT INTO `comuna` VALUES (206, 'Cabrero', 35);
INSERT INTO `comuna` VALUES (207, 'Laja', 35);
INSERT INTO `comuna` VALUES (208, 'Los Ángeles', 35);
INSERT INTO `comuna` VALUES (209, 'Mulchén', 35);
INSERT INTO `comuna` VALUES (210, 'Nacimiento', 35);
INSERT INTO `comuna` VALUES (211, 'Negrete', 35);
INSERT INTO `comuna` VALUES (212, 'Quilaco', 35);
INSERT INTO `comuna` VALUES (213, 'Quilleco', 35);
INSERT INTO `comuna` VALUES (214, 'San Rosendo', 35);
INSERT INTO `comuna` VALUES (215, 'Santa Bárbara', 35);
INSERT INTO `comuna` VALUES (216, 'Tucapel', 35);
INSERT INTO `comuna` VALUES (217, 'Yumbel', 35);
INSERT INTO `comuna` VALUES (218, 'Chiguayante', 36);
INSERT INTO `comuna` VALUES (219, 'Concepción', 36);
INSERT INTO `comuna` VALUES (220, 'Coronel', 36);
INSERT INTO `comuna` VALUES (221, 'Florida', 36);
INSERT INTO `comuna` VALUES (222, 'Hualpén', 36);
INSERT INTO `comuna` VALUES (223, 'Hualqui', 36);
INSERT INTO `comuna` VALUES (224, 'Lota', 36);
INSERT INTO `comuna` VALUES (225, 'Penco', 36);
INSERT INTO `comuna` VALUES (226, 'San Pedro de La Paz', 36);
INSERT INTO `comuna` VALUES (227, 'Santa Juana', 36);
INSERT INTO `comuna` VALUES (228, 'Talcahuano', 36);
INSERT INTO `comuna` VALUES (229, 'Tomé', 36);
INSERT INTO `comuna` VALUES (230, 'Bulnes', 37);
INSERT INTO `comuna` VALUES (231, 'Chillán', 37);
INSERT INTO `comuna` VALUES (232, 'Chillán Viejo', 37);
INSERT INTO `comuna` VALUES (233, 'Cobquecura', 37);
INSERT INTO `comuna` VALUES (234, 'Coelemu', 37);
INSERT INTO `comuna` VALUES (235, 'Coihueco', 37);
INSERT INTO `comuna` VALUES (236, 'El Carmen', 37);
INSERT INTO `comuna` VALUES (237, 'Ninhue', 37);
INSERT INTO `comuna` VALUES (238, 'Ñiquen', 37);
INSERT INTO `comuna` VALUES (239, 'Pemuco', 37);
INSERT INTO `comuna` VALUES (240, 'Pinto', 37);
INSERT INTO `comuna` VALUES (241, 'Portezuelo', 37);
INSERT INTO `comuna` VALUES (242, 'Quillón', 37);
INSERT INTO `comuna` VALUES (243, 'Quirihue', 37);
INSERT INTO `comuna` VALUES (244, 'Ránquil', 37);
INSERT INTO `comuna` VALUES (245, 'San Carlos', 37);
INSERT INTO `comuna` VALUES (246, 'San Fabián', 37);
INSERT INTO `comuna` VALUES (247, 'San Ignacio', 37);
INSERT INTO `comuna` VALUES (248, 'San Nicolás', 37);
INSERT INTO `comuna` VALUES (249, 'Treguaco', 37);
INSERT INTO `comuna` VALUES (250, 'Yungay', 37);
INSERT INTO `comuna` VALUES (251, 'Carahue', 38);
INSERT INTO `comuna` VALUES (252, 'Cholchol', 38);
INSERT INTO `comuna` VALUES (253, 'Cunco', 38);
INSERT INTO `comuna` VALUES (254, 'Curarrehue', 38);
INSERT INTO `comuna` VALUES (255, 'Freire', 38);
INSERT INTO `comuna` VALUES (256, 'Galvarino', 38);
INSERT INTO `comuna` VALUES (257, 'Gorbea', 38);
INSERT INTO `comuna` VALUES (258, 'Lautaro', 38);
INSERT INTO `comuna` VALUES (259, 'Loncoche', 38);
INSERT INTO `comuna` VALUES (260, 'Melipeuco', 38);
INSERT INTO `comuna` VALUES (261, 'Nueva Imperial', 38);
INSERT INTO `comuna` VALUES (262, 'Padre Las Casas', 38);
INSERT INTO `comuna` VALUES (263, 'Perquenco', 38);
INSERT INTO `comuna` VALUES (264, 'Pitrufquén', 38);
INSERT INTO `comuna` VALUES (265, 'Pucón', 38);
INSERT INTO `comuna` VALUES (266, 'Saavedra', 38);
INSERT INTO `comuna` VALUES (267, 'Temuco', 38);
INSERT INTO `comuna` VALUES (268, 'Teodoro Schmidt', 38);
INSERT INTO `comuna` VALUES (269, 'Toltén', 38);
INSERT INTO `comuna` VALUES (270, 'Vilcún', 38);
INSERT INTO `comuna` VALUES (271, 'Villarrica', 38);
INSERT INTO `comuna` VALUES (272, 'Angol', 39);
INSERT INTO `comuna` VALUES (273, 'Collipulli', 39);
INSERT INTO `comuna` VALUES (274, 'Curacautín', 39);
INSERT INTO `comuna` VALUES (275, 'Ercilla', 39);
INSERT INTO `comuna` VALUES (276, 'Lonquimay', 39);
INSERT INTO `comuna` VALUES (277, 'Los Sauces', 39);
INSERT INTO `comuna` VALUES (278, 'Lumaco', 39);
INSERT INTO `comuna` VALUES (279, 'Purén', 39);
INSERT INTO `comuna` VALUES (280, 'Renaico', 39);
INSERT INTO `comuna` VALUES (281, 'Traiguén', 39);
INSERT INTO `comuna` VALUES (282, 'Victoria', 39);
INSERT INTO `comuna` VALUES (283, 'Corral', 40);
INSERT INTO `comuna` VALUES (284, 'Lanco', 40);
INSERT INTO `comuna` VALUES (285, 'Los Lagos', 40);
INSERT INTO `comuna` VALUES (286, 'Máfil', 40);
INSERT INTO `comuna` VALUES (287, 'Mariquina', 40);
INSERT INTO `comuna` VALUES (288, 'Paillaco', 40);
INSERT INTO `comuna` VALUES (289, 'Panguipulli', 40);
INSERT INTO `comuna` VALUES (290, 'Valdivia', 40);
INSERT INTO `comuna` VALUES (291, 'Futrono', 41);
INSERT INTO `comuna` VALUES (292, 'La Unión', 41);
INSERT INTO `comuna` VALUES (293, 'Lago Ranco', 41);
INSERT INTO `comuna` VALUES (294, 'Río Bueno', 41);
INSERT INTO `comuna` VALUES (295, 'Ancud', 42);
INSERT INTO `comuna` VALUES (296, 'Castro', 42);
INSERT INTO `comuna` VALUES (297, 'Chonchi', 42);
INSERT INTO `comuna` VALUES (298, 'Curaco de Vélez', 42);
INSERT INTO `comuna` VALUES (299, 'Dalcahue', 42);
INSERT INTO `comuna` VALUES (300, 'Puqueldón', 42);
INSERT INTO `comuna` VALUES (301, 'Queilén', 42);
INSERT INTO `comuna` VALUES (302, 'Quemchi', 42);
INSERT INTO `comuna` VALUES (303, 'Quellón', 42);
INSERT INTO `comuna` VALUES (304, 'Quinchao', 42);
INSERT INTO `comuna` VALUES (305, 'Calbuco', 43);
INSERT INTO `comuna` VALUES (306, 'Cochamó', 43);
INSERT INTO `comuna` VALUES (307, 'Fresia', 43);
INSERT INTO `comuna` VALUES (308, 'Frutillar', 43);
INSERT INTO `comuna` VALUES (309, 'Llanquihue', 43);
INSERT INTO `comuna` VALUES (310, 'Los Muermos', 43);
INSERT INTO `comuna` VALUES (311, 'Maullín', 43);
INSERT INTO `comuna` VALUES (312, 'Puerto Montt', 43);
INSERT INTO `comuna` VALUES (313, 'Puerto Varas', 43);
INSERT INTO `comuna` VALUES (314, 'Osorno', 44);
INSERT INTO `comuna` VALUES (315, 'Puero Octay', 44);
INSERT INTO `comuna` VALUES (316, 'Purranque', 44);
INSERT INTO `comuna` VALUES (317, 'Puyehue', 44);
INSERT INTO `comuna` VALUES (318, 'Río Negro', 44);
INSERT INTO `comuna` VALUES (319, 'San Juan de la Costa', 44);
INSERT INTO `comuna` VALUES (320, 'San Pablo', 44);
INSERT INTO `comuna` VALUES (321, 'Chaitén', 45);
INSERT INTO `comuna` VALUES (322, 'Futaleufú', 45);
INSERT INTO `comuna` VALUES (323, 'Hualaihué', 45);
INSERT INTO `comuna` VALUES (324, 'Palena', 45);
INSERT INTO `comuna` VALUES (325, 'Aisén', 46);
INSERT INTO `comuna` VALUES (326, 'Cisnes', 46);
INSERT INTO `comuna` VALUES (327, 'Guaitecas', 46);
INSERT INTO `comuna` VALUES (328, 'Cochrane', 47);
INSERT INTO `comuna` VALUES (329, 'Ohiggins', 47);
INSERT INTO `comuna` VALUES (330, 'Tortel', 47);
INSERT INTO `comuna` VALUES (331, 'Coihaique', 48);
INSERT INTO `comuna` VALUES (332, 'Lago Verde', 48);
INSERT INTO `comuna` VALUES (333, 'Chile Chico', 49);
INSERT INTO `comuna` VALUES (334, 'Río Ibáñez', 49);
INSERT INTO `comuna` VALUES (335, 'Antártica', 50);
INSERT INTO `comuna` VALUES (336, 'Cabo de Hornos', 50);
INSERT INTO `comuna` VALUES (337, 'Laguna Blanca', 51);
INSERT INTO `comuna` VALUES (338, 'Punta Arenas', 51);
INSERT INTO `comuna` VALUES (339, 'Río Verde', 51);
INSERT INTO `comuna` VALUES (340, 'San Gregorio', 51);
INSERT INTO `comuna` VALUES (341, 'Porvenir', 52);
INSERT INTO `comuna` VALUES (342, 'Primavera', 52);
INSERT INTO `comuna` VALUES (343, 'Timaukel', 52);
INSERT INTO `comuna` VALUES (344, 'Natales', 53);
INSERT INTO `comuna` VALUES (345, 'Torres del Paine', 53);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `detallecompra`
-- 

CREATE TABLE `detallecompra` (
  `idDetallecompra` int(11) NOT NULL auto_increment,
  `IdCompra` int(11) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `CantidadDetallecompra` int(11) default NULL,
  `PrecioDetallecompra` double default NULL,
  PRIMARY KEY  (`idDetallecompra`),
  KEY `fk_Detallecompra_Compras1_idx` (`IdCompra`),
  KEY `fk_Detallecompra_Productos1_idx` (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `detallecompra`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `detallesolicitud`
-- 

CREATE TABLE `detallesolicitud` (
  `idDetallesolicitud` int(11) NOT NULL auto_increment,
  `idSolicitud` int(11) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `CantidadDetallesolicitud` int(11) default NULL,
  `PreciocatalogoDetallesolicitud` double default NULL,
  `GananciaDetallesolicitud` double default NULL,
  `RetencionDetallesolicitud` double default NULL,
  `ApagarDetallesolicitud` double default NULL,
  PRIMARY KEY  (`idDetallesolicitud`),
  KEY `fk_Detallesolicitud_Solicitudes1_idx` (`idSolicitud`),
  KEY `fk_Detallesolicitud_Productos1_idx` (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `detallesolicitud`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `detalleventa`
-- 

CREATE TABLE `detalleventa` (
  `idDetalleventa` int(11) NOT NULL auto_increment,
  `idVenta` int(11) NOT NULL,
  `idproductos` int(11) NOT NULL,
  `CantidadDetalleventa` int(11) default NULL,
  `PrecioDetalleventa` double default NULL,
  PRIMARY KEY  (`idDetalleventa`),
  KEY `fk_Detalleventa_Ventas1_idx` (`idVenta`),
  KEY `fk_Detalleventa_Productos1_idx` (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `detalleventa`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estadosolicitud`
-- 

CREATE TABLE `estadosolicitud` (
  `idEstadosolicitud` int(11) NOT NULL auto_increment,
  `NombreEstadosolicitud` varchar(20) NOT NULL,
  PRIMARY KEY  (`idEstadosolicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `estadosolicitud`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estadousuario`
-- 

CREATE TABLE `estadousuario` (
  `idEstadousuario` int(11) NOT NULL auto_increment,
  `NombreEstadousuario` varchar(200) NOT NULL,
  PRIMARY KEY  (`idEstadousuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `estadousuario`
-- 

INSERT INTO `estadousuario` VALUES (1, 'Habilitado');
INSERT INTO `estadousuario` VALUES (2, 'Inhabilitado');
INSERT INTO `estadousuario` VALUES (3, 'Validar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estadovendedor`
-- 

CREATE TABLE `estadovendedor` (
  `idEstadovendedor` int(11) NOT NULL,
  `NombreVendedor` varchar(200) NOT NULL,
  PRIMARY KEY  (`idEstadovendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `estadovendedor`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `permisos`
-- 

CREATE TABLE `permisos` (
  `idPermiso` int(11) NOT NULL auto_increment,
  `NombrePermiso` varchar(45) default NULL,
  `ConstructorPermiso` varchar(45) default NULL COMMENT 'El metodo del permiso nos permite utilizar dinamicamente los permisos en las clases....cada clase debe tener una implementacion extendida a MY_Controller que genera las reglas.',
  PRIMARY KEY  (`idPermiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `permisos`
-- 

INSERT INTO `permisos` VALUES (1, 'Empresas', 'sec_empresa');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `permisosacciones`
-- 

CREATE TABLE `permisosacciones` (
  `idPermisoaccion` int(11) NOT NULL auto_increment,
  `idPermiso` int(11) NOT NULL,
  `NombrePermisoaccion` varchar(45) default NULL,
  `MetodoPermisoaccion` varchar(45) default NULL COMMENT 'Hace referencia a las acciones dentro de una clase.\n',
  PRIMARY KEY  (`idPermisoaccion`),
  KEY `fk_Permisosacciones_Permisos1_idx` (`idPermiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `permisosacciones`
-- 

INSERT INTO `permisosacciones` VALUES (1, 1, 'Listado de Empresas', 'listado_empresas');
INSERT INTO `permisosacciones` VALUES (2, 1, 'Agregar Proveedor', 'addempresa');
INSERT INTO `permisosacciones` VALUES (3, 1, 'Modificar Proveedor', 'modificar_empresa');
INSERT INTO `permisosacciones` VALUES (4, 1, 'Detalle Proveedor', 'detalle_empresa');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `productos`
-- 

CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL auto_increment,
  `CodigoProducto` varchar(200) NOT NULL,
  `CodigocatalogoProducto` varchar(200) NOT NULL,
  `DescripcionProducto` varchar(200) NOT NULL,
  `PreciocompraProducto` double NOT NULL,
  `ProcentajegananciaProducto` double NOT NULL,
  `PrecioventaProducto` double NOT NULL,
  `IvaProducto` double default NULL,
  `NetoProducto` double default NULL,
  `ComisionProducto` double default NULL,
  `RetencionProducto` double default NULL,
  `ApagarProducto` double default NULL,
  `GananciaProducto` double default NULL,
  `UtilidadProducto` double default NULL,
  `StockProducto` double default NULL,
  `ReservaProducto` double default NULL,
  PRIMARY KEY  (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `productos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `proveedores`
-- 

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL auto_increment,
  `IdComuna` int(11) NOT NULL,
  `RutProveedor` varchar(13) NOT NULL,
  `NombreProveedor` varchar(200) NOT NULL,
  `RazonSocial` varchar(500) NOT NULL,
  `Contacto1Proveedor` varchar(100) default NULL,
  `Correocontacto1Proveedor` varchar(200) default NULL,
  `Telefonocontacto1Proveedor` varchar(20) default NULL,
  `Contacto2Proveedor` varchar(100) default NULL,
  `Correocontacto2Proveedor` varchar(200) default NULL,
  `Telefonocontacto2Proveedor` varchar(20) default NULL,
  PRIMARY KEY  (`idProveedor`),
  KEY `fk_proveedores_comuna1_idx` (`IdComuna`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `proveedores`
-- 

INSERT INTO `proveedores` VALUES (1, 119, '11.111.111-1', 'Ulma Chile', 'Ulma chile andamios y moldajes sa', NULL, '', '', NULL, NULL, NULL);
INSERT INTO `proveedores` VALUES (2, 111, '22.222.222-2', 'empresa ficticia', 'razon social ficicia', NULL, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `region`
-- 

CREATE TABLE `region` (
  `IdRegion` int(11) NOT NULL auto_increment,
  `NombreRegion` varchar(250) NOT NULL,
  `DescripcionRegion` varchar(250) NOT NULL,
  PRIMARY KEY  (`IdRegion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `region`
-- 

INSERT INTO `region` VALUES (1, 'Arica y Parinacota', 'XV');
INSERT INTO `region` VALUES (2, 'Tarapacá', 'I');
INSERT INTO `region` VALUES (3, 'Antofagasta', 'II');
INSERT INTO `region` VALUES (4, 'Atacama', 'III');
INSERT INTO `region` VALUES (5, 'Coquimbo', 'IV');
INSERT INTO `region` VALUES (6, 'Valparaiso', 'V');
INSERT INTO `region` VALUES (7, 'Metropolitana de Santiago', 'RM');
INSERT INTO `region` VALUES (8, 'Libertador General Bernardo OHiggins', 'VI');
INSERT INTO `region` VALUES (9, 'Maule', 'VII');
INSERT INTO `region` VALUES (10, 'Biobío', 'VIII');
INSERT INTO `region` VALUES (11, 'La Araucanía', 'IX');
INSERT INTO `region` VALUES (12, 'Los Ríos', 'XIV');
INSERT INTO `region` VALUES (13, 'Los Lagos', 'X');
INSERT INTO `region` VALUES (14, 'Aisén del General Carlos Ibáñez del Campo', 'XI');
INSERT INTO `region` VALUES (15, 'Magallanes y de la Antártica Chilena', 'XII');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `solicitudes`
-- 

CREATE TABLE `solicitudes` (
  `idSolicitud` int(11) NOT NULL auto_increment,
  `idEstadosolicitud` int(11) NOT NULL,
  `idVendedor` int(11) NOT NULL,
  `FechaingresoSolicitud` datetime default NULL,
  `NumeroSolicitud` int(11) default NULL,
  `TotalgananciaSolicitud` double default NULL,
  `TotalretencionSolicitud` double default NULL,
  `TotalapagarSolicitud` double default NULL,
  PRIMARY KEY  (`idSolicitud`),
  KEY `fk_Solicitudes_Estadosolicitud1_idx` (`idEstadosolicitud`),
  KEY `fk_Solicitudes_Vendedor1_idx` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `solicitudes`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipousuario`
-- 

CREATE TABLE `tipousuario` (
  `idTipousuario` int(11) NOT NULL auto_increment,
  `NombreTipousuario` varchar(200) NOT NULL,
  PRIMARY KEY  (`idTipousuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tipousuario`
-- 

INSERT INTO `tipousuario` VALUES (1, 'Administrador');
INSERT INTO `tipousuario` VALUES (2, 'Logistica');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL auto_increment,
  `idTipousuario` int(11) NOT NULL,
  `idEstadousuario` int(11) NOT NULL,
  `RutUsuario` varchar(13) NOT NULL,
  `NombreUsuario` varchar(200) NOT NULL,
  `ApellidoUsuario` varchar(200) NOT NULL,
  `CorreoUsuario` varchar(200) NOT NULL,
  `UsuarioUsuario` varchar(45) NOT NULL,
  `ClaveUsuario` varchar(35) NOT NULL,
  `FecharegistroUsuario` datetime default NULL,
  `FechaultimoingresoUsuario` datetime default NULL,
  PRIMARY KEY  (`idUsuario`),
  UNIQUE KEY `RutUsuario_UNIQUE` (`RutUsuario`),
  KEY `fk_Usuario_Tipousuario_idx` (`idTipousuario`),
  KEY `fk_Usuario_Estadousuario1_idx` (`idEstadousuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 1, 1, '11.111.111-1', 'Admin', 'Admin', 'jromero@proyectosti.cl', 'jromero', '25d55ad283aa400af464c76d713c07ad', '2015-02-10 00:00:00', NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios_permisosacciones`
-- 

CREATE TABLE `usuarios_permisosacciones` (
  `idPermisoaccion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  KEY `fk_Usuarios_Permisosacciones_Usuarios1_idx` (`idUsuario`),
  KEY `fk_Usuarios_Permisosacciones_Permisosacciones1` (`idPermisoaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `usuarios_permisosacciones`
-- 

INSERT INTO `usuarios_permisosacciones` VALUES (1, 1);
INSERT INTO `usuarios_permisosacciones` VALUES (2, 1);
INSERT INTO `usuarios_permisosacciones` VALUES (3, 1);
INSERT INTO `usuarios_permisosacciones` VALUES (4, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `vendedor`
-- 

CREATE TABLE `vendedor` (
  `idVendedor` int(11) NOT NULL,
  `idEstadovendedor` int(11) NOT NULL,
  `RutVendedor` varchar(13) NOT NULL,
  `NombreVendedor` varchar(200) NOT NULL,
  `ApellidoVendedor` varchar(200) NOT NULL,
  `CorreoVendedor` varchar(200) NOT NULL,
  `ClaveVendedor` varchar(35) NOT NULL,
  `DireccionVendedor` varchar(200) default NULL,
  `TelefonoVendedor` varchar(10) default NULL,
  `comuna_IdComuna` int(11) NOT NULL,
  PRIMARY KEY  (`idVendedor`,`comuna_IdComuna`),
  KEY `fk_Vendedor_Estadovendedor1_idx` (`idEstadovendedor`),
  KEY `fk_vendedor_comuna1_idx` (`comuna_IdComuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `vendedor`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ventas`
-- 

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL auto_increment,
  `idVendedor` int(11) NOT NULL COMMENT 'Vendedor al que va dirigida la venta\n',
  `idUsuario` int(11) NOT NULL COMMENT 'Usuario que genera la venta\n',
  `FecharegistroVenta` datetime default NULL,
  `FechaingresoVenta` datetime default NULL,
  PRIMARY KEY  (`idVenta`),
  KEY `fk_Ventas_Vendedor1_idx` (`idVendedor`),
  KEY `fk_Ventas_Usuarios1_idx` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `ventas`
-- 


-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `ciudad`
-- 
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`IdRegion`) REFERENCES `region` (`IdRegion`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `compras`
-- 
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_Compra_Proveedores1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Compra_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `comuna`
-- 
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`IdCiudad`) REFERENCES `ciudad` (`IdCiudad`);

-- 
-- Filtros para la tabla `detallecompra`
-- 
ALTER TABLE `detallecompra`
  ADD CONSTRAINT `fk_Detallecompra_Compras1` FOREIGN KEY (`IdCompra`) REFERENCES `compras` (`IdCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detallecompra_Productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `detallesolicitud`
-- 
ALTER TABLE `detallesolicitud`
  ADD CONSTRAINT `fk_Detallesolicitud_Productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detallesolicitud_Solicitudes1` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitudes` (`idSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `detalleventa`
-- 
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `fk_Detalleventa_Productos1` FOREIGN KEY (`idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalleventa_Ventas1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `permisosacciones`
-- 
ALTER TABLE `permisosacciones`
  ADD CONSTRAINT `fk_Permisosacciones_Permisos1` FOREIGN KEY (`idPermiso`) REFERENCES `permisos` (`idPermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `proveedores`
-- 
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`IdComuna`) REFERENCES `comuna` (`IdComuna`);

-- 
-- Filtros para la tabla `solicitudes`
-- 
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `fk_Solicitudes_Estadosolicitud1` FOREIGN KEY (`idEstadosolicitud`) REFERENCES `estadosolicitud` (`idEstadosolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Solicitudes_Vendedor1` FOREIGN KEY (`idVendedor`) REFERENCES `vendedor` (`idVendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `usuarios`
-- 
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuario_Estadousuario1` FOREIGN KEY (`idEstadousuario`) REFERENCES `estadousuario` (`idEstadousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_Tipousuario` FOREIGN KEY (`idTipousuario`) REFERENCES `tipousuario` (`idTipousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `usuarios_permisosacciones`
-- 
ALTER TABLE `usuarios_permisosacciones`
  ADD CONSTRAINT `fk_Usuarios_Permisosacciones_Permisosacciones1` FOREIGN KEY (`idPermisoaccion`) REFERENCES `permisosacciones` (`idPermisoaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuarios_Permisosacciones_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `vendedor`
-- 
ALTER TABLE `vendedor`
  ADD CONSTRAINT `fk_vendedor_comuna1` FOREIGN KEY (`comuna_IdComuna`) REFERENCES `comuna` (`IdComuna`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vendedor_Estadovendedor1` FOREIGN KEY (`idEstadovendedor`) REFERENCES `estadovendedor` (`idEstadovendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `ventas`
-- 
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_Ventas_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_Vendedor1` FOREIGN KEY (`idVendedor`) REFERENCES `vendedor` (`idVendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
