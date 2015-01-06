-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 06-01-2015 a las 17:26:40
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `puntoventa`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_ciudad`
-- 

CREATE TABLE `ptv_ciudad` (
  `IdCiudad` int(11) NOT NULL auto_increment,
  `NombreCiudad` varchar(250) NOT NULL,
  `IdRegion` int(11) NOT NULL,
  PRIMARY KEY  (`IdCiudad`),
  KEY `IdRegion` (`IdRegion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- 
-- Volcar la base de datos para la tabla `ptv_ciudad`
-- 

INSERT INTO `ptv_ciudad` VALUES (1, 'Arica', 1);
INSERT INTO `ptv_ciudad` VALUES (2, 'Parinacota', 1);
INSERT INTO `ptv_ciudad` VALUES (3, 'Iquique', 2);
INSERT INTO `ptv_ciudad` VALUES (4, 'El Tamarugal', 2);
INSERT INTO `ptv_ciudad` VALUES (5, 'Antofagasta', 3);
INSERT INTO `ptv_ciudad` VALUES (6, 'El Loa', 3);
INSERT INTO `ptv_ciudad` VALUES (7, 'Tocopilla', 3);
INSERT INTO `ptv_ciudad` VALUES (8, 'Chañaral', 4);
INSERT INTO `ptv_ciudad` VALUES (9, 'Copiapó', 4);
INSERT INTO `ptv_ciudad` VALUES (10, 'Huasco', 4);
INSERT INTO `ptv_ciudad` VALUES (11, 'Choapa', 5);
INSERT INTO `ptv_ciudad` VALUES (12, 'Elqui', 5);
INSERT INTO `ptv_ciudad` VALUES (13, 'Limarí', 5);
INSERT INTO `ptv_ciudad` VALUES (14, 'Isla de Pascua', 6);
INSERT INTO `ptv_ciudad` VALUES (15, 'Los Andes', 6);
INSERT INTO `ptv_ciudad` VALUES (16, 'Petorca', 6);
INSERT INTO `ptv_ciudad` VALUES (17, 'Quillota', 6);
INSERT INTO `ptv_ciudad` VALUES (18, 'San Antonio', 6);
INSERT INTO `ptv_ciudad` VALUES (19, 'San Felipe de Aconcagua', 6);
INSERT INTO `ptv_ciudad` VALUES (20, 'Valparaiso', 6);
INSERT INTO `ptv_ciudad` VALUES (21, 'Chacabuco', 7);
INSERT INTO `ptv_ciudad` VALUES (22, 'Cordillera', 7);
INSERT INTO `ptv_ciudad` VALUES (23, 'Maipo', 7);
INSERT INTO `ptv_ciudad` VALUES (24, 'Melipilla', 7);
INSERT INTO `ptv_ciudad` VALUES (25, 'Santiago', 7);
INSERT INTO `ptv_ciudad` VALUES (26, 'Talagante', 7);
INSERT INTO `ptv_ciudad` VALUES (27, 'Cachapoal', 8);
INSERT INTO `ptv_ciudad` VALUES (28, 'Cardenal Caro', 8);
INSERT INTO `ptv_ciudad` VALUES (29, 'Colchagua', 8);
INSERT INTO `ptv_ciudad` VALUES (30, 'Cauquenes', 9);
INSERT INTO `ptv_ciudad` VALUES (31, 'Curicó', 9);
INSERT INTO `ptv_ciudad` VALUES (32, 'Linares', 9);
INSERT INTO `ptv_ciudad` VALUES (33, 'Talca', 9);
INSERT INTO `ptv_ciudad` VALUES (34, 'Arauco', 10);
INSERT INTO `ptv_ciudad` VALUES (35, 'Bio Bío', 10);
INSERT INTO `ptv_ciudad` VALUES (36, 'Concepción', 10);
INSERT INTO `ptv_ciudad` VALUES (37, 'Ñuble', 10);
INSERT INTO `ptv_ciudad` VALUES (38, 'Cautín', 11);
INSERT INTO `ptv_ciudad` VALUES (39, 'Malleco', 11);
INSERT INTO `ptv_ciudad` VALUES (40, 'Valdivia', 12);
INSERT INTO `ptv_ciudad` VALUES (41, 'Ranco', 12);
INSERT INTO `ptv_ciudad` VALUES (42, 'Chiloé', 13);
INSERT INTO `ptv_ciudad` VALUES (43, 'Llanquihue', 13);
INSERT INTO `ptv_ciudad` VALUES (44, 'Osorno', 13);
INSERT INTO `ptv_ciudad` VALUES (45, 'Palena', 13);
INSERT INTO `ptv_ciudad` VALUES (46, 'Aisén', 14);
INSERT INTO `ptv_ciudad` VALUES (47, 'Capitán Prat', 14);
INSERT INTO `ptv_ciudad` VALUES (48, 'Coihaique', 14);
INSERT INTO `ptv_ciudad` VALUES (49, 'General Carrera', 14);
INSERT INTO `ptv_ciudad` VALUES (50, 'Antártica Chilena', 15);
INSERT INTO `ptv_ciudad` VALUES (51, 'Magallanes', 15);
INSERT INTO `ptv_ciudad` VALUES (52, 'Tierra del Fuego', 15);
INSERT INTO `ptv_ciudad` VALUES (53, 'Última Esperanza', 15);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_comuna`
-- 

CREATE TABLE `ptv_comuna` (
  `IdComuna` int(11) NOT NULL auto_increment,
  `NombreComuna` varchar(250) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  PRIMARY KEY  (`IdComuna`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

-- 
-- Volcar la base de datos para la tabla `ptv_comuna`
-- 

INSERT INTO `ptv_comuna` VALUES (1, 'Arica', 1);
INSERT INTO `ptv_comuna` VALUES (2, 'Camarones', 1);
INSERT INTO `ptv_comuna` VALUES (3, 'General Lagos', 2);
INSERT INTO `ptv_comuna` VALUES (4, 'Putre', 2);
INSERT INTO `ptv_comuna` VALUES (5, 'Alto Hospicio', 3);
INSERT INTO `ptv_comuna` VALUES (6, 'Iquique', 3);
INSERT INTO `ptv_comuna` VALUES (7, 'Camiña', 4);
INSERT INTO `ptv_comuna` VALUES (8, 'Colchane', 4);
INSERT INTO `ptv_comuna` VALUES (9, 'Huara', 4);
INSERT INTO `ptv_comuna` VALUES (10, 'Pica', 4);
INSERT INTO `ptv_comuna` VALUES (11, 'Pozo Almonte', 4);
INSERT INTO `ptv_comuna` VALUES (12, 'Antofagasta', 5);
INSERT INTO `ptv_comuna` VALUES (13, 'Mejillones', 5);
INSERT INTO `ptv_comuna` VALUES (14, 'Sierra Gorda', 5);
INSERT INTO `ptv_comuna` VALUES (15, 'Taltal', 5);
INSERT INTO `ptv_comuna` VALUES (16, 'Calama', 6);
INSERT INTO `ptv_comuna` VALUES (17, 'Ollague', 6);
INSERT INTO `ptv_comuna` VALUES (18, 'San Pedro de Atacama', 6);
INSERT INTO `ptv_comuna` VALUES (19, 'María Elena', 7);
INSERT INTO `ptv_comuna` VALUES (20, 'Tocopilla', 7);
INSERT INTO `ptv_comuna` VALUES (21, 'Chañaral', 8);
INSERT INTO `ptv_comuna` VALUES (22, 'Diego de Almagro', 8);
INSERT INTO `ptv_comuna` VALUES (23, 'Caldera', 9);
INSERT INTO `ptv_comuna` VALUES (24, 'Copiapó', 9);
INSERT INTO `ptv_comuna` VALUES (25, 'Tierra Amarilla', 9);
INSERT INTO `ptv_comuna` VALUES (26, 'Alto del Carmen', 10);
INSERT INTO `ptv_comuna` VALUES (27, 'Freirina', 10);
INSERT INTO `ptv_comuna` VALUES (28, 'Huasco', 10);
INSERT INTO `ptv_comuna` VALUES (29, 'Vallenar', 10);
INSERT INTO `ptv_comuna` VALUES (30, 'Canela', 11);
INSERT INTO `ptv_comuna` VALUES (31, 'Illapel', 11);
INSERT INTO `ptv_comuna` VALUES (32, 'Los Vilos', 11);
INSERT INTO `ptv_comuna` VALUES (33, 'Salamanca', 11);
INSERT INTO `ptv_comuna` VALUES (34, 'Andacollo', 12);
INSERT INTO `ptv_comuna` VALUES (35, 'Coquimbo', 12);
INSERT INTO `ptv_comuna` VALUES (36, 'La Higuera', 12);
INSERT INTO `ptv_comuna` VALUES (37, 'La Serena', 12);
INSERT INTO `ptv_comuna` VALUES (38, 'Paihuaco', 12);
INSERT INTO `ptv_comuna` VALUES (39, 'Vicuña', 12);
INSERT INTO `ptv_comuna` VALUES (40, 'Combarbalá', 13);
INSERT INTO `ptv_comuna` VALUES (41, 'Monte Patria', 13);
INSERT INTO `ptv_comuna` VALUES (42, 'Ovalle', 13);
INSERT INTO `ptv_comuna` VALUES (43, 'Punitaqui', 13);
INSERT INTO `ptv_comuna` VALUES (44, 'Río Hurtado', 13);
INSERT INTO `ptv_comuna` VALUES (45, 'Isla de Pascua', 14);
INSERT INTO `ptv_comuna` VALUES (46, 'Calle Larga', 15);
INSERT INTO `ptv_comuna` VALUES (47, 'Los Andes', 15);
INSERT INTO `ptv_comuna` VALUES (48, 'Rinconada', 15);
INSERT INTO `ptv_comuna` VALUES (49, 'San Esteban', 15);
INSERT INTO `ptv_comuna` VALUES (50, 'La Ligua', 16);
INSERT INTO `ptv_comuna` VALUES (51, 'Papudo', 16);
INSERT INTO `ptv_comuna` VALUES (52, 'Petorca', 16);
INSERT INTO `ptv_comuna` VALUES (53, 'Zapallar', 16);
INSERT INTO `ptv_comuna` VALUES (54, 'Hijuelas', 17);
INSERT INTO `ptv_comuna` VALUES (55, 'La Calera', 17);
INSERT INTO `ptv_comuna` VALUES (56, 'La Cruz', 17);
INSERT INTO `ptv_comuna` VALUES (57, 'Limache', 17);
INSERT INTO `ptv_comuna` VALUES (58, 'Nogales', 17);
INSERT INTO `ptv_comuna` VALUES (59, 'Olmué', 17);
INSERT INTO `ptv_comuna` VALUES (60, 'Quillota', 17);
INSERT INTO `ptv_comuna` VALUES (61, 'Algarrobo', 18);
INSERT INTO `ptv_comuna` VALUES (62, 'Cartagena', 18);
INSERT INTO `ptv_comuna` VALUES (63, 'El Quisco', 18);
INSERT INTO `ptv_comuna` VALUES (64, 'El Tabo', 18);
INSERT INTO `ptv_comuna` VALUES (65, 'San Antonio', 18);
INSERT INTO `ptv_comuna` VALUES (66, 'Santo Domingo', 18);
INSERT INTO `ptv_comuna` VALUES (67, 'Catemu', 19);
INSERT INTO `ptv_comuna` VALUES (68, 'Llaillay', 19);
INSERT INTO `ptv_comuna` VALUES (69, 'Panquehue', 19);
INSERT INTO `ptv_comuna` VALUES (70, 'Putaendo', 19);
INSERT INTO `ptv_comuna` VALUES (71, 'San Felipe', 19);
INSERT INTO `ptv_comuna` VALUES (72, 'Santa María', 19);
INSERT INTO `ptv_comuna` VALUES (73, 'Casablanca', 20);
INSERT INTO `ptv_comuna` VALUES (74, 'Concón', 20);
INSERT INTO `ptv_comuna` VALUES (75, 'Juan Fernández', 20);
INSERT INTO `ptv_comuna` VALUES (76, 'Puchuncaví', 20);
INSERT INTO `ptv_comuna` VALUES (77, 'Quilpué', 20);
INSERT INTO `ptv_comuna` VALUES (78, 'Quintero', 20);
INSERT INTO `ptv_comuna` VALUES (79, 'Valparaíso', 20);
INSERT INTO `ptv_comuna` VALUES (80, 'Villa Alemana', 20);
INSERT INTO `ptv_comuna` VALUES (81, 'Viña del Mar', 20);
INSERT INTO `ptv_comuna` VALUES (82, 'Colina', 21);
INSERT INTO `ptv_comuna` VALUES (83, 'Lampa', 21);
INSERT INTO `ptv_comuna` VALUES (84, 'Tiltil', 21);
INSERT INTO `ptv_comuna` VALUES (85, 'Pirque', 22);
INSERT INTO `ptv_comuna` VALUES (86, 'Puente Alto', 22);
INSERT INTO `ptv_comuna` VALUES (87, 'San José de Maipo', 22);
INSERT INTO `ptv_comuna` VALUES (88, 'Buin', 23);
INSERT INTO `ptv_comuna` VALUES (89, 'Calera de Tango', 23);
INSERT INTO `ptv_comuna` VALUES (90, 'Paine', 23);
INSERT INTO `ptv_comuna` VALUES (91, 'San Bernardo', 23);
INSERT INTO `ptv_comuna` VALUES (92, 'Alhué', 24);
INSERT INTO `ptv_comuna` VALUES (93, 'Curacaví', 24);
INSERT INTO `ptv_comuna` VALUES (94, 'María Pinto', 24);
INSERT INTO `ptv_comuna` VALUES (95, 'Melipilla', 24);
INSERT INTO `ptv_comuna` VALUES (96, 'San Pedro', 24);
INSERT INTO `ptv_comuna` VALUES (97, 'Cerrillos', 25);
INSERT INTO `ptv_comuna` VALUES (98, 'Cerro Navia', 25);
INSERT INTO `ptv_comuna` VALUES (99, 'Conchalí', 25);
INSERT INTO `ptv_comuna` VALUES (100, 'El Bosque', 25);
INSERT INTO `ptv_comuna` VALUES (101, 'Estación Central', 25);
INSERT INTO `ptv_comuna` VALUES (102, 'Huechuraba', 25);
INSERT INTO `ptv_comuna` VALUES (103, 'Independencia', 25);
INSERT INTO `ptv_comuna` VALUES (104, 'La Cisterna', 25);
INSERT INTO `ptv_comuna` VALUES (105, 'La Granja', 25);
INSERT INTO `ptv_comuna` VALUES (106, 'La Florida', 25);
INSERT INTO `ptv_comuna` VALUES (107, 'La Pintana', 25);
INSERT INTO `ptv_comuna` VALUES (108, 'La Reina', 25);
INSERT INTO `ptv_comuna` VALUES (109, 'Las Condes', 25);
INSERT INTO `ptv_comuna` VALUES (110, 'Lo Barnechea', 25);
INSERT INTO `ptv_comuna` VALUES (111, 'Lo Espejo', 25);
INSERT INTO `ptv_comuna` VALUES (112, 'Lo Prado', 25);
INSERT INTO `ptv_comuna` VALUES (113, 'Macul', 25);
INSERT INTO `ptv_comuna` VALUES (114, 'Maipú', 25);
INSERT INTO `ptv_comuna` VALUES (115, 'Ñuñoa', 25);
INSERT INTO `ptv_comuna` VALUES (116, 'Pedro Aguirre Cerda', 25);
INSERT INTO `ptv_comuna` VALUES (117, 'Peñalolén', 25);
INSERT INTO `ptv_comuna` VALUES (118, 'Providencia', 25);
INSERT INTO `ptv_comuna` VALUES (119, 'Pudahuel', 25);
INSERT INTO `ptv_comuna` VALUES (120, 'Quilicura', 25);
INSERT INTO `ptv_comuna` VALUES (121, 'Quinta Normal', 25);
INSERT INTO `ptv_comuna` VALUES (122, 'Recoleta', 25);
INSERT INTO `ptv_comuna` VALUES (123, 'Renca', 25);
INSERT INTO `ptv_comuna` VALUES (124, 'San Miguel', 25);
INSERT INTO `ptv_comuna` VALUES (125, 'San Joaquín', 25);
INSERT INTO `ptv_comuna` VALUES (126, 'San Ramón', 25);
INSERT INTO `ptv_comuna` VALUES (127, 'Santiago', 25);
INSERT INTO `ptv_comuna` VALUES (128, 'Vitacura', 25);
INSERT INTO `ptv_comuna` VALUES (129, 'El Monte', 26);
INSERT INTO `ptv_comuna` VALUES (130, 'Isla de Maipo', 26);
INSERT INTO `ptv_comuna` VALUES (131, 'Padre Hurtado', 26);
INSERT INTO `ptv_comuna` VALUES (132, 'Peñaflor', 26);
INSERT INTO `ptv_comuna` VALUES (133, 'Talagante', 26);
INSERT INTO `ptv_comuna` VALUES (134, 'Codegua', 27);
INSERT INTO `ptv_comuna` VALUES (135, 'Coínco', 27);
INSERT INTO `ptv_comuna` VALUES (136, 'Coltauco', 27);
INSERT INTO `ptv_comuna` VALUES (137, 'Doñihue', 27);
INSERT INTO `ptv_comuna` VALUES (138, 'Graneros', 27);
INSERT INTO `ptv_comuna` VALUES (139, 'Las Cabras', 27);
INSERT INTO `ptv_comuna` VALUES (140, 'Machalí', 27);
INSERT INTO `ptv_comuna` VALUES (141, 'Malloa', 27);
INSERT INTO `ptv_comuna` VALUES (142, 'Mostazal', 27);
INSERT INTO `ptv_comuna` VALUES (143, 'Olivar', 27);
INSERT INTO `ptv_comuna` VALUES (144, 'Peumo', 27);
INSERT INTO `ptv_comuna` VALUES (145, 'Pichidegua', 27);
INSERT INTO `ptv_comuna` VALUES (146, 'Quinta de Tilcoco', 27);
INSERT INTO `ptv_comuna` VALUES (147, 'Rancagua', 27);
INSERT INTO `ptv_comuna` VALUES (148, 'Rengo', 27);
INSERT INTO `ptv_comuna` VALUES (149, 'Requínoa', 27);
INSERT INTO `ptv_comuna` VALUES (150, 'San Vicente de Tagua Tagua', 27);
INSERT INTO `ptv_comuna` VALUES (151, 'La Estrella', 28);
INSERT INTO `ptv_comuna` VALUES (152, 'Litueche', 28);
INSERT INTO `ptv_comuna` VALUES (153, 'Marchihue', 28);
INSERT INTO `ptv_comuna` VALUES (154, 'Navidad', 28);
INSERT INTO `ptv_comuna` VALUES (155, 'Peredones', 28);
INSERT INTO `ptv_comuna` VALUES (156, 'Pichilemu', 28);
INSERT INTO `ptv_comuna` VALUES (157, 'Chépica', 29);
INSERT INTO `ptv_comuna` VALUES (158, 'Chimbarongo', 29);
INSERT INTO `ptv_comuna` VALUES (159, 'Lolol', 29);
INSERT INTO `ptv_comuna` VALUES (160, 'Nancagua', 29);
INSERT INTO `ptv_comuna` VALUES (161, 'Palmilla', 29);
INSERT INTO `ptv_comuna` VALUES (162, 'Peralillo', 29);
INSERT INTO `ptv_comuna` VALUES (163, 'Placilla', 29);
INSERT INTO `ptv_comuna` VALUES (164, 'Pumanque', 29);
INSERT INTO `ptv_comuna` VALUES (165, 'San Fernando', 29);
INSERT INTO `ptv_comuna` VALUES (166, 'Santa Cruz', 29);
INSERT INTO `ptv_comuna` VALUES (167, 'Cauquenes', 30);
INSERT INTO `ptv_comuna` VALUES (168, 'Chanco', 30);
INSERT INTO `ptv_comuna` VALUES (169, 'Pelluhue', 30);
INSERT INTO `ptv_comuna` VALUES (170, 'Curicó', 31);
INSERT INTO `ptv_comuna` VALUES (171, 'Hualañé', 31);
INSERT INTO `ptv_comuna` VALUES (172, 'Licantén', 31);
INSERT INTO `ptv_comuna` VALUES (173, 'Molina', 31);
INSERT INTO `ptv_comuna` VALUES (174, 'Rauco', 31);
INSERT INTO `ptv_comuna` VALUES (175, 'Romeral', 31);
INSERT INTO `ptv_comuna` VALUES (176, 'Sagrada Familia', 31);
INSERT INTO `ptv_comuna` VALUES (177, 'Teno', 31);
INSERT INTO `ptv_comuna` VALUES (178, 'Vichuquén', 31);
INSERT INTO `ptv_comuna` VALUES (179, 'Colbún', 32);
INSERT INTO `ptv_comuna` VALUES (180, 'Linares', 32);
INSERT INTO `ptv_comuna` VALUES (181, 'Longaví', 32);
INSERT INTO `ptv_comuna` VALUES (182, 'Parral', 32);
INSERT INTO `ptv_comuna` VALUES (183, 'Retiro', 32);
INSERT INTO `ptv_comuna` VALUES (184, 'San Javier', 32);
INSERT INTO `ptv_comuna` VALUES (185, 'Villa Alegre', 32);
INSERT INTO `ptv_comuna` VALUES (186, 'Yerbas Buenas', 32);
INSERT INTO `ptv_comuna` VALUES (187, 'Constitución', 33);
INSERT INTO `ptv_comuna` VALUES (188, 'Curepto', 33);
INSERT INTO `ptv_comuna` VALUES (189, 'Empedrado', 33);
INSERT INTO `ptv_comuna` VALUES (190, 'Maule', 33);
INSERT INTO `ptv_comuna` VALUES (191, 'Pelarco', 33);
INSERT INTO `ptv_comuna` VALUES (192, 'Pencahue', 33);
INSERT INTO `ptv_comuna` VALUES (193, 'Río Claro', 33);
INSERT INTO `ptv_comuna` VALUES (194, 'San Clemente', 33);
INSERT INTO `ptv_comuna` VALUES (195, 'San Rafael', 33);
INSERT INTO `ptv_comuna` VALUES (196, 'Talca', 33);
INSERT INTO `ptv_comuna` VALUES (197, 'Arauco', 34);
INSERT INTO `ptv_comuna` VALUES (198, 'Cañete', 34);
INSERT INTO `ptv_comuna` VALUES (199, 'Contulmo', 34);
INSERT INTO `ptv_comuna` VALUES (200, 'Curanilahue', 34);
INSERT INTO `ptv_comuna` VALUES (201, 'Lebu', 34);
INSERT INTO `ptv_comuna` VALUES (202, 'Los Álamos', 34);
INSERT INTO `ptv_comuna` VALUES (203, 'Tirúa', 34);
INSERT INTO `ptv_comuna` VALUES (204, 'Alto Biobío', 35);
INSERT INTO `ptv_comuna` VALUES (205, 'Antuco', 35);
INSERT INTO `ptv_comuna` VALUES (206, 'Cabrero', 35);
INSERT INTO `ptv_comuna` VALUES (207, 'Laja', 35);
INSERT INTO `ptv_comuna` VALUES (208, 'Los Ángeles', 35);
INSERT INTO `ptv_comuna` VALUES (209, 'Mulchén', 35);
INSERT INTO `ptv_comuna` VALUES (210, 'Nacimiento', 35);
INSERT INTO `ptv_comuna` VALUES (211, 'Negrete', 35);
INSERT INTO `ptv_comuna` VALUES (212, 'Quilaco', 35);
INSERT INTO `ptv_comuna` VALUES (213, 'Quilleco', 35);
INSERT INTO `ptv_comuna` VALUES (214, 'San Rosendo', 35);
INSERT INTO `ptv_comuna` VALUES (215, 'Santa Bárbara', 35);
INSERT INTO `ptv_comuna` VALUES (216, 'Tucapel', 35);
INSERT INTO `ptv_comuna` VALUES (217, 'Yumbel', 35);
INSERT INTO `ptv_comuna` VALUES (218, 'Chiguayante', 36);
INSERT INTO `ptv_comuna` VALUES (219, 'Concepción', 36);
INSERT INTO `ptv_comuna` VALUES (220, 'Coronel', 36);
INSERT INTO `ptv_comuna` VALUES (221, 'Florida', 36);
INSERT INTO `ptv_comuna` VALUES (222, 'Hualpén', 36);
INSERT INTO `ptv_comuna` VALUES (223, 'Hualqui', 36);
INSERT INTO `ptv_comuna` VALUES (224, 'Lota', 36);
INSERT INTO `ptv_comuna` VALUES (225, 'Penco', 36);
INSERT INTO `ptv_comuna` VALUES (226, 'San Pedro de La Paz', 36);
INSERT INTO `ptv_comuna` VALUES (227, 'Santa Juana', 36);
INSERT INTO `ptv_comuna` VALUES (228, 'Talcahuano', 36);
INSERT INTO `ptv_comuna` VALUES (229, 'Tomé', 36);
INSERT INTO `ptv_comuna` VALUES (230, 'Bulnes', 37);
INSERT INTO `ptv_comuna` VALUES (231, 'Chillán', 37);
INSERT INTO `ptv_comuna` VALUES (232, 'Chillán Viejo', 37);
INSERT INTO `ptv_comuna` VALUES (233, 'Cobquecura', 37);
INSERT INTO `ptv_comuna` VALUES (234, 'Coelemu', 37);
INSERT INTO `ptv_comuna` VALUES (235, 'Coihueco', 37);
INSERT INTO `ptv_comuna` VALUES (236, 'El Carmen', 37);
INSERT INTO `ptv_comuna` VALUES (237, 'Ninhue', 37);
INSERT INTO `ptv_comuna` VALUES (238, 'Ñiquen', 37);
INSERT INTO `ptv_comuna` VALUES (239, 'Pemuco', 37);
INSERT INTO `ptv_comuna` VALUES (240, 'Pinto', 37);
INSERT INTO `ptv_comuna` VALUES (241, 'Portezuelo', 37);
INSERT INTO `ptv_comuna` VALUES (242, 'Quillón', 37);
INSERT INTO `ptv_comuna` VALUES (243, 'Quirihue', 37);
INSERT INTO `ptv_comuna` VALUES (244, 'Ránquil', 37);
INSERT INTO `ptv_comuna` VALUES (245, 'San Carlos', 37);
INSERT INTO `ptv_comuna` VALUES (246, 'San Fabián', 37);
INSERT INTO `ptv_comuna` VALUES (247, 'San Ignacio', 37);
INSERT INTO `ptv_comuna` VALUES (248, 'San Nicolás', 37);
INSERT INTO `ptv_comuna` VALUES (249, 'Treguaco', 37);
INSERT INTO `ptv_comuna` VALUES (250, 'Yungay', 37);
INSERT INTO `ptv_comuna` VALUES (251, 'Carahue', 38);
INSERT INTO `ptv_comuna` VALUES (252, 'Cholchol', 38);
INSERT INTO `ptv_comuna` VALUES (253, 'Cunco', 38);
INSERT INTO `ptv_comuna` VALUES (254, 'Curarrehue', 38);
INSERT INTO `ptv_comuna` VALUES (255, 'Freire', 38);
INSERT INTO `ptv_comuna` VALUES (256, 'Galvarino', 38);
INSERT INTO `ptv_comuna` VALUES (257, 'Gorbea', 38);
INSERT INTO `ptv_comuna` VALUES (258, 'Lautaro', 38);
INSERT INTO `ptv_comuna` VALUES (259, 'Loncoche', 38);
INSERT INTO `ptv_comuna` VALUES (260, 'Melipeuco', 38);
INSERT INTO `ptv_comuna` VALUES (261, 'Nueva Imperial', 38);
INSERT INTO `ptv_comuna` VALUES (262, 'Padre Las Casas', 38);
INSERT INTO `ptv_comuna` VALUES (263, 'Perquenco', 38);
INSERT INTO `ptv_comuna` VALUES (264, 'Pitrufquén', 38);
INSERT INTO `ptv_comuna` VALUES (265, 'Pucón', 38);
INSERT INTO `ptv_comuna` VALUES (266, 'Saavedra', 38);
INSERT INTO `ptv_comuna` VALUES (267, 'Temuco', 38);
INSERT INTO `ptv_comuna` VALUES (268, 'Teodoro Schmidt', 38);
INSERT INTO `ptv_comuna` VALUES (269, 'Toltén', 38);
INSERT INTO `ptv_comuna` VALUES (270, 'Vilcún', 38);
INSERT INTO `ptv_comuna` VALUES (271, 'Villarrica', 38);
INSERT INTO `ptv_comuna` VALUES (272, 'Angol', 39);
INSERT INTO `ptv_comuna` VALUES (273, 'Collipulli', 39);
INSERT INTO `ptv_comuna` VALUES (274, 'Curacautín', 39);
INSERT INTO `ptv_comuna` VALUES (275, 'Ercilla', 39);
INSERT INTO `ptv_comuna` VALUES (276, 'Lonquimay', 39);
INSERT INTO `ptv_comuna` VALUES (277, 'Los Sauces', 39);
INSERT INTO `ptv_comuna` VALUES (278, 'Lumaco', 39);
INSERT INTO `ptv_comuna` VALUES (279, 'Purén', 39);
INSERT INTO `ptv_comuna` VALUES (280, 'Renaico', 39);
INSERT INTO `ptv_comuna` VALUES (281, 'Traiguén', 39);
INSERT INTO `ptv_comuna` VALUES (282, 'Victoria', 39);
INSERT INTO `ptv_comuna` VALUES (283, 'Corral', 40);
INSERT INTO `ptv_comuna` VALUES (284, 'Lanco', 40);
INSERT INTO `ptv_comuna` VALUES (285, 'Los Lagos', 40);
INSERT INTO `ptv_comuna` VALUES (286, 'Máfil', 40);
INSERT INTO `ptv_comuna` VALUES (287, 'Mariquina', 40);
INSERT INTO `ptv_comuna` VALUES (288, 'Paillaco', 40);
INSERT INTO `ptv_comuna` VALUES (289, 'Panguipulli', 40);
INSERT INTO `ptv_comuna` VALUES (290, 'Valdivia', 40);
INSERT INTO `ptv_comuna` VALUES (291, 'Futrono', 41);
INSERT INTO `ptv_comuna` VALUES (292, 'La Unión', 41);
INSERT INTO `ptv_comuna` VALUES (293, 'Lago Ranco', 41);
INSERT INTO `ptv_comuna` VALUES (294, 'Río Bueno', 41);
INSERT INTO `ptv_comuna` VALUES (295, 'Ancud', 42);
INSERT INTO `ptv_comuna` VALUES (296, 'Castro', 42);
INSERT INTO `ptv_comuna` VALUES (297, 'Chonchi', 42);
INSERT INTO `ptv_comuna` VALUES (298, 'Curaco de Vélez', 42);
INSERT INTO `ptv_comuna` VALUES (299, 'Dalcahue', 42);
INSERT INTO `ptv_comuna` VALUES (300, 'Puqueldón', 42);
INSERT INTO `ptv_comuna` VALUES (301, 'Queilén', 42);
INSERT INTO `ptv_comuna` VALUES (302, 'Quemchi', 42);
INSERT INTO `ptv_comuna` VALUES (303, 'Quellón', 42);
INSERT INTO `ptv_comuna` VALUES (304, 'Quinchao', 42);
INSERT INTO `ptv_comuna` VALUES (305, 'Calbuco', 43);
INSERT INTO `ptv_comuna` VALUES (306, 'Cochamó', 43);
INSERT INTO `ptv_comuna` VALUES (307, 'Fresia', 43);
INSERT INTO `ptv_comuna` VALUES (308, 'Frutillar', 43);
INSERT INTO `ptv_comuna` VALUES (309, 'Llanquihue', 43);
INSERT INTO `ptv_comuna` VALUES (310, 'Los Muermos', 43);
INSERT INTO `ptv_comuna` VALUES (311, 'Maullín', 43);
INSERT INTO `ptv_comuna` VALUES (312, 'Puerto Montt', 43);
INSERT INTO `ptv_comuna` VALUES (313, 'Puerto Varas', 43);
INSERT INTO `ptv_comuna` VALUES (314, 'Osorno', 44);
INSERT INTO `ptv_comuna` VALUES (315, 'Puero Octay', 44);
INSERT INTO `ptv_comuna` VALUES (316, 'Purranque', 44);
INSERT INTO `ptv_comuna` VALUES (317, 'Puyehue', 44);
INSERT INTO `ptv_comuna` VALUES (318, 'Río Negro', 44);
INSERT INTO `ptv_comuna` VALUES (319, 'San Juan de la Costa', 44);
INSERT INTO `ptv_comuna` VALUES (320, 'San Pablo', 44);
INSERT INTO `ptv_comuna` VALUES (321, 'Chaitén', 45);
INSERT INTO `ptv_comuna` VALUES (322, 'Futaleufú', 45);
INSERT INTO `ptv_comuna` VALUES (323, 'Hualaihué', 45);
INSERT INTO `ptv_comuna` VALUES (324, 'Palena', 45);
INSERT INTO `ptv_comuna` VALUES (325, 'Aisén', 46);
INSERT INTO `ptv_comuna` VALUES (326, 'Cisnes', 46);
INSERT INTO `ptv_comuna` VALUES (327, 'Guaitecas', 46);
INSERT INTO `ptv_comuna` VALUES (328, 'Cochrane', 47);
INSERT INTO `ptv_comuna` VALUES (329, 'Ohiggins', 47);
INSERT INTO `ptv_comuna` VALUES (330, 'Tortel', 47);
INSERT INTO `ptv_comuna` VALUES (331, 'Coihaique', 48);
INSERT INTO `ptv_comuna` VALUES (332, 'Lago Verde', 48);
INSERT INTO `ptv_comuna` VALUES (333, 'Chile Chico', 49);
INSERT INTO `ptv_comuna` VALUES (334, 'Río Ibáñez', 49);
INSERT INTO `ptv_comuna` VALUES (335, 'Antártica', 50);
INSERT INTO `ptv_comuna` VALUES (336, 'Cabo de Hornos', 50);
INSERT INTO `ptv_comuna` VALUES (337, 'Laguna Blanca', 51);
INSERT INTO `ptv_comuna` VALUES (338, 'Punta Arenas', 51);
INSERT INTO `ptv_comuna` VALUES (339, 'Río Verde', 51);
INSERT INTO `ptv_comuna` VALUES (340, 'San Gregorio', 51);
INSERT INTO `ptv_comuna` VALUES (341, 'Porvenir', 52);
INSERT INTO `ptv_comuna` VALUES (342, 'Primavera', 52);
INSERT INTO `ptv_comuna` VALUES (343, 'Timaukel', 52);
INSERT INTO `ptv_comuna` VALUES (344, 'Natales', 53);
INSERT INTO `ptv_comuna` VALUES (345, 'Torres del Paine', 53);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_empresa`
-- 

CREATE TABLE `ptv_empresa` (
  `RutEmpresa` varchar(12) collate utf8_spanish2_ci NOT NULL,
  `NombreEmpresa` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `RazonSocial` varchar(250) collate utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `Direccion` varchar(250) collate utf8_spanish2_ci NOT NULL,
  `IdTipoempresa` int(11) NOT NULL,
  `IdMaestra` int(11) NOT NULL,
  PRIMARY KEY  (`RutEmpresa`),
  KEY `IdTipoempresa` (`IdTipoempresa`),
  KEY `IdTipoempresa_2` (`IdTipoempresa`),
  KEY `IdMaestra` (`IdMaestra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- 
-- Volcar la base de datos para la tabla `ptv_empresa`
-- 

INSERT INTO `ptv_empresa` VALUES ('11.111.111-1', 'KAFUS', 'IMPORTADORA KAFUS LTDA.', '22222222', 'ESTACION CENTRAL 22', 1, 1);
INSERT INTO `ptv_empresa` VALUES ('22.222.222-2', 'ROMERAL', 'COMERCIALIZADORA ROMERAL LTDA.', '22222222', 'SAN MIGUEL 22', 2, 2);
INSERT INTO `ptv_empresa` VALUES ('33.333.333-3', 'VITAL', 'DISTRIBUIDORA VITAL S.A.', '33333333', 'MAIPU 33', 3, 1);
INSERT INTO `ptv_empresa` VALUES ('11.1111.111-', 'Empresa de Prueba', 'razon de prueba', '123456', '', 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_maestra`
-- 

CREATE TABLE `ptv_maestra` (
  `IdMaestra` int(11) NOT NULL auto_increment,
  `Logo` varchar(50) NOT NULL,
  PRIMARY KEY  (`IdMaestra`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `ptv_maestra`
-- 

INSERT INTO `ptv_maestra` VALUES (1, 'tenno');
INSERT INTO `ptv_maestra` VALUES (2, 'otro');
INSERT INTO `ptv_maestra` VALUES (3, 'otro mas');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_menu`
-- 

CREATE TABLE `ptv_menu` (
  `IdMenu` int(11) NOT NULL auto_increment,
  `NombreMenu` varchar(20) NOT NULL,
  `RutaMenu` varchar(100) NOT NULL,
  `OrdenMenu` int(11) NOT NULL default '0',
  PRIMARY KEY  (`IdMenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `ptv_menu`
-- 

INSERT INTO `ptv_menu` VALUES (1, 'Mantencion', 'listado_empresas', 0);
INSERT INTO `ptv_menu` VALUES (2, 'Inventario', '#', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_movimiento`
-- 

CREATE TABLE `ptv_movimiento` (
  `IdMovimiento` int(11) NOT NULL auto_increment,
  `FechaVenta` datetime NOT NULL,
  `Venta` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `ValorUnitario` int(11) NOT NULL,
  `ValorVenta` int(11) NOT NULL,
  `UtilidadVenta` int(11) NOT NULL,
  `Descuento` int(11) NOT NULL,
  `IdStock` int(11) NOT NULL,
  PRIMARY KEY  (`IdMovimiento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `ptv_movimiento`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_producto`
-- 

CREATE TABLE `ptv_producto` (
  `IdProducto` int(11) NOT NULL auto_increment,
  `Codigo` varchar(250) collate utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(250) collate utf8_spanish2_ci NOT NULL,
  `Sabor` varchar(250) collate utf8_spanish2_ci NOT NULL,
  `PrecioCompra` int(11) NOT NULL,
  `PrecioVenta` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Utilidad` int(11) NOT NULL,
  `IdEmpresa` int(11) NOT NULL,
  PRIMARY KEY  (`IdProducto`),
  KEY `IdEmpresa` (`IdEmpresa`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=18 ;

-- 
-- Volcar la base de datos para la tabla `ptv_producto`
-- 

INSERT INTO `ptv_producto` VALUES (1, '7802820600100', 'AGUA MINERAL CON GAS', 'NATURAL', 400, 500, 1000, 100, 2);
INSERT INTO `ptv_producto` VALUES (8, '1234564889', 'CocaCola 1.5', 'Normal', 500, 700, 0, 200, 2);
INSERT INTO `ptv_producto` VALUES (9, '1234564889', 'CocaCola 1.5', 'Normal', 500, 700, 0, 200, 2);
INSERT INTO `ptv_producto` VALUES (10, '789524165', 'PASTILLAS LIGNI', 'SIN SABOR', 1000, 1500, 0, 500, 2);
INSERT INTO `ptv_producto` VALUES (11, '097786738', 'Nectar Wats', 'Naranja', 200, 500, 0, 300, 2);
INSERT INTO `ptv_producto` VALUES (16, '0900980980', 'CREMA', 'FRUTILLA', 9000, 90000, 0, 81000, 12);
INSERT INTO `ptv_producto` VALUES (17, '9808908', 'prueba', 'prueba', 900, 1000, 0, 100, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_region`
-- 

CREATE TABLE `ptv_region` (
  `IdRegion` int(11) NOT NULL auto_increment,
  `NombreRegion` varchar(250) NOT NULL,
  `DescripcionRegion` varchar(250) NOT NULL,
  PRIMARY KEY  (`IdRegion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `ptv_region`
-- 

INSERT INTO `ptv_region` VALUES (1, 'Arica y Parinacota', 'XV');
INSERT INTO `ptv_region` VALUES (2, 'Tarapacá', 'I');
INSERT INTO `ptv_region` VALUES (3, 'Antofagasta', 'II');
INSERT INTO `ptv_region` VALUES (4, 'Atacama', 'III');
INSERT INTO `ptv_region` VALUES (5, 'Coquimbo', 'IV');
INSERT INTO `ptv_region` VALUES (6, 'Valparaiso', 'V');
INSERT INTO `ptv_region` VALUES (7, 'Metropolitana de Santiago', 'RM');
INSERT INTO `ptv_region` VALUES (8, 'Libertador General Bernardo OHiggins', 'VI');
INSERT INTO `ptv_region` VALUES (9, 'Maule', 'VII');
INSERT INTO `ptv_region` VALUES (10, 'Biobío', 'VIII');
INSERT INTO `ptv_region` VALUES (11, 'La Araucanía', 'IX');
INSERT INTO `ptv_region` VALUES (12, 'Los Ríos', 'XIV');
INSERT INTO `ptv_region` VALUES (13, 'Los Lagos', 'X');
INSERT INTO `ptv_region` VALUES (14, 'Aisén del General Carlos Ibáñez del Campo', 'XI');
INSERT INTO `ptv_region` VALUES (15, 'Magallanes y de la Antártica Chilena', 'XII');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_rol`
-- 

CREATE TABLE `ptv_rol` (
  `IdRol` int(11) NOT NULL auto_increment,
  `TipoRol` varchar(50) NOT NULL,
  PRIMARY KEY  (`IdRol`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `ptv_rol`
-- 

INSERT INTO `ptv_rol` VALUES (1, 'Administrador');
INSERT INTO `ptv_rol` VALUES (2, 'Vendedor');
INSERT INTO `ptv_rol` VALUES (3, 'Bodegero');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_stock`
-- 

CREATE TABLE `ptv_stock` (
  `IdStock` int(11) NOT NULL auto_increment,
  `FechaIngreso` datetime NOT NULL,
  `DocumentoCompra` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `CantidadAnterior` int(11) NOT NULL,
  `CantidadEntrante` int(11) NOT NULL,
  `CantidadTotal` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  PRIMARY KEY  (`IdStock`),
  KEY `IdProducto` (`IdProducto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `ptv_stock`
-- 

INSERT INTO `ptv_stock` VALUES (1, '0000-00-00 00:00:00', 'G1234', 1000, 1000, 1000, 1);
INSERT INTO `ptv_stock` VALUES (2, '0000-00-00 00:00:00', 'ge8989', 0, 2000, 2000, 15);
INSERT INTO `ptv_stock` VALUES (3, '0000-00-00 00:00:00', 'GH900', 0, 89, 89, 16);
INSERT INTO `ptv_stock` VALUES (4, '0000-00-00 00:00:00', 'io9000', 0, 78, 78, 17);
INSERT INTO `ptv_stock` VALUES (5, '0000-00-00 00:00:00', 'GC958', 0, 80, 80, 18);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_submenu`
-- 

CREATE TABLE `ptv_submenu` (
  `IdSubmenu` int(11) NOT NULL auto_increment,
  `IdMenu` int(11) NOT NULL,
  `NombreSubmenu` varchar(20) NOT NULL,
  `RutaSubmenu` varchar(100) NOT NULL,
  `OrdenSubmenu` int(11) NOT NULL default '0',
  PRIMARY KEY  (`IdSubmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `ptv_submenu`
-- 

INSERT INTO `ptv_submenu` VALUES (1, 1, 'Empresas', 'listado_empresas', 0);
INSERT INTO `ptv_submenu` VALUES (2, 1, 'Sucursales', 'listado_sucursal', 0);
INSERT INTO `ptv_submenu` VALUES (3, 1, 'Usuarios', '#', 0);
INSERT INTO `ptv_submenu` VALUES (4, 1, 'Productos', '#', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_sucursal`
-- 

CREATE TABLE `ptv_sucursal` (
  `IdSucursal` int(11) NOT NULL auto_increment,
  `RutEmpresa` varchar(12) character set utf8 collate utf8_spanish2_ci NOT NULL,
  `NombreSucursal` varchar(250) NOT NULL,
  `DireccionSucursal` varchar(250) NOT NULL,
  `TelefonoSucursal` varchar(50) NOT NULL,
  `IdComuna` int(11) NOT NULL,
  `IdMaestra` int(11) default NULL,
  PRIMARY KEY  (`IdSucursal`),
  KEY `RutEmpresa` (`RutEmpresa`,`IdComuna`,`IdMaestra`),
  KEY `RutEmpresa_2` (`RutEmpresa`),
  KEY `IdComuna` (`IdComuna`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `ptv_sucursal`
-- 

INSERT INTO `ptv_sucursal` VALUES (1, '11.111.111-1', 'Sucursal 1', 'Direccion 1', '', 3, 0);
INSERT INTO `ptv_sucursal` VALUES (2, '11.111.111-1', 'Sucursal 2', 'Direccion 2', '', 109, 0);
INSERT INTO `ptv_sucursal` VALUES (3, '11.1111.111-', 'Matriz', '', '123456', 0, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_sucursalusuario`
-- 

CREATE TABLE `ptv_sucursalusuario` (
  `IdSucursal` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  KEY `IdSucursal` (`IdSucursal`,`IdUsuario`),
  KEY `IdSucursal_2` (`IdSucursal`),
  KEY `IdUsuario` (`IdUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `ptv_sucursalusuario`
-- 

INSERT INTO `ptv_sucursalusuario` VALUES (1, 433);
INSERT INTO `ptv_sucursalusuario` VALUES (1, 439);
INSERT INTO `ptv_sucursalusuario` VALUES (2, 433);
INSERT INTO `ptv_sucursalusuario` VALUES (2, 437);
INSERT INTO `ptv_sucursalusuario` VALUES (2, 438);
INSERT INTO `ptv_sucursalusuario` VALUES (2, 439);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_tipoempresa`
-- 

CREATE TABLE `ptv_tipoempresa` (
  `IdTipoempresa` int(11) NOT NULL auto_increment,
  `TipoEmpresa` varchar(50) NOT NULL,
  PRIMARY KEY  (`IdTipoempresa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `ptv_tipoempresa`
-- 

INSERT INTO `ptv_tipoempresa` VALUES (1, 'EMPRESA');
INSERT INTO `ptv_tipoempresa` VALUES (2, 'PROVEEDOR');
INSERT INTO `ptv_tipoempresa` VALUES (3, 'CLIENTE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_usuario`
-- 

CREATE TABLE `ptv_usuario` (
  `IdUsuario` int(11) NOT NULL auto_increment,
  `IdRol` int(11) NOT NULL,
  `NombreUsuario` varchar(50) collate utf8_spanish_ci NOT NULL,
  `Apellido` varchar(50) collate utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) collate utf8_spanish_ci NOT NULL,
  `Usuario` varchar(50) collate utf8_spanish_ci NOT NULL,
  `Clave` varchar(8) collate utf8_spanish_ci NOT NULL,
  `Activo` int(11) NOT NULL,
  `FechaRegistro` datetime NOT NULL,
  `IdMaestra` int(11) NOT NULL,
  PRIMARY KEY  (`IdUsuario`),
  KEY `TipoPerfil` (`IdRol`,`IdMaestra`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=440 ;

-- 
-- Volcar la base de datos para la tabla `ptv_usuario`
-- 

INSERT INTO `ptv_usuario` VALUES (433, 1, 'MARCELO', 'FUENTES', 'mfuentes@kafus.cl', 'mfuentes', '12345678', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `ptv_usuario` VALUES (434, 2, 'HANS', 'ZUÑIGA', 'hzuniga@romeral.cl', 'hzuniga', '12345678', 2, '0000-00-00 00:00:00', 2);
INSERT INTO `ptv_usuario` VALUES (435, 3, 'RODRIGO', 'BARRIENTOS', 'rbarrientos@vital.cl', 'rbarrientos', '12345678', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `ptv_usuario` VALUES (436, 1, 'Jose', 'Pepe', 'jpepe@kafus.cl', 'jpepe', '12345678', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `ptv_usuario` VALUES (437, 1, 'Jose', 'Pepe', 'jpepe@kafus.cl', 'jpepe', '12345678', 0, '0000-00-00 00:00:00', 1);
INSERT INTO `ptv_usuario` VALUES (438, 1, 'Crisitan', 'Pajamillo', 'cpaji@kafus.cl', 'pajis', '12345678', 0, '0000-00-00 00:00:00', 1);
INSERT INTO `ptv_usuario` VALUES (439, 1, 'MArcelo', 'perez', 'mperes@kafus.cl', 'mperez', '12345678', 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ptv_usuariosubmenu`
-- 

CREATE TABLE `ptv_usuariosubmenu` (
  `IdUsuario` int(11) NOT NULL,
  `IdSubmenu` int(11) NOT NULL,
  `Permiso` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `ptv_usuariosubmenu`
-- 

INSERT INTO `ptv_usuariosubmenu` VALUES (1, 1, 'E');
INSERT INTO `ptv_usuariosubmenu` VALUES (1, 2, 'E');
INSERT INTO `ptv_usuariosubmenu` VALUES (1, 3, 'E');
INSERT INTO `ptv_usuariosubmenu` VALUES (1, 4, 'E');
