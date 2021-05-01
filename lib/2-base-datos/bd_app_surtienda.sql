-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.17-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_app_surtienda
CREATE DATABASE IF NOT EXISTS `bd_app_surtienda` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_app_surtienda`;

-- Volcando estructura para tabla bd_app_surtienda.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `ID_CLIENTES` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_MUNICIPIO` tinyint(4) DEFAULT NULL,
  `ID_COLONIA` tinyint(4) DEFAULT NULL,
  `ID_USUA` smallint(6) DEFAULT NULL,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `APELLIDO_PAT` varchar(50) DEFAULT NULL,
  `APELLIDO_MAT` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(80) DEFAULT NULL,
  `TELEFONO` varchar(50) DEFAULT NULL,
  `NOM_LOCAL` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTES`),
  KEY `FK_CLIENTES_REFERENCE_MUNICIPI` (`ID_MUNICIPIO`),
  KEY `FK_CLIENTES_REFERENCE_USUARIOS` (`ID_USUA`),
  KEY `FK_CLIENTES_REFERENCE_COLONIA` (`ID_COLONIA`),
  CONSTRAINT `FK_CLIENTES_REFERENCE_COLONIA` FOREIGN KEY (`ID_COLONIA`) REFERENCES `colonia` (`ID_COLONIA`),
  CONSTRAINT `FK_CLIENTES_REFERENCE_MUNICIPI` FOREIGN KEY (`ID_MUNICIPIO`) REFERENCES `municipio` (`ID_MUNICIPIO`),
  CONSTRAINT `FK_CLIENTES_REFERENCE_USUARIOS` FOREIGN KEY (`ID_USUA`) REFERENCES `usuarios` (`ID_USUA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.clientes: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`ID_CLIENTES`, `ID_MUNICIPIO`, `ID_COLONIA`, `ID_USUA`, `NOMBRE`, `APELLIDO_PAT`, `APELLIDO_MAT`, `DIRECCION`, `TELEFONO`, `NOM_LOCAL`) VALUES
	(2, 2, 1, 4, 'Mitzy Nayeli ', 'Osorio ', 'Rios', 'Galindo', '9931808288', 'La mitxy'),
	(14, 1, 2, 19, 'Ericqweqweqwe', 'Alexis', 'Alexis', 'na', '9931808288', 'Eric'),
	(30, 1, 1, 35, 'Ericwrer', 'Alexis', 'Alexis', 'werwr', 'wrwe', 'wrw'),
	(31, 1, 1, 36, 'Ericwrer', 'Alexis', 'Alexis', 'werwr', 'wrwe', 'wrw'),
	(32, 1, 1, 37, 'dsf', 'sdsf', 'sfsf', 'na', '9931808288', 'sfsfds'),
	(33, 1, 1, 38, 'weqewww', 'wq', 'we', 'qeqe', 'qweeq', 'weqe'),
	(40, 1, 1, 45, 'erwerwer', 'wrwr', 'werwr', 'na', '9931808288', 'wr'),
	(44, 1, 1, 49, 'Alex', 'Arturo', 'Vazquez', 'na', '9931808288', 'Ricardez'),
	(45, 1, 1, 50, 'Eric', 'Alexis', 'Alexis', 'na', '9931808288', 'Eric'),
	(46, 1, 1, 51, 'Ericqw', 'Alexis', 'Alexis', 'na', '9931808288', 'Eric'),
	(47, 1, 1, 52, 'Ericasd', 'Alexis', 'Alexis', 'na', '9931808288', 'Eric'),
	(48, 2, 1, 53, 'Ericasdad', 'Alexis', 'Alexis', 'na', '9931808288', 'Eric'),
	(49, 1, 1, 54, 'Amy', 'Yoshie', 'Escamilla', 'na', '9931808288', 'Rabelo'),
	(50, 2, 2, 55, 'Francisco', 'Javier', 'Hernandez', 'na', '9931808288', 'Hernan');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.colonia
CREATE TABLE IF NOT EXISTS `colonia` (
  `ID_COLONIA` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_COLONIA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.colonia: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `colonia` DISABLE KEYS */;
INSERT INTO `colonia` (`ID_COLONIA`, `NOMBRE`) VALUES
	(1, 'Parrilla'),
	(2, 'Gaviotas');
/*!40000 ALTER TABLE `colonia` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla bd_app_surtienda.compras: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` (`Id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`) VALUES
	(1, 1, 'Galaxy s4', 'galaxy.jpg', '9800', '2', '19600'),
	(2, 1, 'cebolla', 'cebolla.jpg', '10.5', '1', '10.5'),
	(3, 2, 'computadora hp', 'computadora.jpg', '7400.5', '1', '7400.5'),
	(4, 2, 'Elemnt Skateboard', 'element.jpg', '700', '5', '3500');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.detalle_pedido
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `ID_FOLIO` smallint(6) DEFAULT NULL,
  `ID_PRODUCTOS` smallint(6) DEFAULT NULL,
  `CANTIDAD` tinyint(4) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL,
  KEY `FK_DETALLE__REFERENCE_PEDIDOS` (`ID_FOLIO`),
  KEY `FK_DETALLE__REFERENCE_PRODUCTO` (`ID_PRODUCTOS`),
  CONSTRAINT `FK_DETALLE__REFERENCE_PEDIDOS` FOREIGN KEY (`ID_FOLIO`) REFERENCES `pedidos` (`ID_FOLIO`),
  CONSTRAINT `FK_DETALLE__REFERENCE_PRODUCTO` FOREIGN KEY (`ID_PRODUCTOS`) REFERENCES `productos` (`ID_PRODUCTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.detalle_pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.itinerario
CREATE TABLE IF NOT EXISTS `itinerario` (
  `ID_FECHA` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_VENDEDOR` smallint(6) DEFAULT NULL,
  `ID_RUTA` smallint(6) DEFAULT NULL,
  `ID_MATRICULA` smallint(6) DEFAULT NULL,
  `HORA_SALI` time DEFAULT NULL,
  `HORA_LLEG` time DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  PRIMARY KEY (`ID_FECHA`),
  KEY `FK_ITINERAR_REFERENCE_VENDEDOR` (`ID_VENDEDOR`),
  KEY `FK_ITINERAR_REFERENCE_RUTA` (`ID_RUTA`),
  KEY `FK_ITINERAR_REFERENCE_VEHICULO` (`ID_MATRICULA`),
  CONSTRAINT `FK_ITINERAR_REFERENCE_RUTA` FOREIGN KEY (`ID_RUTA`) REFERENCES `ruta` (`ID_RUTA`),
  CONSTRAINT `FK_ITINERAR_REFERENCE_VEHICULO` FOREIGN KEY (`ID_MATRICULA`) REFERENCES `vehiculo` (`ID_MATRICULA`),
  CONSTRAINT `FK_ITINERAR_REFERENCE_VENDEDOR` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `vendedores` (`ID_VENDEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.itinerario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `itinerario` DISABLE KEYS */;
INSERT INTO `itinerario` (`ID_FECHA`, `ID_VENDEDOR`, `ID_RUTA`, `ID_MATRICULA`, `HORA_SALI`, `HORA_LLEG`, `FECHA`) VALUES
	(1, 2, 2, 6, '20:42:12', '20:42:17', '2019-12-09'),
	(2, 40, 3, 1, '20:42:58', '20:42:59', '2019-12-09'),
	(3, 1, 1, 2, '20:43:22', '20:43:24', '2019-12-09'),
	(4, 4, 4, 3, '20:43:45', '20:43:46', '2019-12-09'),
	(5, 5, 5, 5, '20:44:02', '20:44:03', '2019-12-09');
/*!40000 ALTER TABLE `itinerario` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.mantenimiento
CREATE TABLE IF NOT EXISTS `mantenimiento` (
  `ID_MANTENIMIENTO` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_MATRICULA` smallint(6) DEFAULT NULL,
  `MANT` bit(1) DEFAULT NULL,
  `FECHA` timestamp NULL DEFAULT NULL,
  `SUCURSAL` varchar(80) DEFAULT NULL,
  `MONTO_TOT` int(11) DEFAULT NULL,
  `DISPO` bit(1) DEFAULT NULL,
  `DESCRIP` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_MANTENIMIENTO`),
  KEY `FK_MANTENIM_REFERENCE_VEHICULO` (`ID_MATRICULA`),
  CONSTRAINT `FK_MANTENIM_REFERENCE_VEHICULO` FOREIGN KEY (`ID_MATRICULA`) REFERENCES `vehiculo` (`ID_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.mantenimiento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.marcas
CREATE TABLE IF NOT EXISTS `marcas` (
  `ID_MARCAS` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_MARCAS`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.marcas: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` (`ID_MARCAS`, `NOMBRE`) VALUES
	(1, 'Coca-cola'),
	(2, 'Nescafe'),
	(3, 'Lala'),
	(4, 'Knorr'),
	(5, 'Pepsi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.municipio
CREATE TABLE IF NOT EXISTS `municipio` (
  `ID_MUNICIPIO` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_MUNICIPIO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.municipio: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` (`ID_MUNICIPIO`, `NOMBRE`) VALUES
	(1, 'Centro'),
	(2, 'Balancan');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `ID_FOLIO` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_CLIENTES` smallint(6) DEFAULT NULL,
  `ID_VENDEDOR` smallint(6) DEFAULT NULL,
  `FECHA` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_FOLIO`),
  KEY `FK_PEDIDOS_REFERENCE_VENDEDOR` (`ID_VENDEDOR`),
  KEY `FK_PEDIDOS_REFERENCE_CLIENTES` (`ID_CLIENTES`),
  CONSTRAINT `FK_PEDIDOS_REFERENCE_CLIENTES` FOREIGN KEY (`ID_CLIENTES`) REFERENCES `clientes` (`ID_CLIENTES`),
  CONSTRAINT `FK_PEDIDOS_REFERENCE_VENDEDOR` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `vendedores` (`ID_VENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.pedidos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `ID_PRODUCTOS` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_SUCURSAL` smallint(6) DEFAULT NULL,
  `ID_MARCAS` tinyint(4) DEFAULT NULL,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `PRECIO_UNIT` int(11) DEFAULT NULL,
  `CADUCIDAD` timestamp NULL DEFAULT NULL,
  `CANT` int(11) DEFAULT NULL,
  `IMG` varchar(80) DEFAULT NULL,
  `DESCRIP` text DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTOS`),
  KEY `FK_PRODUCTO_REFERENCE_SUCURSAL` (`ID_SUCURSAL`),
  KEY `FK_PRODUCTO_REFERENCE_MARCAS` (`ID_MARCAS`),
  CONSTRAINT `FK_PRODUCTO_REFERENCE_MARCAS` FOREIGN KEY (`ID_MARCAS`) REFERENCES `marcas` (`ID_MARCAS`),
  CONSTRAINT `FK_PRODUCTO_REFERENCE_SUCURSAL` FOREIGN KEY (`ID_SUCURSAL`) REFERENCES `sucursales` (`ID_SUCURSAL`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.productos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`ID_PRODUCTOS`, `ID_SUCURSAL`, `ID_MARCAS`, `NOMBRE`, `PRECIO_UNIT`, `CADUCIDAD`, `CANT`, `IMG`, `DESCRIP`) VALUES
	(3, 1, 2, 'Nescafe clÃ¡sico', 56, '2020-09-28 00:00:00', 5, 'Proyectos/Suritendapp/Movil/img/6.jpg', 'Cafe de grano'),
	(4, 2, 3, 'Lala Licuado', 15, '2020-09-11 00:00:00', 5, 'Proyectos/Suritendapp/Movil/img/5.jpg', 'Licuado de yoghurt fresa plÃ¡tano'),
	(5, 3, 4, 'Knorr caldo de pollo', 7, '2020-09-10 00:00:00', 12, 'Proyectos/Suritendapp/Movil/img/1.jpg', 'Knorr caldo de pollo 1,85KG'),
	(7, 3, 4, 'Caldo de pollo ', 26, '2020-10-10 00:00:00', 12, 'Proyectos/Suritendapp/Movil/img/9.png', 'Knorr Suiza Consome de Pollo Exhibidoe'),
	(8, 1, 2, 'Nescafe ', 45, '2020-09-10 00:00:00', 12, 'Proyectos/Suritendapp/Movil/img/8.jpg', 'Nescafe dulcicrema'),
	(10, 2, 3, 'Leche Lala ', 18, '2020-09-11 00:00:00', 12, 'Proyectos/Suritendapp/Movil/img/7.png', 'Leche Lala Entera 1Lt'),
	(11, 3, 1, 'Coca-cola botella', 16, '2020-09-25 00:00:00', 47, 'Proyectos/Suritendapp/Movil/img/3.jpg', 'Coca-cola 600ml botella');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.ruta
CREATE TABLE IF NOT EXISTS `ruta` (
  `ID_RUTA` smallint(6) NOT NULL AUTO_INCREMENT,
  `RUTAS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_RUTA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.ruta: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` (`ID_RUTA`, `RUTAS`) VALUES
	(1, 'Ruta 3- Los mangos-Buenavista'),
	(2, 'Ruta 1- Los mangos- Villa el cielo'),
	(3, 'Ruta 2- Los mangos-Bosque'),
	(4, 'Ruta 4- Sandino-Los mangos '),
	(5, 'Ruta 5- Sandino-Pomoca');
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.ruta_tiendas
CREATE TABLE IF NOT EXISTS `ruta_tiendas` (
  `ID_RUTA` smallint(6) DEFAULT NULL,
  `ID_CLIENTES` smallint(6) DEFAULT NULL,
  KEY `FK_RUTA_TIE_REFERENCE_RUTA` (`ID_RUTA`),
  KEY `FK_RUTA_TIE_REFERENCE_CLIENTES` (`ID_CLIENTES`),
  CONSTRAINT `FK_RUTA_TIE_REFERENCE_CLIENTES` FOREIGN KEY (`ID_CLIENTES`) REFERENCES `clientes` (`ID_CLIENTES`),
  CONSTRAINT `FK_RUTA_TIE_REFERENCE_RUTA` FOREIGN KEY (`ID_RUTA`) REFERENCES `ruta` (`ID_RUTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.ruta_tiendas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ruta_tiendas` DISABLE KEYS */;
INSERT INTO `ruta_tiendas` (`ID_RUTA`, `ID_CLIENTES`) VALUES
	(1, 2);
/*!40000 ALTER TABLE `ruta_tiendas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.sucursales
CREATE TABLE IF NOT EXISTS `sucursales` (
  `ID_SUCURSAL` smallint(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `DIRECCION` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_SUCURSAL`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.sucursales: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` (`ID_SUCURSAL`, `NOMBRE`, `DIRECCION`) VALUES
	(1, 'Surtienda Gaviotas', 'Aquiles Caldern Marchena 416, Gaviotas Sur Sector San Jose, 86090 Villahermosa,'),
	(2, 'Surtienda Sandino', 'Av General Augusto Cesar Sandino 318, Primero de Mayo, 86190 Villahermosa, Tab.'),
	(3, 'Surtienda Los mangos', 'Sur Tienda Carr. Villahermosa la Isla, Miguel Hidalgo III Etapa, 86127 Villaherm');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID_USUA` smallint(6) NOT NULL AUTO_INCREMENT,
  `CORREO_ELEC` varchar(80) DEFAULT NULL,
  `CONTRASENA` varchar(80) DEFAULT NULL,
  `TIPO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_USUA`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.usuarios: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`ID_USUA`, `CORREO_ELEC`, `CONTRASENA`, `TIPO`) VALUES
	(1, 'st', '12345', b'1'),
	(2, 'st1', '12345', NULL),
	(4, 'Mit', '123', b'1'),
	(5, 'wrewr', '123', b'1'),
	(6, 'usuario', '123', b'1'),
	(7, 'administrador', '123', NULL),
	(19, 'stttt', '123', b'1'),
	(35, 'wwer', '2342424', b'1'),
	(36, 'wwer', '2342424', b'1'),
	(37, 'sdfsf', '12313', b'1'),
	(38, 'qee', 'qee', b'1'),
	(44, 'sdfsdf', 'werwerw', b'1'),
	(45, 'wer', 'wwww', b'1'),
	(49, 'alex99', '123456', b'1'),
	(50, 'sttttwe', '123456', b'1'),
	(51, '123we', '12342', b'1'),
	(52, 'sttttwq', '12345', b'1'),
	(53, 'sad', '123445', b'1'),
	(54, 'Amy99', '1234567', b'1'),
	(55, 'wqeqwe', 'weee', b'1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.vehiculo
CREATE TABLE IF NOT EXISTS `vehiculo` (
  `ID_MATRICULA` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_VENDEDOR` smallint(6) DEFAULT NULL,
  `MOTOR` varchar(80) DEFAULT NULL,
  `MODELO` varchar(80) DEFAULT NULL,
  `MATRICULA` varchar(50) DEFAULT NULL,
  `CAPAC` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_MATRICULA`),
  KEY `FK_VEHICULO_REFERENCE_VENDEDOR` (`ID_VENDEDOR`),
  CONSTRAINT `FK_VEHICULO_REFERENCE_VENDEDOR` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `vendedores` (`ID_VENDEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.vehiculo: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` (`ID_MATRICULA`, `ID_VENDEDOR`, `MOTOR`, `MODELO`, `MATRICULA`, `CAPAC`) VALUES
	(1, 2, '2.4', 'Nissan Np300', 'EASD445', '3.5tl'),
	(2, 1, '2.4', 'Nissan Np3', 'AWWD31', '1.5tl'),
	(3, 40, '2.4', 'Nissan Np3', 'ASDAD123', '1.5tl'),
	(4, 4, '2.4', 'Nissan Np300', 'DFRGEG', '5.5tl'),
	(5, 3, '2.47', 'Nissan Np300', 'SDFS4444', '1.5tl'),
	(6, 5, 'KJKJK', 'Nissan Cabstar 2009', 'ASDFWEFWF', '1.8tl');
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;

-- Volcando estructura para tabla bd_app_surtienda.vendedores
CREATE TABLE IF NOT EXISTS `vendedores` (
  `ID_VENDEDOR` smallint(6) NOT NULL AUTO_INCREMENT,
  `ID_COLONIA` tinyint(4) DEFAULT NULL,
  `ID_MUNICIPIO` tinyint(4) DEFAULT NULL,
  `RFC` varchar(80) DEFAULT NULL,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `APELLIDO_PAT` varchar(50) DEFAULT NULL,
  `APELLIDO_MAT` varchar(50) DEFAULT NULL,
  `TELEFONO` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(80) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  PRIMARY KEY (`ID_VENDEDOR`),
  KEY `FK_VENDEDOR_REFERENCE_COLONIA` (`ID_COLONIA`),
  KEY `FK_VENDEDOR_REFERENCE_MUNICIPI` (`ID_MUNICIPIO`),
  CONSTRAINT `FK_VENDEDOR_REFERENCE_COLONIA` FOREIGN KEY (`ID_COLONIA`) REFERENCES `colonia` (`ID_COLONIA`),
  CONSTRAINT `FK_VENDEDOR_REFERENCE_MUNICIPI` FOREIGN KEY (`ID_MUNICIPIO`) REFERENCES `municipio` (`ID_MUNICIPIO`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_app_surtienda.vendedores: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` (`ID_VENDEDOR`, `ID_COLONIA`, `ID_MUNICIPIO`, `RFC`, `NOMBRE`, `APELLIDO_PAT`, `APELLIDO_MAT`, `TELEFONO`, `DIRECCION`, `FECHA_NAC`) VALUES
	(1, 1, 1, 'AVVR133EDA3', 'Alex Arturo', 'Vazquez', 'Ricardez', '9934808285', 'Edificio 9, De partamentos', '1996-04-05'),
	(2, 2, 1, 'ACP8454ED4SD', 'Abigail  ', 'Cornelio', 'Peraza', '9931808288', 'Calle avenida No 123', '1998-11-03'),
	(3, 1, 1, 'WAPG6465EF4', 'Wendy Aracely', 'Perez', 'Gomez', '9931808288', 'Calle Santa fe', '1997-12-09'),
	(4, 1, 1, 'EBR55454FSD5', 'Ricardo  ', 'Chavez', 'Calzada', '9935552444', 'Las margaritas', '2019-12-09'),
	(5, 2, 1, 'ZSH54RF15SFS', 'Elizabeth ', 'Rodriguez', 'Ricardez', '9935485462', 'Carretera Villahermosa', '1999-06-18'),
	(40, 1, 2, 'AEYR544DDS', 'Amy Yoshie ', 'Escamillatrt', 'Rabelo', '9931808288', 'Cerrada caso del arbol', '1996-05-03');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
