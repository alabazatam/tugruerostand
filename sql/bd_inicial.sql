/*
SQLyog Community v12.15 (64 bit)
MySQL - 5.5.53-0ubuntu0.14.04.1 : Database - admin_tugruero_stand
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`admin_tugruero_stand` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `Aplicaciones` */

DROP TABLE IF EXISTS `Aplicaciones`;

CREATE TABLE `Aplicaciones` (
  `IdAplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) DEFAULT NULL,
  `EstatusAplicacion` int(1) DEFAULT NULL,
  PRIMARY KEY (`IdAplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Aplicaciones` */

/*Table structure for table `Beneficios` */

DROP TABLE IF EXISTS `Beneficios`;

CREATE TABLE `Beneficios` (
  `idBeneficio` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT 'Activo',
  `Orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBeneficio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `Beneficios` */

insert  into `Beneficios`(`idBeneficio`,`Descripcion`,`Estatus`,`Orden`) values 
(1,'Auxilio vial en 30 minutos','Activo',1),
(2,'Acceso a la APP móvil TU/GRUERO®','Activo',2),
(3,'Acceso a servicios vía Call Center','Activo',3),
(4,'Búsqueda de grueros vía GPS','Activo',4),
(5,'Disponible en los 24 estados del país','Activo',5),
(6,'2000 grueros disponibles para el auxilio','Activo',6),
(7,'Un (01) año de duración','Activo',7),
(8,'Servicios de grúa urbanos ilimitados','Activo',8),
(9,'RCV (opcional)','Activo',9),
(10,'Un (01) servicio de grúa Extraurbano de 300km','Activo',10);

/*Table structure for table `Estados` */

DROP TABLE IF EXISTS `Estados`;

CREATE TABLE `Estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `Estados` */

insert  into `Estados`(`id_estado`,`name`,`status`) values 
(1,'Amazonas',1),
(2,'Anzoátegui',1),
(3,'Apure',1),
(4,'Aragua',1),
(5,'Barinas',1),
(6,'Bolivar',1),
(7,'Carabobo',1),
(8,'Cojedes',1),
(9,'Delta Amacuro',1),
(10,'Dependencias Federales',1),
(11,'Distrito Capital',1),
(12,'Falcón',1),
(13,'Guárico',1),
(14,'Lara',1),
(15,'Mérida',1),
(16,'Miranda',1),
(17,'Monagas',1),
(18,'Nueva Esparta',1),
(19,'Poruguesa',1),
(20,'Sucre',1),
(21,'Táchira',1),
(22,'Trujillo',1),
(23,'Vargas',1),
(24,'Yaracuy',1),
(25,'Zulia',1);

/*Table structure for table `Marcas` */

DROP TABLE IF EXISTS `Marcas`;

CREATE TABLE `Marcas` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(100) NOT NULL,
  `Estado` varchar(1) NOT NULL DEFAULT 'A',
  `Tipo` int(1) DEFAULT '1' COMMENT '1 vehiculo 2 moto',
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

/*Data for the table `Marcas` */

insert  into `Marcas`(`IdMarca`,`Marca`,`Estado`,`Tipo`) values 
(1,'Acura','A',1),
(2,'Alfa Romeo','A',1),
(3,'Aston Martin','A',1),
(4,'Audi','A',1),
(5,'BMW','A',1),
(6,'BYD','A',1),
(7,'Buick','A',1),
(8,'Cadillac','A',1),
(9,'Chana','A',1),
(10,'Changhe','A',1),
(11,'Chery','A',1),
(12,'Chevrolet','A',1),
(13,'Chrysler','A',1),
(14,'Citroën','A',1),
(15,'Corvette','A',1),
(16,'Daewoo','A',1),
(17,'Dodge','A',1),
(18,'Dongfeng','A',1),
(19,'Ferrari','A',1),
(20,'Fiat','A',1),
(21,'Ford','A',1),
(22,'Geely','A',1),
(23,'Great Wall','A',1),
(24,'Hafei','A',1),
(25,'Haima','A',1),
(26,'Honda','A',1),
(27,'Hummer','A',1),
(28,'Hyundai','A',1),
(29,'Infiniti','A',1),
(30,'Isuzu','A',1),
(31,'JMC','A',1),
(32,'Jaguar','A',1),
(33,'Jeep','A',1),
(34,'Kia','A',1),
(35,'Lada','A',1),
(36,'Land Rover','A',1),
(37,'Lexus','A',1),
(38,'Lifan','A',1),
(39,'Lincoln','A',1),
(40,'Maserati','A',1),
(41,'Mazda','A',1),
(43,'Mercury','A',1),
(44,'Mini','A',1),
(45,'Mitsubishi','A',1),
(46,'Nissan','A',1),
(47,'Peugeot','A',1),
(48,'Pontiac','A',1),
(49,'Porsche','A',1),
(50,'Renault','A',1),
(51,'Saic Wuling','A',1),
(52,'Scion','A',1),
(53,'Seat','A',1),
(54,'Skoda','A',1),
(55,'Smart','A',1),
(56,'Subaru','A',1),
(57,'Suzuki','A',1),
(58,'Tata','A',1),
(59,'Toyota','A',1),
(60,'Tyanye','A',1),
(61,'Volkswagen','A',1),
(62,'Zhongxing','A',1),
(63,'Zotye','A',1),
(64,'Otra','A',1),
(65,'Daihatsu','A',1),
(66,'Saipa/Venirauto','A',1),
(67,'Yamaha','A',2),
(68,'Bera','A',2),
(69,'Triumph','A',2),
(70,'United Motors','A',2),
(71,'Empire','A',2),
(72,'Skygo','A',2),
(73,'Ducati','A',2),
(74,'Kawasaki','A',2),
(75,'Honda','A',2),
(76,'Unico','A',2),
(77,'Vespa','A',2),
(78,'KTM','A',2),
(79,'LML','A',2),
(80,'Suzuki','A',2),
(81,'Mercedes Benz','A',2),
(82,'Aprilia','A',2),
(83,'Can-Am','A',2),
(84,'Harley Davidson','A',2),
(85,'Bajaj','A',2),
(86,'BMW','A',2),
(87,'Husqvarna','A',2),
(88,'Gilera','A',2);

/*Table structure for table `Planes` */

DROP TABLE IF EXISTS `Planes`;

CREATE TABLE `Planes` (
  `idPlan` int(11) NOT NULL AUTO_INCREMENT,
  `Aseguradora` varchar(50) DEFAULT 'tugruero.com',
  `Nombre` varchar(100) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Estado` varchar(20) NOT NULL DEFAULT 'A',
  `Tipo` varchar(20) DEFAULT 'tugruero.com',
  `Puestos` int(11) DEFAULT '5',
  `IVA` varchar(1) DEFAULT NULL,
  `Abreviatura` varchar(10) DEFAULT NULL,
  `CantidadServicios` varchar(100) DEFAULT NULL,
  `TipoServicio` varchar(100) DEFAULT NULL,
  `Kilometraje` varchar(100) DEFAULT NULL,
  `PrecioIva` int(11) DEFAULT '0',
  `Urbano` varchar(1) DEFAULT 'S',
  `ExtraUrbano` varchar(1) DEFAULT 'N',
  `RCVCosas` decimal(10,2) DEFAULT NULL,
  `RCVPersonas` decimal(10,2) DEFAULT NULL,
  `RCVPrima` decimal(10,2) DEFAULT NULL,
  `ExcesoLimites` decimal(10,2) DEFAULT NULL,
  `ExcesoPrima` decimal(10,2) DEFAULT NULL,
  `DefensaPenal` decimal(10,2) DEFAULT NULL,
  `DefensaPrima` decimal(10,2) DEFAULT NULL,
  `APOVMuerte` decimal(10,2) DEFAULT NULL,
  `APOVInvalidez` decimal(10,2) DEFAULT NULL,
  `APOVGastos` decimal(10,2) DEFAULT NULL,
  `APOVPrima` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `Planes` */

insert  into `Planes`(`idPlan`,`Aseguradora`,`Nombre`,`Precio`,`Estado`,`Tipo`,`Puestos`,`IVA`,`Abreviatura`,`CantidadServicios`,`TipoServicio`,`Kilometraje`,`PrecioIva`,`Urbano`,`ExtraUrbano`,`RCVCosas`,`RCVPersonas`,`RCVPrima`,`ExcesoLimites`,`ExcesoPrima`,`DefensaPenal`,`DefensaPrima`,`APOVMuerte`,`APOVInvalidez`,`APOVGastos`,`APOVPrima`) values 
(1,'tugruero.com','TU GRUERO PLUS','40000.00','A','tugruero.com',0,'S','TGP-CCCT','ILIMITADO','URBANO(*)','MAX 50 KM',40000,'S','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'tugruero.com','TU GRUERO GOLD','120000.00','A','tugruero.com',0,'S','TGG-CCCT','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)','URBANO (*) Y EXTRAURBANO (*)','MAX 300 KM',120000,'S','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'Asistir','RCV','5932.90','A','RCV',5,'N','RCV-CCCT',NULL,NULL,NULL,0,'S','S','58491.00','73809.00','1150.00','500000.00','2682.90','100000.00','600.00','200000.00','200000.00','20000.00','1500.00'),
(4,'Asistir','RCV','6232.90','A','RCV',6,'N','RCV-CCCT',NULL,NULL,NULL,0,'S','S','58491.00','73809.00','1150.00','500000.00','2682.90','100000.00','600.00','200000.00','200000.00','20000.00','1800.00'),
(5,'Asistir','RCV','6532.90','A','RCV',7,'N','RCV-CCCT',NULL,NULL,NULL,0,'S','S','58491.00',NULL,'1150.00','500000.00','2682.90','100000.00','600.00','200000.00','200000.00','20000.00','2100.00');

/*Table structure for table `PlanesBeneficios` */

DROP TABLE IF EXISTS `PlanesBeneficios`;

CREATE TABLE `PlanesBeneficios` (
  `idPlan` int(11) NOT NULL,
  `idBeneficio` int(11) NOT NULL,
  `Estatus` varchar(20) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `PlanesBeneficios` */

insert  into `PlanesBeneficios`(`idPlan`,`idBeneficio`,`Estatus`) values 
(1,1,'Activo'),
(1,2,'Activo'),
(1,3,'Activo'),
(1,4,'Activo'),
(1,5,'Activo'),
(1,6,'Activo'),
(1,7,'Activo'),
(1,8,'Activo'),
(1,9,'Activo'),
(1,10,'Desactivado'),
(2,1,'Activo'),
(2,2,'Activo'),
(2,3,'Activo'),
(2,4,'Activo'),
(2,5,'Activo'),
(2,6,'Activo'),
(2,7,'Activo'),
(2,8,'Activo'),
(2,9,'Activo'),
(2,10,'Activo');

/*Table structure for table `PlanesRecarga` */

DROP TABLE IF EXISTS `PlanesRecarga`;

CREATE TABLE `PlanesRecarga` (
  `IdPlanRecarga` int(11) NOT NULL AUTO_INCREMENT,
  `idPlan` int(11) DEFAULT NULL,
  `Factor` decimal(10,2) DEFAULT NULL,
  `AnioDesde` int(11) DEFAULT NULL,
  `AnioHasta` int(11) DEFAULT NULL,
  `Kilometraje` varchar(100) DEFAULT NULL,
  `CantidadServicios` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPlanRecarga`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `PlanesRecarga` */

insert  into `PlanesRecarga`(`IdPlanRecarga`,`idPlan`,`Factor`,`AnioDesde`,`AnioHasta`,`Kilometraje`,`CantidadServicios`) values 
(1,1,'1.00',2000,2100,'MAX 50 KM','ILIMITADO'),
(2,2,'1.00',2000,2100,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)'),
(3,1,'1.20',1990,1999,'MAX 50 KM','3 SERVICIOS URBANOS (*)'),
(4,2,'1.20',1990,1999,'MAX 300 KM','3 SERVICIOS URBANOS (*) Y UNO (01) EXTRAURBANO (*)'),
(5,1,'2.00',1980,1989,'MAX 50 KM','3 SERVICIOS URBANOS (*)'),
(6,2,'2.00',1980,1989,'MAX 300 KM','3 SERVICIOS URBANOS (*) Y UNO (01) EXTRAURBANO (*)');

/*Table structure for table `PlanesVendedores` */

DROP TABLE IF EXISTS `PlanesVendedores`;

CREATE TABLE `PlanesVendedores` (
  `IdV` int(11) NOT NULL AUTO_INCREMENT,
  `NombreVendedor` varchar(50) DEFAULT NULL,
  `Correo1` varchar(100) DEFAULT NULL,
  `Correo2` varchar(100) DEFAULT NULL,
  `Correo3` varchar(100) DEFAULT NULL,
  `EstadoVendedor` varchar(20) DEFAULT 'Activo',
  PRIMARY KEY (`IdV`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `PlanesVendedores` */

insert  into `PlanesVendedores`(`IdV`,`NombreVendedor`,`Correo1`,`Correo2`,`Correo3`,`EstadoVendedor`) values 
(1,'tugruero.com','suscripcion@tugruero.com',NULL,NULL,'Activo'),
(2,'Johan Leal','deandrademarcos@gmail.com','deandrademarcos@gmail.com','deandrademarcos@gmail.com','Activo'),
(3,'CCCT','suscripcion@tugruero.com','suscripcion@tugruero.com','suscripcion@tugruero.com','Activo');

/*Table structure for table `Polizas` */

DROP TABLE IF EXISTS `Polizas`;

CREATE TABLE `Polizas` (
  `idPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `Placa` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Cedula` varchar(12) DEFAULT NULL,
  `Nombre` text CHARACTER SET latin1,
  `Apellido` text CHARACTER SET latin1,
  `Marca` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Modelo` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Clase` varchar(50) DEFAULT 'Automóvil',
  `Tipo` varchar(20) DEFAULT NULL,
  `Color` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Año` varchar(5) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `Serial` varchar(100) DEFAULT NULL,
  `Seguro` varchar(50) DEFAULT NULL,
  `NumPoliza` varchar(100) DEFAULT NULL,
  `DireccionEDO` varchar(30) DEFAULT NULL,
  `Domicilio` text,
  `DireccionFiscal` text,
  `Vencimiento` date DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `created_by` int(1) DEFAULT NULL,
  `updated_by` int(1) DEFAULT NULL,
  `Nacionalidad` varchar(10) DEFAULT NULL,
  `Celular` varchar(30) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DesdeVigencia` datetime DEFAULT NULL,
  `EstatusPoliza` varchar(40) DEFAULT 'Activo',
  `Respaldo` int(11) DEFAULT '0',
  PRIMARY KEY (`idPoliza`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `Polizas` */

insert  into `Polizas`(`idPoliza`,`Placa`,`Cedula`,`Nombre`,`Apellido`,`Marca`,`Modelo`,`Clase`,`Tipo`,`Color`,`Año`,`Serial`,`Seguro`,`NumPoliza`,`DireccionEDO`,`Domicilio`,`DireccionFiscal`,`Vencimiento`,`date_created`,`date_updated`,`created_by`,`updated_by`,`Nacionalidad`,`Celular`,`Email`,`DesdeVigencia`,`EstatusPoliza`,`Respaldo`) values 
(1,'ASDASDA','V-18020594','MARCOS','DE ANDRADE','Daewoo','ASDASD','Automóvil','N/A','ASDASD','1991','N/A','TU GRUERO GOLD','TGG-CCCT-0001','Apure','SDFSDFSDFSDF',NULL,'2017-08-26','2017-08-26 12:32:26','2017-08-26 12:32:26',1,1,NULL,NULL,NULL,'2017-08-26 00:00:00','Activo',1),
(2,'RWERWER','V-18020594','SADASDAS','ASDASDA','Daihatsu','ERWERWE','Automóvil','N/A','WERWE','2005','N/A','TU GRUERO PLUS','TGP-CCCT-0001','Anzoátegui','ASDASDASDAS',NULL,'2017-08-26','2017-08-26 12:36:55','2017-08-26 12:36:55',1,1,NULL,NULL,NULL,'2017-08-26 00:00:00','Activo',1),
(3,'DASDASD','V-18020594','MARCOS','DE ANDRADE','Aston Martin','ASDASDASD','Automóvil','N/A','ASDASDASDASDAS','1991','N/A','TU GRUERO GOLD','TGG-CCCT-0002','Apure','ASDASDASDASDASDASDASDASDSA',NULL,'2017-08-26','2017-08-26 17:30:58','2017-08-26 17:30:58',1,1,NULL,NULL,NULL,'2017-08-26 00:00:00','Activo',1),
(4,'SSSSSSS','V-18020594','KJDHASHDA','HKAHSKDHAS','Acura','SSSSSSSSSSS','Automóvil','N/A','SSSSSSSSSS','1990','N/A','TU GRUERO GOLD','TGG-CCCT-0003','Anzoátegui','DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD',NULL,'2017-08-26','2017-08-26 17:43:44','2017-08-26 17:43:44',1,1,NULL,NULL,NULL,'2017-08-26 00:00:00','Activo',1),
(5,'SDFSDFS','V-18020589','SDLSJDLKA','SDFSDFSDFDFSDD','Acura','SDFSDFD','Automóvil','N/A','SDFDFSF','1992','N/A','TU GRUERO GOLD','TGG-CCCT-0004','Apure','ASDASDASD ASDASDASDASDS',NULL,'2017-08-26','2017-08-26 18:04:48','2017-08-26 18:04:48',1,1,NULL,NULL,NULL,'2017-08-26 00:00:00','Activo',1),
(6,'DASDASD','V-18020594','MARCOS','DE ANDRADE','Aston Martin','ASDASDASD','Automóvil','N/A','ASDASDASDASDAS','1991','N/A','TU GRUERO GOLD','TGG-CCCT-0005','Apure','ASDASDASDASDASDASDASDASDSA',NULL,'2017-08-28','2017-08-28 18:48:50','2017-08-28 18:48:50',1,1,NULL,NULL,NULL,'2017-08-28 00:00:00','Activo',1),
(7,'AAAAAAA','V-18020594','MARCOS','DE ANDRADE','Daihatsu','A','Automóvil','N/A','AAA','2014','N/A','TU GRUERO PLUS','TGP-CCCT-0002','Nueva Esparta','LASJASHKJDAHSDJAHSKDHA SDJKAHSKJDHAKJSDHKAJSDJA',NULL,'2017-08-28','2017-08-28 18:50:29','2017-08-28 18:50:29',1,1,NULL,NULL,NULL,'2017-08-28 00:00:00','Activo',1),
(8,'SSSSSSS','V-18020594','MARCOS','DE ANDRADE','Acura','SSSSSSSSSSSSSS','Automóvil','N/A','SSSS','1994','N/A','TU GRUERO GOLD','TGG-CCCT-0006','Anzoátegui','DIRECCION DE DOMICILIO',NULL,'2017-08-28','2017-08-28 18:56:07','2017-08-28 18:56:07',1,1,NULL,NULL,NULL,'2017-08-28 00:00:00','Activo',1),
(9,'44EESDD','V-18020594','MARCOS','DE ANDRADE','Daewoo','AVEO','Automóvil','N/A','ASDASDASDAS','1980','N/A','TU GRUERO PLUS','TGP-CCCT-0003','Distrito Capital','DIRECCION DE DOCMIICHHUDSHGSDGHJSDGHJSD',NULL,'2017-09-13','2017-09-13 11:25:27','2017-09-13 11:25:27',1,1,NULL,NULL,NULL,'2017-09-13 00:00:00','Activo',0),
(10,'SSSSS','V-18020594','MARCOS','DE ANDSREADE','Acura','AVEO','Automóvil','N/A','ASSS','1982','N/A','TU GRUERO PLUS','TGP-CCCT-0004','Distrito Capital','ALKSJDLASJD AKLSJDKLASJDLKAJSLDKJASD',NULL,'2017-09-13','2017-09-13 19:25:45','2017-09-13 19:25:45',1,1,NULL,NULL,NULL,'2017-09-13 00:00:00','Activo',0);

/*Table structure for table `PolizasBCK` */

DROP TABLE IF EXISTS `PolizasBCK`;

CREATE TABLE `PolizasBCK` (
  `Placa` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Cedula` varchar(12) DEFAULT NULL,
  `Nombre` text CHARACTER SET latin1,
  `Apellido` text CHARACTER SET latin1,
  `Marca` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Modelo` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Clase` varchar(50) DEFAULT 'Automóvil',
  `Tipo` varchar(20) DEFAULT NULL,
  `Color` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Año` varchar(5) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `Serial` varchar(100) DEFAULT NULL,
  `Seguro` varchar(50) DEFAULT NULL,
  `NumPoliza` varchar(100) DEFAULT NULL,
  `DireccionEDO` varchar(30) DEFAULT NULL,
  `Domicilio` text,
  `DireccionFiscal` text,
  `Vencimiento` date DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `created_by` int(1) DEFAULT NULL,
  `updated_by` int(1) DEFAULT NULL,
  `Nacionalidad` varchar(10) DEFAULT NULL,
  `Celular` varchar(30) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DesdeVigencia` datetime DEFAULT NULL,
  `EstatusPoliza` varchar(40) DEFAULT 'Activo',
  `Respaldo` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `PolizasBCK` */

/*Table structure for table `PreguntasFrecuentes` */

DROP TABLE IF EXISTS `PreguntasFrecuentes`;

CREATE TABLE `PreguntasFrecuentes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pregunta` text,
  `Respuesta` text,
  `orden` int(11) DEFAULT NULL,
  `Estado` varchar(11) DEFAULT 'Activo',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `PreguntasFrecuentes` */

insert  into `PreguntasFrecuentes`(`Id`,`Pregunta`,`Respuesta`,`orden`,`Estado`) values 
(1,'¿Qué es TU/GRUERO® Plus y TU/GRUERO® Gold?','					<p class=\"text-justify white-font extra_bold\">\r\n                                            <strong class=\"white-font extra_bold\">TU/GRUERO® Plus y TU/GRUERO® Gold</strong> son planes de grúas anualizados que brindan los siguientes beneficios:\r\n                                        <ul>\r\n                                            <li class=\"text-left white-font\">Servicios de grúa ilimitados a nivel nacional. 24/7, los 365 días del año.</li>\r\n                                            <li class=\"text-left white-font\">Rescate en menos de 30 minutos.</li>\r\n                                            <li class=\"text-left white-font\">Más de 2000 grueros en todo el país.</li>\r\n                                            <li class=\"text-left white-font\">Búsqueda del gruero más cercano vía GPS.</li>\r\n                                            <li class=\"text-left white-font\">Los grueros más calificados del mercado.</li>\r\n                                            <li class=\"text-left white-font\">Acceso a la innovadora aplicación móvil para el auxilio vial  <strong class=\"white-font extra_bold\">TU/GRUERO®</strong></li>\r\n                                        </ul>\r\n                                            \r\n                   </p>\r\n                                        <p class=\"text-justify white-font\">\r\n                                            Este plan puede adquirirse en conjunto con una póliza de seguro de <strong class=\"white-font extra_bold\">Responsabilidad Civil Vehicular (RCV)</strong>, de forma opcional.\r\n                                        </p>',1,'Activo'),
(2,'¿Qué días y en qué horarios funciona el servicio TU/GRUERO®?','			<p class=\"text-justify white-font\">\r\n						Está activo las 24/7 y los 365 días del año.\r\n					</p>\r\n',2,'Activo'),
(3,'¿TU/GRUERO® funciona a nivel internacional?','					<p class=\"text-justify white-font\">\r\n						En estos momentos el servicio sólo se presta en el territorio nacional de Venezuela indicado en la pregunta anterior.\r\n					</p>',4,'Activo'),
(4,'¿A qué número de teléfono puedo llamar para pedir información?','					<p class=\"text-justify white-font\">\r\n                                            <strong class=\"white-font extra_bold\">0500-GRUERO-0 (0500-478376-0)</strong> (Solicitud de servicios de grúas) / <strong class=\"white-font extra_bold\">0212-419-0105</strong> (Información y Suscripción)\r\n					</p>',5,'Activo'),
(5,'¿Sólo descargo la aplicación y ya puedo disfrutar del servicio?','					<p class=\"text-justify white-font\">\r\n                                            Para solicitar servicios de grúa en la aplicación debes estar asegurado con alguna compañía de seguro afiliada a nosotros o debes estar afiliado a TU/GRUERO PLUS. \r\n					</p>\r\n                                        <p class=\"text-justify white-font\">\r\n                                            De igual forma, puedes disfrutar de nuestros servicios sin estar asegurado a ninguna compañía de seguros ni afiliado a nuestro plan, llamando a nuestro Call Center al 0500-GRUERO-0 (0500-478376-0)\r\n                                            \r\n                                        </p>',6,'Activo'),
(6,'¿La Aplicación tiene algún costo?','					<p class=\"text-justify white-font\">\r\n                                            No tiene costo alguno. Su descarga es gratuita.\r\n					</p>',7,'Activo'),
(7,'¿Cómo me afilio a los planes TU/GRUERO® Plus y TU/GRUERO® Gold?','					<p class=\"text-justify white-font\">\r\n                                            Puede adquirirlos en nuestra página web, o escribirnos un correo electrónico a suscripcion@tugruero.com o también llamando a nuestro Call Center al <strong class=\"white-font extra_bold\">0500-GRUERO-0 (0500-478376-0)</strong> y al <strong class=\"white-font extra_bold\">0212-419-0105</strong>\r\n					</p>',8,'Activo'),
(8,'¿Cuánto cuesta el plan TU/GRUERO PLUS?','					<p class=\"text-justify white-font\">\r\n                                            El plan cuesta 30.000 Bs. + IVA (pregunte por formas de pago). Precio vigente hasta el 31 Mayo de 2017.\r\n					</p>',9,'Activo'),
(9,'¿Cubren Taxis y vehículos de transporte con los planes TU/GRUERO® Plus y TU/GRUERO® Gold?','					<p class=\"text-justify white-font\">\r\n                                            Sí. Para consultar precios del plan para este tipo de vehículos llamar al <strong class=\"white-font extra_bold\">0212-419-0105.</strong>\r\n					</p>',10,'Activo'),
(10,'¿Cuáles son los métodos de pago para la afiliación a TU/GRUERO® Plus y TU/GRUERO® Gold?','					<p class=\"text-justify white-font\">\r\n                                            Puede pagar vía transferencia bancaria o con su Tarjeta de Crédito a través de nuestro botón de pago virtual.\r\n					</p>',11,'Activo'),
(11,'¿Cuáles son los Bancos disponibles para hacer pagos?','					<p class=\"text-justify white-font\">\r\n                                        <ul>\r\n                                            <li class=\"text-left white-font\">Banesco</li>\r\n                                            <li class=\"text-left white-font\">Mercantil</li>\r\n                                            <li class=\"text-left white-font\">Provincial</li>\r\n                                            <li class=\"text-left white-font\">Banco de Venezuela</li>\r\n                                            <li class=\"text-left white-font\">Banco Venezolano de Crédito</li>\r\n                                            <li class=\"text-left white-font\">BNC</li>\r\n                                            <li class=\"text-left white-font\">Banco Exterior</li>\r\n                                            <li class=\"text-left white-font\">BOD</li>\r\n                                            <li class=\"text-left white-font\">Bancaribe</li>\r\n                                            <li class=\"text-left white-font\">Banco Activo</li>\r\n                                            <li class=\"text-left white-font\">Banco Plaza</li>\r\n                                            <li class=\"text-left white-font\">Banco del Tesoro</li>\r\n                                        </ul>\r\n					</p>',12,'Activo'),
(12,'¿Cuánto pesa la Aplicación TU/GRUERO®?','					<p class=\"text-justify white-font\">\r\n                                            La Aplicación pesa 4mb\r\n					</p>',13,'Activo'),
(13,'¿Cuáles son las opciones que tengo que tener activas en mi teléfono inteligente para la aplicación?','					<p class=\"text-justify white-font\">\r\n                                            Debes poseer un plan de datos y el GPS activado.\r\n					</p>',14,'Activo'),
(14,'¿Para cuáles plataformas está disponible la aplicación TU/GRUERO®?','					<p class=\"text-justify white-font\">\r\n                                            Está disponible en las tiendas: <strong class=\"white-font extra_bold\">Google Play</strong> (para Androids) y <strong class=\"white-font extra_bold\">AppStore</strong> (para teléfonos marca Apple).\r\n					</p>',15,'Activo'),
(15,'¿La aplicación TU/GRUERO® funciona para Windows Phone y Blackberry?','					<p class=\"text-justify white-font\">\r\n                                            No\r\n					</p>',16,'Activo'),
(16,'¿Cómo descargar la aplicación TU/GRUERO®?','					<p class=\"text-justify white-font\">\r\n                                        <ol>\r\n                                            <li class=\"text-left white-font\">Busca nuestra aplicación en Appstore (iOS) o PlayStore (Android) como TUGRUERO- App para clientes</li>\r\n                                            <li class=\"text-left white-font\">Descárgala</li>\r\n                                            <li class=\"text-left white-font\">Disfruta de Nuestro Servicio de grúa</li>\r\n\r\n                                        </ol>\r\n					</p>',17,'Activo'),
(17,'¿Cómo usar la aplicación TU/GRUERO – App para clientes?','					<p class=\"text-justify white-font\">\r\n                                        <ol>\r\n                                            <li class=\"text-left white-font\">Ingresa en la aplicación</li>\r\n                                            <li class=\"text-left white-font\">Ingresa tus datos</li>\r\n                                            <li class=\"text-left white-font\">Indica que le sucedió a tu vehículo</li>\r\n                                            <li class=\"text-left white-font\">Indica a donde vas</li>\r\n                                            <li class=\"text-left white-font\">Confirma tu ubicación</li>\r\n                                            <li class=\"text-left white-font\">Mira donde está el gruero que te auxiliará</li>\r\n                                            <li class=\"text-left white-font\">Califica el servicio y sigue en la vía</li>\r\n                                        </ol>\r\n					</p>',18,'Activo'),
(18,'¿Cuánto tiempo tarda una grúa en llegar al sitio del vehículo accidentado?','					<p class=\"text-justify white-font\">\r\n                                            <strong class=\"white-font extra_bold\">TU/GRUERO®</strong> garantiza un tiempo de rescate menor a 30 minutos en ciudades, y menor  a 1 hora y 30 minutos cuando son vehículos averiados en mitad de autopistas y carreteras nacionales e interestatales.\r\n					</p>',19,'Activo'),
(19,'¿Tienen servicios de taxi?','					<p class=\"text-justify white-font\">\r\n                                            Si. <strong class=\"white-font extra_bold\">TU/GRUERO®</strong> presta servicios de taxi.\r\n					</p>',20,'Activo'),
(20,'¿Hay que hacer un pago adicional para contar con el servicio de Taxi?','					<p class=\"text-justify white-font\">\r\n                                            Si usted está asegurado con una compañía de seguros afiliada a nosotros o está afiliado a <strong class=\"white-font extra_bold\">TU/GRUERO® Plus o TU/GRUERO® Gold</strong>, el servicio de taxi por cada servicio de grúa está cubierto (no debe pagarlo)\r\n					</p>',21,'Activo'),
(21,'¿Cómo puedo ser parte del equipo de TU/GRUERO como proveedor de grúa?','	<p class=\"text-justify white-font\">\r\n                                            Debe ser parte del <strong class=\"white-font extra_bold\">Club de Grúas Venezuela</strong> con su número de socio asignado.\r\n					</p>',22,'Activo'),
(22,'¿Cómo me hago miembro del Club de Grúas Venezuela?','					<p class=\"text-justify white-font\">\r\n                                            Debe aplicar para ser socio del <strong class=\"white-font extra_bold\">Club Grúas Venezuela</strong> llamando a cualquiera de los directivos regionales de dicho gremio. Para saber información de estos directivos puede llamar a nuestro Call Center al <strong class=\"white-font extra_bold\">0212-227-5273</strong> (línea directa para proveedores). \r\n					</p>',23,'Activo'),
(23,'¿Hay una aplicación para los grueros?','					<p class=\"text-justify white-font\">\r\n                                            Sí. La aplicación <strong class=\"white-font extra_bold\">TU/GRUERO®</strong> es bilateral, es decir, hay una <strong class=\"white-font extra_bold\">App para clientes</strong> y una <strong class=\"white-font extra_bold\">App para Grueros.</strong>\r\n                                        </p>',24,'Activo'),
(24,'¿Dónde funciona la aplicación y el servicio de auxilio vial de TU/GRUERO®?','					\r\n					<p class=\"text-justify white-font\">\r\n						A lo largo de todo el territorio nacional de Venezuela (en los 24 estados incluyendo, Nueva Esparta), tanto la aplicación como el servicio prestado por nuestro Call Center.\r\n					</p>\r\n		',3,'Activo');

/*Table structure for table `Respaldos` */

DROP TABLE IF EXISTS `Respaldos`;

CREATE TABLE `Respaldos` (
  `IdRespaldo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`IdRespaldo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `Respaldos` */

insert  into `Respaldos`(`IdRespaldo`,`Nombre`,`Fecha`) values 
(1,'admin_tugruero_20170826053803.zip','2017-08-26 05:38:04'),
(2,'admin_tugruero_20170828064554.zip','2017-08-28 06:45:54'),
(3,'admin_tugruero_20170828064900.zip','2017-08-28 06:49:00'),
(4,'admin_tugruero_20170828065042.zip','2017-08-28 06:50:42'),
(5,'admin_tugruero_20170828065621.zip','2017-08-28 06:56:22');

/*Table structure for table `Seguros` */

DROP TABLE IF EXISTS `Seguros`;

CREATE TABLE `Seguros` (
  `id_seguro` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id_seguro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `Seguros` */

insert  into `Seguros`(`id_seguro`,`name`,`status`) values 
(1,'Universal de Seguros',1),
(2,'Asistir Cooperativa',1),
(3,'TU GRUERO PLUS',1),
(4,'TU GRUERO GOLD',1);

/*Table structure for table `SolicitudAprobada` */

DROP TABLE IF EXISTS `SolicitudAprobada`;

CREATE TABLE `SolicitudAprobada` (
  `idSolicitudPlan` int(11) NOT NULL,
  `NumProducto` varchar(20) DEFAULT NULL,
  `VigenciaDesde` date DEFAULT NULL,
  `VigenciaHasta` date DEFAULT NULL,
  `PolizaAsistir` varchar(50) DEFAULT NULL,
  `ReciboAsistir` varchar(50) DEFAULT NULL,
  `FechaAprobacion` date DEFAULT NULL,
  PRIMARY KEY (`idSolicitudPlan`),
  CONSTRAINT `SolicitudAprobada_ibfk_1` FOREIGN KEY (`idSolicitudPlan`) REFERENCES `SolicitudPlan` (`idSolicitudPlan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudAprobada` */

insert  into `SolicitudAprobada`(`idSolicitudPlan`,`NumProducto`,`VigenciaDesde`,`VigenciaHasta`,`PolizaAsistir`,`ReciboAsistir`,`FechaAprobacion`) values 
(1,'TGG-CCCT-0006','2017-08-28','2017-08-28','02-5-CCCT-0007','02-5-CCCT-0007-1','2017-08-28'),
(2,'TGP-CCCT-0002','2017-08-28','2017-08-28','02-5-CCCT-0006','02-5-CCCT-0006-1','2017-08-28'),
(3,'TGG-CCCT-0001','2017-08-26','2017-08-26','02-5-CCCT-0001','02-5-CCCT-0001-1','2017-08-26'),
(4,'TGP-CCCT-0001','2017-08-26','2017-08-26','02-5-CCCT-0002','02-5-CCCT-0002-1','2017-08-26'),
(5,'TGG-CCCT-0005','2017-08-28','2017-08-28','02-5-CCCT-0005','02-5-CCCT-0005-1','2017-08-28'),
(6,'TGG-CCCT-0002','2017-08-26','2017-08-26','02-5-CCCT-0003','02-5-CCCT-0003-1','2017-08-26'),
(7,'TGG-CCCT-0003','2017-08-26','2017-08-26','02-5-CCCT-0004','02-5-CCCT-0004-1','2017-08-26'),
(8,'TGG-CCCT-0004','2017-08-26','2017-08-26',NULL,NULL,'2017-08-26'),
(9,'TGP-CCCT-0003','2017-09-13','2017-09-13','02-5-CCCT-0008','02-5-CCCT-0008-1','2017-09-13'),
(10,'TGP-CCCT-0004','2017-09-13','2017-09-13','02-5-CCCT-0009','02-5-CCCT-0009-1','2017-09-13');

/*Table structure for table `SolicitudAprobadaBCK` */

DROP TABLE IF EXISTS `SolicitudAprobadaBCK`;

CREATE TABLE `SolicitudAprobadaBCK` (
  `idSolicitudPlan` int(11) NOT NULL,
  `NumProducto` varchar(20) DEFAULT NULL,
  `VigenciaDesde` date DEFAULT NULL,
  `VigenciaHasta` date DEFAULT NULL,
  `PolizaAsistir` varchar(50) DEFAULT NULL,
  `ReciboAsistir` varchar(50) DEFAULT NULL,
  `FechaAprobacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudAprobadaBCK` */

/*Table structure for table `SolicitudCorrelativoProducto` */

DROP TABLE IF EXISTS `SolicitudCorrelativoProducto`;

CREATE TABLE `SolicitudCorrelativoProducto` (
  `idCorrelativo` int(11) NOT NULL,
  `ValorCorrelativo` int(11) DEFAULT '1' COMMENT 'El valor que este actualmente es el que va a colocar',
  `Descripcion` text,
  `AbreviaturaPlan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idCorrelativo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudCorrelativoProducto` */

insert  into `SolicitudCorrelativoProducto`(`idCorrelativo`,`ValorCorrelativo`,`Descripcion`,`AbreviaturaPlan`) values 
(1,5,'TGP TUGRUERO PLUS Numero producto generado desde la página. El valor de ValorCorrelativo actual es el que se va a guardar','TGP-CCCT'),
(2,7,'TGG TUGRUERO GOLD Numero producto generado desde la página. El valor de ValorCorrelativo actual es el que se va a guardar','TGG-CCCT'),
(3,10,'Correlativo asistir','RCV-CCCT');

/*Table structure for table `SolicitudDocumentos` */

DROP TABLE IF EXISTS `SolicitudDocumentos`;

CREATE TABLE `SolicitudDocumentos` (
  `idSolicitudPlan` int(11) NOT NULL,
  `TipoDocumento` varchar(50) NOT NULL,
  `NombreDocumento` varchar(50) NOT NULL,
  `FechaSubida` datetime DEFAULT NULL,
  `Estatus` varchar(3) DEFAULT 'ENV' COMMENT 'ENV = EN PROCESO, ACT = Verificado',
  PRIMARY KEY (`idSolicitudPlan`,`TipoDocumento`,`NombreDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudDocumentos` */

insert  into `SolicitudDocumentos`(`idSolicitudPlan`,`TipoDocumento`,`NombreDocumento`,`FechaSubida`,`Estatus`) values 
(1,'Cedula','Cedula_CCCT_1.jpg','2017-08-28 06:55:56','ENV'),
(2,'Cedula','Cedula_CCCT_2.pdf','2017-08-26 05:05:40','ENV'),
(3,'Cedula','Cedula_CCCT_3.pdf','2017-08-26 12:30:43','ENV'),
(4,'Cedula','Cedula_CCCT_4.pdf','2017-08-26 12:36:48','ENV'),
(5,'Cedula','Cedula_CCCT_5.pdf','2017-08-26 05:30:35','ENV'),
(6,'Cedula','Cedula_CCCT_6.png','2017-08-26 05:25:30','ENV'),
(7,'Cedula','Cedula_CCCT_7.pdf','2017-08-26 05:50:47','ENV'),
(8,'Cedula','Cedula_CCCT_8.png','2017-08-26 06:06:15','ENV'),
(9,'Cedula','Cedula_CCCT_9.pdf','2017-09-13 11:25:46','ENV'),
(10,'Cedula','Cedula_CCCT_10.pdf','2017-09-13 07:25:37','ENV');

/*Table structure for table `SolicitudDocumentosBCK` */

DROP TABLE IF EXISTS `SolicitudDocumentosBCK`;

CREATE TABLE `SolicitudDocumentosBCK` (
  `idSolicitudPlan` int(11) NOT NULL,
  `TipoDocumento` varchar(50) NOT NULL,
  `NombreDocumento` varchar(50) NOT NULL,
  `FechaSubida` datetime DEFAULT NULL,
  `Estatus` varchar(3) DEFAULT 'ENV' COMMENT 'ENV = EN PROCESO, ACT = Verificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudDocumentosBCK` */

/*Table structure for table `SolicitudPagoDetalle` */

DROP TABLE IF EXISTS `SolicitudPagoDetalle`;

CREATE TABLE `SolicitudPagoDetalle` (
  `idSolicitudPlan` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'approved',
  `status_detail` varchar(100) DEFAULT NULL,
  `currency_id` varchar(50) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `date_approved` varchar(50) DEFAULT NULL,
  `payment_method_id` varchar(50) DEFAULT NULL,
  `payment_type_id` varchar(50) DEFAULT NULL,
  `collector_id` varchar(50) DEFAULT NULL,
  `payer_type` varchar(50) DEFAULT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(50) DEFAULT NULL,
  `payer_identification_type` varchar(50) DEFAULT NULL,
  `payer_identification_number` varchar(50) DEFAULT NULL,
  `payer_first_name` varchar(50) DEFAULT NULL,
  `payer_last_name` varchar(50) DEFAULT NULL,
  `payer_entity_type` varchar(50) DEFAULT NULL,
  `transaction_amount` varchar(50) DEFAULT NULL,
  `net_received_amount` varchar(50) DEFAULT NULL,
  `carholder_name` varchar(50) DEFAULT NULL,
  `carholder_identification_type` varchar(50) DEFAULT NULL,
  `cardholder_identification_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idSolicitudPlan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPagoDetalle` */

insert  into `SolicitudPagoDetalle`(`idSolicitudPlan`,`id`,`description`,`status`,`status_detail`,`currency_id`,`date_created`,`date_approved`,`payment_method_id`,`payment_type_id`,`collector_id`,`payer_type`,`payer_id`,`payer_email`,`payer_identification_type`,`payer_identification_number`,`payer_first_name`,`payer_last_name`,`payer_entity_type`,`transaction_amount`,`net_received_amount`,`carholder_name`,`carholder_identification_type`,`cardholder_identification_number`) values 
(1,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-28 06:55:56','débito','credit_card',NULL,NULL,'guest','DEANDRADEMARCOS@GMAIL.COM',NULL,'',NULL,NULL,NULL,'126532.9',NULL,'',NULL,NULL),
(2,'sfsdfsd','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-28 06:50:16','débito','credit_card',NULL,NULL,'guest','AHKSJHDKJAS@G.COM',NULL,'fsdfsdfsdf',NULL,NULL,NULL,'25932.9',NULL,'dfsdfsdfd',NULL,NULL),
(3,'sdfsdf','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 12:32:19','débito','credit_card',NULL,NULL,'guest','ADMIN@GMAIL.COM',NULL,'sdfsdfsd',NULL,NULL,NULL,'155932.9',NULL,'fsdfsdfsdfsd',NULL,NULL),
(4,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 12:36:47','débito','credit_card',NULL,NULL,'guest','ASDAS@H.COM',NULL,'',NULL,NULL,NULL,'90000',NULL,'',NULL,NULL),
(5,'dfgdfg','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 05:30:45','débito','credit_card',NULL,NULL,'guest','DEANDRADEMARCOS@GMAIL.COM',NULL,'dfgdfgdfg',NULL,NULL,NULL,'125932.9',NULL,'dfgdfgdfgdfgdfgdfgdf',NULL,NULL),
(6,'dfgdfg','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 05:25:29','débito','credit_card',NULL,NULL,'guest','DEANDRADEMARCOS@GMAIL.COM',NULL,'dfgdfgdfg',NULL,NULL,NULL,'126532.9',NULL,'dfgdfgdfgdfgdfgdfgdf',NULL,NULL),
(7,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 05:42:42','débito','credit_card',NULL,NULL,'guest','ddddd@gmail.com',NULL,'',NULL,NULL,NULL,'125932.9',NULL,'',NULL,NULL),
(8,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-08-26 06:04:34','débito','credit_card',NULL,NULL,'guest','SADAS@GMAIL.COM',NULL,'',NULL,NULL,NULL,'120000',NULL,'',NULL,NULL),
(9,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-09-13 11:25:12','débito','credit_card',NULL,NULL,'guest','DEANDRADEMARCOS@GMAIL.COM',NULL,'',NULL,NULL,NULL,'86532.9',NULL,'',NULL,NULL),
(10,'','Pago de plan mediante la herramienta administrativa','approved',NULL,NULL,NULL,'2017-09-13 07:25:37','débito','credit_card',NULL,NULL,'guest','DE@G.COM',NULL,'',NULL,NULL,NULL,'85932.9',NULL,'',NULL,NULL);

/*Table structure for table `SolicitudPagoDetalleBCK` */

DROP TABLE IF EXISTS `SolicitudPagoDetalleBCK`;

CREATE TABLE `SolicitudPagoDetalleBCK` (
  `idSolicitudPlan` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'approved',
  `status_detail` varchar(100) DEFAULT NULL,
  `currency_id` varchar(50) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `date_approved` varchar(50) DEFAULT NULL,
  `payment_method_id` varchar(50) DEFAULT NULL,
  `payment_type_id` varchar(50) DEFAULT NULL,
  `collector_id` varchar(50) DEFAULT NULL,
  `payer_type` varchar(50) DEFAULT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(50) DEFAULT NULL,
  `payer_identification_type` varchar(50) DEFAULT NULL,
  `payer_identification_number` varchar(50) DEFAULT NULL,
  `payer_first_name` varchar(50) DEFAULT NULL,
  `payer_last_name` varchar(50) DEFAULT NULL,
  `payer_entity_type` varchar(50) DEFAULT NULL,
  `transaction_amount` varchar(50) DEFAULT NULL,
  `net_received_amount` varchar(50) DEFAULT NULL,
  `carholder_name` varchar(50) DEFAULT NULL,
  `carholder_identification_type` varchar(50) DEFAULT NULL,
  `cardholder_identification_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPagoDetalleBCK` */

/*Table structure for table `SolicitudPlan` */

DROP TABLE IF EXISTS `SolicitudPlan`;

CREATE TABLE `SolicitudPlan` (
  `idSolicitudPlan` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(100) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `EstadoCivil` varchar(20) DEFAULT 'Soltero(a)',
  `FechaNacimiento` date DEFAULT NULL,
  `Sexo` varchar(20) DEFAULT 'Masculino',
  `Rif` varchar(20) DEFAULT NULL,
  `Estado` varchar(40) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `Domicilio` text,
  `Telefono` varchar(20) DEFAULT NULL,
  `Celular` varchar(20) DEFAULT NULL,
  `FechaSolicitud` date DEFAULT NULL,
  `TipoPago` varchar(50) DEFAULT 'TDC' COMMENT 'DEP = transferencia o Deposito, TDC = tarjeta de credito',
  `NumeroTransaccion` varchar(50) DEFAULT NULL,
  `Clase` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Anio` varchar(4) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Placa` varchar(50) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Puestos` int(11) DEFAULT NULL,
  `SerialMotor` varchar(50) DEFAULT NULL,
  `SerialCarroceria` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL COMMENT 'ENV = EN PROCESO DE VALIDACIÓN DE PAGO,  ACT=PLAN PAGADO Y ACTIVO, REC = RECHAZADO',
  `TotalSinIva` decimal(10,2) DEFAULT '0.00',
  `TotalConIva` decimal(10,2) DEFAULT '0.00',
  `PagoRealizado` varchar(1) DEFAULT 'N',
  `Observacion` text,
  `IdV` int(11) DEFAULT '1',
  `Kilometraje` varchar(100) DEFAULT NULL,
  `CantidadServicios` varchar(100) DEFAULT NULL,
  `Respaldo` int(1) DEFAULT '0',
  `IdRespaldo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSolicitudPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPlan` */

insert  into `SolicitudPlan`(`idSolicitudPlan`,`Nombres`,`Apellidos`,`Correo`,`Cedula`,`EstadoCivil`,`FechaNacimiento`,`Sexo`,`Rif`,`Estado`,`Ciudad`,`Domicilio`,`Telefono`,`Celular`,`FechaSolicitud`,`TipoPago`,`NumeroTransaccion`,`Clase`,`Marca`,`Modelo`,`Anio`,`Color`,`Placa`,`Tipo`,`Puestos`,`SerialMotor`,`SerialCarroceria`,`Estatus`,`TotalSinIva`,`TotalConIva`,`PagoRealizado`,`Observacion`,`IdV`,`Kilometraje`,`CantidadServicios`,`Respaldo`,`IdRespaldo`) values 
(1,'MARCOS','DE ANDRADE','DEANDRADEMARCOS@GMAIL.COM','V-18020594','Casado(a)','2017-08-26','Masculino','V-18020594','Anzoátegui','CARACAS','DIRECCION DE DOMICILIO','02128601223','04268141850','2017-08-26','TDC','0','Automóvil','Acura','SSSSSSSSSSSSSS','1994','SSSS','SSSSSSS','Pick Up',7,'','','ACT','126232.90','126232.90','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(2,'MARCOS','DE ANDRADE','AHKSJHDKJAS@G.COM','V-18020594','Divorciado(a)','2017-08-26','Masculino','V-18020594','Nueva Esparta','CARACAS','LASJASHKJDAHSDJAHSKDHA SDJKAHSKJDHAKJSDHKAJSDJA','02128601223','04241212121','2017-08-26','TDC','0','Automóvil','Daihatsu','A','2014','AAA','AAAAAAA','Coupé',5,'sdfsdfs','dfsdfsdfsd','ACT','0.00','0.00','S',NULL,3,'MAX 50 KM','50 URBANO (*) y 01 extra',1,NULL),
(3,'MARCOS','DE ANDRADE','ADMIN@GMAIL.COM','V-18020594','Soltero(a)','2017-08-26','Masculino','V-18020594','Apure','CARACAS','SDFSDFSDFSDF','02128601223','04141234567','2017-08-26','DEP','0','Automóvil','Daewoo','ASDASD','1991','ASDASD','ASDASDA','Coupé',5,'','','ACT','125932.90','125932.90','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(4,'SADASDAS','ASDASDA','ASDAS@H.COM','V-18020594','Divorciado(a)','2017-08-26','Masculino','V-182000000','Anzoátegui','ASDASDAS','ASDASDASDAS','02128601223','04141213132','2017-08-26','DEP','0','Automóvil','Daihatsu','ERWERWE','2005','WERWE','RWERWER','Coupé',7,'sdfsdfsdfsdf','sdfsdfsdfd','ACT','90000.00','90000.00','S',NULL,3,'MAX 50 KM','ILIMITADO',1,NULL),
(5,'MARCOS','DE ANDRADE','DEANDRADEMARCOS@GMAIL.COM','V-18020594','Casado(a)','2017-08-26','Masculino','V-18020594','Apure','SDASDASDASDAS','ASDASDASDASDASDASDASDASDSA','02128601223','04143232323','2017-08-26','TDC','0','Automóvil','Aston Martin','ASDASDASD','1991','ASDASDASDASDAS','DASDASD','Coupé',5,'asdasdasdasdas','asdasdasdasdasdsa','ACT','126532.90','126532.90','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(6,'MARCOS','DE ANDRADE','DEANDRADEMARCOS@GMAIL.COM','V-18020594','Casado(a)','2017-08-26','Masculino','V-18020594','Apure','SDASDASDASDAS','ASDASDASDASDASDASDASDASDSA','02128601223','04143232323','2017-08-26','TDC','0','Automóvil','Aston Martin','ASDASDASD','1991','ASDASDASDASDAS','DASDASD','Coupé',7,'asdasdasdasdas','asdasdasdasdasdsa','ACT','126532.90','126532.90','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(7,'KJDHASHDA','HKAHSKDHAS','DDDDD@GMAIL.COM','V-18020594','Casado(a)','2017-08-26','Masculino','V-18020594','Anzoátegui','ZSDASDASDAS','DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD','02128602122','04141111111','2017-08-26','TDC','0','Automóvil','Acura','SSSSSSSSSSS','1990','SSSSSSSSSS','SSSSSSS','Coupé',5,'','','ACT','125932.90','125932.90','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(8,'SDLSJDLKA','SDFSDFSDFDFSDD','SADAS@GMAIL.COM','V-18020589','Casado(a)','2017-08-26','Masculino','V-18020594','Apure','CARACAS','ASDASDASD ASDASDASDASDS','02128601223','04241212112','2017-08-26','DEP','0','Automóvil','Acura','SDFSDFD','1992','SDFDFSF','SDFSDFS','Cross Over',5,'','','ACT','120000.00','120000.00','S',NULL,3,'MAX 300 KM','ILIMITADO URBANO (*) Y UNO (01) EXTRAURBANO (*)',1,NULL),
(9,'MARCOS','DE ANDRADE','DEANDRADEMARCOS@GMAIL.COM','V-18020594','Casado(a)','2017-09-13','Masculino','','Distrito Capital','CARACAS','DIRECCION DE DOCMIICHHUDSHGSDGHJSDGHJSD','','04268141850','2017-09-13','TDC','0','Automóvil','Daewoo','AVEO','1980','ASDASDASDAS','44EESDD','Coupé',7,'','','ACT','246532.90','246532.90','S',NULL,3,'MAX 50 KM','3 SERVICIOS URBANOS (*)',0,NULL),
(10,'MARCOS','DE ANDSREADE','DE@G.COM','V-18020594','Soltero(a)','2017-09-13','Masculino','V-18020594','Distrito Capital','CSASJDAKLSDJ','ALKSJDLASJD AKLSJDKLASJDLKAJSLDKJASD','','04268141850','2017-09-13','TDC','0','Camioneta','Acura','AVEO','1982','ASSS','SSSSS','Cross Over',5,'asdasd','asdasdasdas','ACT','85932.90','85932.90','S',NULL,3,'MAX 50 KM','3 SERVICIOS URBANOS (*)',0,NULL);

/*Table structure for table `SolicitudPlanBCK` */

DROP TABLE IF EXISTS `SolicitudPlanBCK`;

CREATE TABLE `SolicitudPlanBCK` (
  `idSolicitudPlan` int(11) NOT NULL DEFAULT '0',
  `Nombres` varchar(100) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `EstadoCivil` varchar(20) DEFAULT 'Soltero(a)',
  `FechaNacimiento` date DEFAULT NULL,
  `Sexo` varchar(20) DEFAULT 'Masculino',
  `Rif` varchar(20) DEFAULT NULL,
  `Estado` varchar(40) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `Domicilio` text,
  `Telefono` varchar(20) DEFAULT NULL,
  `Celular` varchar(20) DEFAULT NULL,
  `FechaSolicitud` date DEFAULT NULL,
  `TipoPago` varchar(50) DEFAULT NULL COMMENT 'DEP = transferencia o Deposito, TDC = tarjeta de credito',
  `NumeroTransaccion` varchar(50) DEFAULT NULL,
  `Clase` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Anio` varchar(4) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Placa` varchar(50) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Puestos` int(11) DEFAULT NULL,
  `SerialMotor` varchar(50) DEFAULT NULL,
  `SerialCarroceria` varchar(50) DEFAULT NULL,
  `Estatus` varchar(50) DEFAULT NULL COMMENT 'ENV = EN PROCESO DE VALIDACIÓN DE PAGO,  ACT=PLAN PAGADO Y ACTIVO, REC = RECHAZADO',
  `TotalSinIva` decimal(10,2) DEFAULT '0.00',
  `TotalConIva` decimal(10,2) DEFAULT '0.00',
  `PagoRealizado` varchar(1) DEFAULT 'N',
  `Observacion` text,
  `IdV` int(11) DEFAULT '1',
  `Kilometraje` varchar(100) DEFAULT NULL,
  `CantidadServicios` varchar(100) DEFAULT NULL,
  `Respaldo` int(1) DEFAULT '0',
  `IdRespaldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPlanBCK` */

/*Table structure for table `SolicitudPlanSeleccion` */

DROP TABLE IF EXISTS `SolicitudPlanSeleccion`;

CREATE TABLE `SolicitudPlanSeleccion` (
  `idSolicitudPlan` int(11) NOT NULL,
  `idPlan` int(11) NOT NULL,
  `PrecioConIva` decimal(10,2) DEFAULT '0.00',
  `PrecioSinIva` decimal(10,2) DEFAULT '0.00',
  `FechaSolicitud` date DEFAULT NULL,
  PRIMARY KEY (`idSolicitudPlan`,`idPlan`),
  KEY `idPlan` (`idPlan`),
  CONSTRAINT `SolicitudPlanSeleccion_ibfk_1` FOREIGN KEY (`idSolicitudPlan`) REFERENCES `SolicitudPlan` (`idSolicitudPlan`),
  CONSTRAINT `SolicitudPlanSeleccion_ibfk_2` FOREIGN KEY (`idPlan`) REFERENCES `Planes` (`idPlan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPlanSeleccion` */

insert  into `SolicitudPlanSeleccion`(`idSolicitudPlan`,`idPlan`,`PrecioConIva`,`PrecioSinIva`,`FechaSolicitud`) values 
(1,2,'120000.00','120000.00','2017-08-28'),
(1,5,'6532.90','6532.90','2017-08-28'),
(2,1,'20000.00','20000.00','2017-08-28'),
(2,3,'5932.90','5932.90','2017-08-28'),
(3,2,'150000.00','150000.00','2017-08-26'),
(3,3,'5932.90','5932.90','2017-08-26'),
(4,1,'40000.00','40000.00','2017-08-26'),
(4,5,'50000.00','50000.00','2017-08-26'),
(5,2,'120000.00','120000.00','2017-08-26'),
(5,3,'5932.90','5932.90','2017-08-26'),
(6,2,'120000.00','120000.00','2017-08-26'),
(6,5,'6532.90','6532.90','2017-08-26'),
(7,2,'120000.00','120000.00','2017-08-26'),
(7,3,'5932.90','5932.90','2017-08-26'),
(8,2,'120000.00','120000.00','2017-08-26'),
(9,1,'80000.00','80000.00','2017-09-13'),
(9,5,'6532.90','6532.90','2017-09-13'),
(10,1,'80000.00','80000.00','2017-09-13'),
(10,3,'5932.90','5932.90','2017-09-13');

/*Table structure for table `SolicitudPlanSeleccionBCK` */

DROP TABLE IF EXISTS `SolicitudPlanSeleccionBCK`;

CREATE TABLE `SolicitudPlanSeleccionBCK` (
  `idSolicitudPlan` int(11) NOT NULL,
  `idPlan` int(11) NOT NULL,
  `PrecioConIva` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PrecioSinIva` decimal(10,2) DEFAULT '0.00',
  `FechaSolicitud` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `SolicitudPlanSeleccionBCK` */

/*Table structure for table `apps` */

DROP TABLE IF EXISTS `apps`;

CREATE TABLE `apps` (
  `id_app` int(11) NOT NULL AUTO_INCREMENT,
  `name_app` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_app`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `apps` */

insert  into `apps`(`id_app`,`name_app`,`status`,`date_created`,`date_updated`) values 
(1,'PAGINA_WEB',1,'2016-03-21 22:30:41','2016-03-21 22:30:43'),
(2,'GRUEROS',1,'2016-03-21 22:30:59','2016-03-21 22:31:01'),
(3,'ADMINISTRADOR',1,'2016-03-21 22:31:11','2016-03-21 22:31:13'),
(4,'MASTERS',1,'2016-05-03 21:54:47','2016-05-03 21:54:49');

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

insert  into `bank`(`id`,`name`) values 
(1,'100%BANCO'),
(2,'ABN AMRO BANK'),
(3,'BANCAMIGA BANCO MICROFINANCIERO, C.A.'),
(4,'BANCO ACTIVO BANCO COMERCIAL,C.A.'),
(5,'BANCO AGRICOLA'),
(6,'BANCO BICENTENARIO'),
(7,'BANCO CARONI C.A. BANCO UNIVERSAL.'),
(8,'BANCO CENTRAL DE VENEZUELA.'),
(9,'BANCO DE DESARROLLO DEL MICROEMPRESARIO'),
(10,'BANCO DE VENEZUELA S.A.I.C.A.'),
(11,'BANCO DEL CARIBE C.A.'),
(12,'BANCO DEL PUEBLO SOBERANO C.A.'),
(13,'BANCO DEL TESORO'),
(14,'BANCO ESPIRITO SANTO, S.A.'),
(15,'BANCO EXTERIOR C.A.'),
(16,'BANCO INTERNACIONAL DE DESARROLLO, C.A.'),
(17,'BANCO MERCANTIL C.A.'),
(18,'BANCO NACIONAL DE CREDITO'),
(19,'BANCO OCCIDENTAL DE DESCUENTO.'),
(20,'BANCO PLAZA'),
(21,'BANCO PROVINCIAL BBVA'),
(22,'BANCO VENEZOLANO DE CREDITO S.A.'),
(23,'BANCRECER S.A. BANCO DE DESARROLLO'),
(24,'BANFANB'),
(25,'BANGENTE'),
(26,'BANPLUS BANCO COMERCIAL C.A'),
(27,'CITIBANK.'),
(28,'DELSUR BANCO UNIVERSAL'),
(29,'FONDO COMUN'),
(30,'INSTITUTO MUNICIPAL DE CRÉDITO POPULAR'),
(31,'MIBANCO BANCO DE DESARROLLO, C.A.'),
(32,'SOFITASA'),
(33,'BANESCO, BANCO UNIVERSAL');

/*Table structure for table `caroussel` */

DROP TABLE IF EXISTS `caroussel`;

CREATE TABLE `caroussel` (
  `id_caroussel` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_caroussel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `caroussel` */

insert  into `caroussel`(`id_caroussel`,`name`,`status`) values 
(1,'myCarousel',1);

/*Table structure for table `caroussel_details` */

DROP TABLE IF EXISTS `caroussel_details`;

CREATE TABLE `caroussel_details` (
  `id_cardet` int(11) NOT NULL AUTO_INCREMENT,
  `id_caroussel` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `alt` varchar(200) NOT NULL,
  `data_target` varchar(100) DEFAULT NULL,
  `orders` int(1) DEFAULT NULL,
  `data_slide_to` int(11) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cardet`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `caroussel_details` */

insert  into `caroussel_details`(`id_cardet`,`id_caroussel`,`image`,`status`,`alt`,`data_target`,`orders`,`data_slide_to`,`class`) values 
(1,1,'caroussel1.png',1,'Uno','#myCarousel',1,0,'active'),
(2,1,'caroussel2.png',1,'Dos','#myCarousel',2,1,NULL),
(3,1,'caroussel3.png',1,'Tres','#myCarousel',3,2,NULL);

/*Table structure for table `contents_html` */

DROP TABLE IF EXISTS `contents_html`;

CREATE TABLE `contents_html` (
  `id_content` int(11) NOT NULL AUTO_INCREMENT,
  `html` text NOT NULL,
  `div_id` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `page` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `language` varchar(5) NOT NULL DEFAULT 'es',
  `id_app` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id_content`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `contents_html` */

insert  into `contents_html`(`id_content`,`html`,`div_id`,`section`,`page`,`status`,`language`,`id_app`,`name`,`orders`,`title`,`date_created`,`date_updated`) values 
(1,'Somos Soluciones Tugruero, C.A. una empresa 100% venezolana de base tecnológica dedicada a la prestación de servicios de auxilia vial a través de distintas herramientas innovadoras de comunicación, entre todos los usuarios de nuestra plataforma que requieran de auxilio vial y los proveedores de grúas disponibles y más cercanos a ellos.','about','about','page.php',1,'es',1,'QUIENES_SOMOS',1,'¿Quiénes somos?','2016-04-02 12:21:55','2016-04-02 12:37:44'),
(2,'Ofrecemos tranquilidad a los accidentados en la vía entregándoles el mejor servicio de auxilio vial por medio de nuestra excelente plataforma de comunicación, teniendo como principal objetivo construir una empresa sustentable donde todos queramos ir a trabajar para ayudar a los demás.\r\n','about','about','page.php',1,'es',1,'NUESTRA_MISION',2,'Nuestra misión','2016-04-02 12:21:57','2016-04-02 12:22:12'),
(3,'Ser la plataforma tecnológica número uno a nivel mundial en auxilio vial, teniendo la red de grueros más amplia, trabajando con el 100% de las compañías de seguro existentes y la mayor cantidad de personas no aseguradas del mercado','about','about','page.php',1,'es',1,'DONDE_VAMOS',3,'Hacia donde vamos','2016-04-02 12:21:59','2016-04-02 12:22:12'),
(4,'Somos Soluciones Tugruero, C.A. una empresa 100% venezolana de base tecnológica dedicada a la prestación de servicios de auxilia vial a través de distintas herramientas innovadoras de comunicación, entre todos los usuarios de nuestra plataforma que requieran de auxilio vial y los proveedores de grúas disponibles y más cercanos a ellos. ','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',1,'Nuestros Objetivos','2016-04-02 12:22:01','2016-04-02 12:22:12'),
(5,'Construir una empresa sustentable donde todos queramos ir a trabajar para ayudar a los demás.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',1,'','2016-04-02 12:22:03','2016-04-02 12:22:12'),
(6,'Tener afiliados a nuestra plataforma al 100% de los grueros que operan en Venezuela, para que brinden el mejor servicio de auxilio vial a los usuarios suscritos en la misma.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',2,'','2016-04-02 12:22:08','2016-04-02 12:22:12'),
(7,'Contribuir notablemente a la mejora de la industria y el servicio de auxilio vial en Venezuela y el mundo.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',3,'','2016-04-02 12:22:10','2016-04-02 12:22:12'),
(8,'Mejorar los tiempos de respuesta de parte de los grueros para con los accidentados en la vía, teniendo un tiempo promedio de respuesta y rescate de 20 - 30 minutos.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',4,'','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(9,'Mejorar notablemente el servicio de auxilio vial ofrecido por todas las compañías de seguros en Venezuela a sus clientes asegurados.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',5,'','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(10,'Colaborar con la creación de la red/comunidad de grueros más grande de Venezuela y América Latina, con la cual se realizarán constantemente convenciones donde se discutirán los problemas diarios de la profesión y sus posibles soluciones, donde se darán a conocer los últimos avances de la industria y se ajustará regularmente las tarifas de las carreras/remolques/auxilios de acuerdo a la situación económica-política y social de cada país donde nos encontremos operando.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',6,'','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(11,'Crear la fundación “Grueros de las Américas” donde constantemente se recaudarán fondos entre todos los pertenecientes a dicha red/comunidad, para así realizar obras benéficas en todos los países donde la empresa se encuentre presente.','objectives','objectives','page.php',1,'es',1,'OBJETIVOS',7,'','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(12,'<p class=\"text-justify\">Ofrecemos servicios de comunicación para el auxilio vial a través de nuestra aplicación móvil llamada TU/GRUERO®. La cual se puede conseguir y descargar gratuitamente en las tiendas de aplicación móvil más reconocidas a nivel mundial: Play Store y App Store.</p>\r\n<p class=\"text-justify\">Presentamos TU/GRUERO®, la primera aplicación móvil del mundo que ofrece el servicio de E-hailing (solicitud de servicios de transporte con teléfonos inteligentes) para grúas o remolcadoras de vehículos accidentados. TU/GRUERO® es pionera en el ámbito tecnológico para los servicios ofrecidos por las compañías de seguros ya que actualmente el 100% de estas ofrece el servicio de auxilio a través del tradicional Call Center de su operadora de asistencia en viajes, el cual resulta tedioso y poco eficiente debido a la triangulación existente entre: Accidentado - Operadora de asistencia en viaje - Gruero.</p>\r\n<p class=\"text-justify\">TU/GRUERO® garantiza por primera vez un servicio de auxilio vial de verdadera rapidez, seguridad y tranquilidad tanto para los accidentados como para los grueros gracias a su novedoso sistema de geolocalización, el cual permite ubicar a los grueros más cercanos (de manera directa y sin intermediarios) en el mapa y seguirlos en tiempo real vía GPS hasta que éste y el accidentado se encuentren en el sitio de la avería.</p>\r\n','work','work','page.php',1,'es',1,'QUE_HACEMOS',1,'¿Qué hacemos?','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(13,'<p class=\"text-justify\">Actualmente le ofrecemos nuestros servicios de comunicación para el auxilio vial a las compañías de seguros venezolanas suscritas a TU/GRUERO®, para que sus clientes asegurados puedan comunicarse directamente con los proveedores de grúas afiliados a nuestra plataforma cuando éstos (clientes asegurados) se encuentren en la necesidad de solicitar servicios de auxilio vial.</p>\r\n<p class=\"text-justify\">¡Comuníquese con su corredor de seguros para poder optar por la póliza de asistencia en viajes que incluya disfrutar de los servicios de TU/GRUERO®!</p>\r\n','portfolio','portfolio','page.php',1,'es',1,'COMO_FUNCIONAMOS',1,'¿Cómo funcionamos?','2016-04-02 12:22:12','2016-04-02 12:22:12'),
(14,'','','','',1,'es',0,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `phone_code` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries` */

/*Table structure for table `countries_states` */

DROP TABLE IF EXISTS `countries_states`;

CREATE TABLE `countries_states` (
  `id_countrie` int(11) NOT NULL,
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_countrie`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries_states` */

/*Table structure for table `countries_zones` */

DROP TABLE IF EXISTS `countries_zones`;

CREATE TABLE `countries_zones` (
  `id_zone` int(11) NOT NULL AUTO_INCREMENT,
  `id_countrie` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_zone`,`id_countrie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries_zones` */

/*Table structure for table `countries_zones_states` */

DROP TABLE IF EXISTS `countries_zones_states`;

CREATE TABLE `countries_zones_states` (
  `id_countrie` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_countrie`,`id_state`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries_zones_states` */

/*Table structure for table `inserts` */

DROP TABLE IF EXISTS `inserts`;

CREATE TABLE `inserts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `inserts` */

insert  into `inserts`(`id`,`descripcion`,`query`) values 
(1,'ECHEVERRIA','BEGIN;\r\nINSERT INTO `admin_tugruero`.`users` \r\n	(\r\n	`login`, \r\n	`password`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`, \r\n	`mail`, \r\n	`mail_alternative`\r\n	)\r\n	VALUES\r\n	(\r\n	\'CECHEVERRIA\', \r\n	\'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\', \r\n	\'1\', \r\n	NOW(), \r\n	NOW(), \r\n	\'cecheverria@tugruero.com\', \r\n	\'cecheverria@tugruero.com.ve\'\r\n	);\r\n\r\nSET @last_id_user= LAST_INSERT_ID();\r\n\r\nINSERT INTO `admin_tugruero`.`users_data` \r\n	( \r\n	`id_users`, \r\n	`first_name`, \r\n	`second_name`, \r\n	`first_last_name`, \r\n	`second_last_name`, \r\n	`nationality`, \r\n	`document`, \r\n	`birthdate`, \r\n	`gender`, \r\n	`phone`, \r\n	`phone1`, \r\n	`image`, \r\n	`certificado_file`, \r\n	`document_file`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(\r\n	@last_id_user, \r\n	\'CARLOS\', \r\n	\'\', \r\n	\'ECHEVERRIA\', \r\n	\'\', \r\n	\'V\', \r\n	\'20704089\', \r\n	\'\', \r\n	\'M\', \r\n	\'04148572157\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	NOW(),\r\n	NOW()\r\n	);\r\n	\r\n\r\n\r\nINSERT INTO `admin_tugruero`.`users_perms` \r\n	(`id_user`, \r\n	`id_perms`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(@last_id_user, \r\n	2, \r\n	1, \r\n	NOW(),\r\n	NOW()\r\n	);\r\nCOMMIT;\r\n\r\n	\r\n'),
(2,'AECHEVERRIA','BEGIN;\r\nINSERT INTO `admin_tugruero`.`users` \r\n	(\r\n	`login`, \r\n	`password`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`, \r\n	`mail`, \r\n	`mail_alternative`\r\n	)\r\n	VALUES\r\n	(\r\n	\'AECHEVERRIA\', \r\n	\'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\', \r\n	\'1\', \r\n	NOW(), \r\n	NOW(), \r\n	\'aecheverria@tugruero.com\', \r\n	\'aecheverria@tugruero.com.ve\'\r\n	);\r\n\r\nSET @last_id_user= LAST_INSERT_ID();\r\n\r\nINSERT INTO `admin_tugruero`.`users_data` \r\n	( \r\n	`id_users`, \r\n	`first_name`, \r\n	`second_name`, \r\n	`first_last_name`, \r\n	`second_last_name`, \r\n	`nationality`, \r\n	`document`, \r\n	`birthdate`, \r\n	`gender`, \r\n	`phone`, \r\n	`phone1`, \r\n	`image`, \r\n	`certificado_file`, \r\n	`document_file`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(\r\n	@last_id_user, \r\n	\'ALEJANDRO\', \r\n	\'\', \r\n	\'ECHEVERRIA\', \r\n	\'\', \r\n	\'V\', \r\n	\'20704089\', \r\n	\'\', \r\n	\'M\', \r\n	\'04148572157\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	NOW(),\r\n	NOW()\r\n	);\r\n	\r\n\r\n\r\nINSERT INTO `admin_tugruero`.`users_perms` \r\n	(`id_user`, \r\n	`id_perms`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(@last_id_user, \r\n	2, \r\n	1, \r\n	NOW(),\r\n	NOW()\r\n	);\r\nCOMMIT;\r\n\r\n	\r\n'),
(3,'MDEANDRADE','BEGIN;\r\nINSERT INTO `admin_tugruero`.`users` \r\n	(\r\n	`login`, \r\n	`password`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`, \r\n	`mail`, \r\n	`mail_alternative`\r\n	)\r\n	VALUES\r\n	(\r\n	\'MDEANDRADE\', \r\n	\'18bfddf1020067bbd33fad652bc8f1a59b2427ff8c7ebfd62bbfef6c2dddff49\', \r\n	\'1\', \r\n	NOW(), \r\n	NOW(), \r\n	\'deandrademarcos@gmail.com\', \r\n	\'deandrademarcos@hotmail.com\'\r\n	);\r\n\r\nSET @last_id_user= LAST_INSERT_ID();\r\n\r\nINSERT INTO `admin_tugruero`.`users_data` \r\n	( \r\n	`id_users`, \r\n	`first_name`, \r\n	`second_name`, \r\n	`first_last_name`, \r\n	`second_last_name`, \r\n	`nationality`, \r\n	`document`, \r\n	`birthdate`, \r\n	`gender`, \r\n	`phone`, \r\n	`phone1`, \r\n	`image`, \r\n	`certificado_file`, \r\n	`document_file`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(\r\n	@last_id_user, \r\n	\'MARCOS\', \r\n	\'\', \r\n	\'DE ANDRADE\', \r\n	\'\', \r\n	\'V\', \r\n	\'18020594\', \r\n	\'\', \r\n	\'M\', \r\n	\'04268141850\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	NOW(),\r\n	NOW()\r\n	);\r\n	\r\n\r\n\r\nINSERT INTO `admin_tugruero`.`users_perms` \r\n	(`id_user`, \r\n	`id_perms`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(@last_id_user, \r\n	2, \r\n	1, \r\n	NOW(),\r\n	NOW()\r\n	);\r\nCOMMIT;\r\n\r\n	\r\n'),
(4,'CHEINZE','BEGIN;\r\nINSERT INTO `admin_tugruero`.`users` \r\n	(\r\n	`login`, \r\n	`password`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`, \r\n	`mail`, \r\n	`mail_alternative`\r\n	)\r\n	VALUES\r\n	(\r\n	\'CHEINZE\', \r\n	\'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92\', \r\n	\'1\', \r\n	NOW(), \r\n	NOW(), \r\n	\'cheinze@tugruero.com\', \r\n	\'cheinze@tugruero.com.ve\'\r\n	);\r\n\r\nSET @last_id_user= LAST_INSERT_ID();\r\n\r\nINSERT INTO `admin_tugruero`.`users_data` \r\n	( \r\n	`id_users`, \r\n	`first_name`, \r\n	`second_name`, \r\n	`first_last_name`, \r\n	`second_last_name`, \r\n	`nationality`, \r\n	`document`, \r\n	`birthdate`, \r\n	`gender`, \r\n	`phone`, \r\n	`phone1`, \r\n	`image`, \r\n	`certificado_file`, \r\n	`document_file`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(\r\n	@last_id_user, \r\n	\'CARLOS\', \r\n	\'\', \r\n	\'HEINZE\', \r\n	\'\', \r\n	\'V\', \r\n	\'20704089\', \r\n	\'\', \r\n	\'M\', \r\n	\'04148572157\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	\'\', \r\n	NOW(),\r\n	NOW()\r\n	);\r\n	\r\n\r\n\r\nINSERT INTO `admin_tugruero`.`users_perms` \r\n	(`id_user`, \r\n	`id_perms`, \r\n	`status`, \r\n	`date_created`, \r\n	`date_updated`\r\n	)\r\n	VALUES\r\n	(@last_id_user, \r\n	2, \r\n	1, \r\n	NOW(),\r\n	NOW()\r\n	);\r\nCOMMIT;\r\n\r\n	\r\n'),
(5,'subida','UPDATE subida SET nombres = TRIM(nombres);\r\nUPDATE subida SET apellidos = TRIM(apellidos);\r\nUPDATE subida SET rif = TRIM(rif);\r\nUPDATE subida SET celular = TRIM(celular);\r\nUPDATE subida SET Estado = TRIM(Estado);\r\nUPDATE subida SET Ciudad = TRIM(Ciudad);\r\n### se debe limpiar la tabla subida y cargar los datos tal cual están\r\n\r\n##script1 --users\r\nINSERT INTO `admin_tugruero`.`users` \r\n(`login`, `password`, `status`, `date_created`, `date_updated`, `mail`, `mail_alternative`)\r\nSELECT rif, \'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4\',1, NOW(),NOW(),\'mail@mail.com\',\'mail@mail.com\' \r\nFROM subida s;\r\n\r\n##script2 - - users_data\r\nINSERT INTO `admin_tugruero`.`users_data` \r\n(`id_users`, `first_name`, `second_name`, `first_last_name`, `second_last_name`, `nationality`, `document`, `birthdate`, `gender`, `phone`, `phone1`, `image`, `certificado_file`, `document_file`,`date_created`, `date_updated`, `location`, `zone_work`\r\n)\r\n	\r\nSELECT u.id_user, nombres,NULL,apellidos, NULL, \'V\', rif, NULL,\'M\',celular,celular,NULL,NULL,NULL,NOW(),NOW(),NULL,NULL\r\nFROM subida s\r\nINNER JOIN users u ON u.login = s.rif;\r\n##script 3 -- company\r\nINSERT INTO `admin_tugruero`.`company` \r\n(`responsible_name`, `responsible_cedula`, `num_cuenta`, `rif`, `id_bank`, `razon_social`, `status`, `date_created`, `date_updated`, `company_name`, `tipo_cuenta`, `location`, `zone_work`,`club_gruas`, `num_socio`\r\n)\r\nSELECT CONCAT(nombres,\' \', apellidos ),rif,NULL,rif,1, CONCAT(nombres,\' \', apellidos ),1,NOW(),NOW(),CONCAT(nombres,\' \', apellidos ),1,NULL, NULL, NULL,NULL\r\nFROM subida s;\r\n\r\n##script 4 -- users_company\r\n\r\nINSERT INTO `admin_tugruero`.`users_company` \r\n(`id_user`,`id_company`,`status`,`date_created`,`date_updated`)\r\nSELECT u.id_user, c.id,1,NOW(),NOW()\r\nFROM subida s\r\nINNER JOIN company c ON c.rif = s.rif\r\nINNER JOIN users u ON u.login = c.rif;\r\n\r\n##script 5 -- users_perms\r\n\r\nINSERT INTO `admin_tugruero`.`users_perms` \r\n(`id_user`,`id_perms`,`status`,	`date_created`,	`date_updated`)\r\nSELECT u.id_user, 3,1,NOW(),NOW()\r\nFROM subida s\r\nINNER JOIN company c ON c.rif = s.rif\r\nINNER JOIN users u ON u.login = c.rif;\r\n\r\n## script 6 -- crear tabla para pase\r\n\r\nDROP TABLE pase;\r\nCREATE TABLE pase AS \r\nSELECT u.id_user, s.*\r\nFROM subida s\r\nINNER JOIN company c ON c.rif = s.rif\r\nINNER JOIN users u ON u.login = c.rif;\r\n\r\n## script 7 -- insertar en AWS Grueros, en base a la tabla pase\r\n\r\nINSERT INTO `TuGruero`.`Grueros` \r\n(`idGrua`, 	`Nombre`, 	`Apellido`, 	`Placa`, `Modelo`, `Color`, `Celular`, `Cedula`, `Clave`, `Condicion`, `NumServicios`, `TotalTrato`, `TotalPresencia`, `TotalVehiculo`, `Rating`, `location`,`zone_work`)\r\nSELECT id_user,nombres, apellidos, \'AAABBB\',\'Plataforma criolla\', \'BLANCO\', celular, rif, \'1234\', \'Activo\', 0,0,0,0,0,NULL, NULL FROM pase\r\n\r\n## script 8 -- insertar en AWS Gruas, en base a la tabla pase\r\n\r\n\r\nINSERT INTO `TuGruero`.`Gruas` \r\n(`idGrua`, `Disponible`, `Latitud`, `Longitud`, `LastUpdate`, `Token`, `DeviceID`)\r\nSELECT id_user, \'NO\',NULL,NULL,NULL,NULL,NULL FROM pase;'),
(6,'Limpiar solicitudes','DELETE FROM SolicitudAprobada;\r\nDELETE FROM SolicitudDocumentos;\r\nDELETE FROM SolicitudPagoDetalle;\r\nDELETE FROM SolicitudPlanSeleccion;\r\nDELETE FROM SolicitudPlan;\r\n\r\nUPDATE SolicitudCorrelativoProducto SET ValorCorrelativo = 1;');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menuref` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `url2` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `image` varchar(50) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `id_app` int(11) NOT NULL,
  `orders` int(11) DEFAULT NULL,
  `menu_image` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id_menu`,`id_menuref`,`name`,`name2`,`url`,`url2`,`status`,`image`,`date_added`,`date_updated`,`id_app`,`orders`,`menu_image`) values 
(1,0,'Inicio',NULL,'#header',NULL,0,NULL,'2016-03-21 22:30:22','2016-03-21 22:30:16',1,1,0),
(2,0,'Nuestro trabajo',NULL,'#work',NULL,0,NULL,'2016-03-21 22:32:20','2016-03-21 22:32:24',1,6,0),
(3,0,'¿Quiénes somos?',NULL,'#about',NULL,0,NULL,'2016-03-21 22:33:00','2016-03-21 22:33:03',1,5,0),
(4,0,'Video',NULL,'#video',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:40',1,4,0),
(5,0,'Soporte técnico',NULL,'#prueba',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,4,0),
(6,5,'Contenido de secciones',NULL,'/adm/about/index.php',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,1,0),
(7,5,'Nuestros Objetivos',NULL,'#Menu',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,2,0),
(8,0,'Manejo de usuarios',NULL,'#prueba',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,2,0),
(9,8,'Operadores',NULL,'/adm/users/index.php',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,2,0),
(10,0,'Testimonios',NULL,'#testimonials',NULL,0,NULL,'2016-03-28 21:50:42','2016-03-28 21:50:44',1,7,0),
(11,0,'Contáctanos',NULL,'#contact',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:40',1,9,0),
(12,5,'Contáctenos',NULL,'/adm/messages/index.php',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,3,0),
(13,5,'¿Como funcionamos?',NULL,'#menu',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,4,0),
(14,16,'Grúas','Agregar','/ap/hoist/index.php','/ap/hoist/index.php?action=new',0,'gruas.png','0000-00-00 00:00:00','0000-00-00 00:00:00',4,1,1),
(15,8,'Masters',NULL,'/adm/company/index.php',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,1,0),
(16,0,'Admin. Grúas',NULL,'#menu',NULL,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',4,1,0),
(17,0,'Admin. Operador',NULL,'#menu',NULL,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',4,2,0),
(18,17,'Operadores','Agregar','/ap/users/index.php','/ap/users/index.php?action=new',0,'cardriver.png','0000-00-00 00:00:00','0000-00-00 00:00:00',4,2,1),
(19,0,'Usa TU/GRUERO®',NULL,'#use',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:40',1,8,0),
(20,0,'Servicios',NULL,'/ap/services_operator/index.php','',0,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',2,1,0),
(21,20,'Servicios','Consultar','/ap/services_operator/index.php','/ap/services_operator/index.php',0,'servicios.png','2016-05-03 21:57:41','2016-05-03 21:57:43',2,1,1),
(22,17,'Servicios','Consultar','/ap/services_masters/index.php','/ap/services_masters/index.php',0,'servicios.png','0000-00-00 00:00:00','0000-00-00 00:00:00',4,3,1),
(23,8,'Servicios','Consultar','/adm/services_administrators/index.php','/adm/services_administrators/index.php',0,'ic11.png','0000-00-00 00:00:00','0000-00-00 00:00:00',3,3,1),
(24,0,'Perfil de usuario',NULL,'','',0,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',2,4,0),
(25,24,'Modificación de clave','','/ap/account/index.php?action=change_pass_view','/ap/account/index.php?action=change_pass_view',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',2,2,0),
(26,0,'Perfil de usuario',NULL,'','',1,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',4,4,0),
(27,26,'Modificación de clave','','/ap/account/index.php?action=change_pass_view','/ap/account/index.php?action=change_pass_view',1,'','2016-05-03 21:57:41','2016-05-03 21:57:43',4,2,0),
(28,26,'Datos personales','','/ap/users_data/index.php?action=edit','/ap/users_data/index.php?action=edit',1,'','2016-05-03 21:57:41','2016-05-03 21:57:43',4,1,0),
(29,24,'Datos personales','','/ap/users_data/index.php?action=edit','/ap/users_data/index.php?action=edit',1,'','2016-05-03 21:57:41','2016-05-03 21:57:43',2,1,0),
(30,0,'Perfil de usuario',NULL,'','',1,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',3,3,0),
(31,30,'Modificación de clave','','/adm/account/index.php?action=change_pass_view','/adm/account/index.php?action=change_pass_view',1,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,2,0),
(32,30,'Datos personales','','/adm/users_data/index.php?action=edit','/adm/users_data/index.php?action=edit',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,1,0),
(33,0,'Solicitudes/Servicios',NULL,'','',0,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',3,1,0),
(34,33,'Solicitudes/Servicios activos','','/adm/solicitud/index.php','',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,1,0),
(35,0,'Pólizas',NULL,'','',0,NULL,'2016-05-03 21:57:41','2016-05-03 21:57:43',3,5,0),
(36,35,'Lista de Pólizas ','','/adm/Polizas/index.php','',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,1,0),
(37,35,'Carga masiva de Pólizas ','','/adm/Polizas/index.php?action=poliza_masiva','',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,1,0),
(38,8,'Administradores/Operadores',NULL,'/adm/UsuariosInternos/index.php',NULL,1,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,4,0),
(39,33,'Servicios clientes','','/adm/ServiciosClientes/index.php?action=individual','',0,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,2,0),
(40,0,'Aplicación TU/GRUERO®',NULL,'#header2',NULL,0,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:40',1,3,0),
(41,0,'Beneficios',NULL,'#beneficios',NULL,0,NULL,'2016-03-21 22:30:22','2016-03-21 22:30:16',1,2,0),
(42,35,'Seguros',NULL,'/adm/seguros/index.php',NULL,0,NULL,'2016-10-25 21:44:45','2016-10-25 21:44:47',3,3,0),
(43,8,'Sesiones',NULL,'/adm/grueros_aws/index.php',NULL,0,NULL,'2016-10-25 23:38:01','2016-10-25 23:38:03',3,5,0),
(44,33,'Reporte servicios','','/adm/reporte_solicitudes/index.php','',1,'','2016-05-03 21:57:41','2016-05-03 21:57:43',3,3,0),
(45,0,'Planes',NULL,'#prueba',NULL,1,NULL,'2016-03-21 22:33:38','2016-03-21 22:33:38',3,6,0),
(46,45,'Solicitudes',NULL,'/adm/solicitud_plan/index.php',NULL,1,NULL,'2016-10-25 23:38:01','2016-10-25 23:38:03',3,5,0),
(47,0,'Respaldo',NULL,'',NULL,1,NULL,'2017-08-19 16:13:05','2017-08-19 16:13:07',3,7,0),
(48,47,'Generar/Descargar respaldo',NULL,'/adm/Respaldo/index.php',NULL,1,NULL,'2017-08-19 16:14:30','2017-08-19 16:14:32',3,1,0);

/*Table structure for table `menu_page` */

DROP TABLE IF EXISTS `menu_page`;

CREATE TABLE `menu_page` (
  `id_menu` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `id_app` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_menu`,`id_page`,`id_app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu_page` */

insert  into `menu_page`(`id_menu`,`id_page`,`id_app`,`status`,`date_added`,`date_updated`) values 
(1,1,1,1,'2016-03-21 22:35:25','2016-03-21 22:35:27'),
(2,1,1,1,'2016-03-21 22:35:36','0000-00-00 00:00:00'),
(3,1,1,1,'2016-03-21 22:35:45','2016-03-21 22:35:48'),
(4,1,1,1,'2016-03-21 22:35:56','2016-03-21 22:35:58');

/*Table structure for table `menu_page_perms` */

DROP TABLE IF EXISTS `menu_page_perms`;

CREATE TABLE `menu_page_perms` (
  `id_menu` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `id_perm` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_menu`,`id_page`,`id_perm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu_page_perms` */

/*Table structure for table `menu_perms` */

DROP TABLE IF EXISTS `menu_perms`;

CREATE TABLE `menu_perms` (
  `id_menu` int(11) NOT NULL,
  `id_perms` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_menu`,`id_perms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu_perms` */

/*Table structure for table `modals` */

DROP TABLE IF EXISTS `modals`;

CREATE TABLE `modals` (
  `id_modal` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'image1.jpg',
  `status` int(1) NOT NULL,
  `created_at` date NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT 'De Interés',
  PRIMARY KEY (`id_modal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `modals` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id_new` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT 'Título',
  PRIMARY KEY (`id_new`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `id_app` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `pages` */

insert  into `pages`(`id_page`,`id_app`,`name`,`status`,`date_added`,`date_updated`) values 
(1,1,'index.php',1,'2016-03-21 22:35:08','2016-03-21 22:35:11');

/*Table structure for table `panels` */

DROP TABLE IF EXISTS `panels`;

CREATE TABLE `panels` (
  `id_panel` int(11) NOT NULL AUTO_INCREMENT,
  `name_panel` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `title_panel` varchar(100) CHARACTER SET latin1 NOT NULL,
  `read_more` int(1) NOT NULL,
  `link_read_more` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `class` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `icon_title` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `panel_head_class` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `panel_body_class` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `panel_foot_class` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `read_more_button_class` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `read_more_text` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `language` varchar(5) NOT NULL DEFAULT 'es',
  PRIMARY KEY (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `panels` */

/*Table structure for table `perms` */

DROP TABLE IF EXISTS `perms`;

CREATE TABLE `perms` (
  `id_perm` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_perm`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `perms` */

insert  into `perms`(`id_perm`,`name`,`status`) values 
(2,'ADMINISTRADOR',1),
(3,'GRUERO_MASTER',1),
(4,'GRUERO_OPERADOR',1),
(5,'ADMINISTRADOR_OPERADOR',1);

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `status` */

insert  into `status`(`id_status`,`name`,`date_created`,`date_updated`) values 
(0,'Desactivado','2016-04-03 15:00:02','2016-04-03 15:00:04'),
(1,'Activo','2016-04-03 15:00:02','2016-04-03 15:00:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mail_alternative` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=1194 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id_user`,`login`,`password`,`status`,`date_created`,`date_updated`,`mail`,`mail_alternative`) values 
(1,'V-16532308','84ac7dcb5a532e80b4d309e95cb711114042fd5624aba60be1e747004c9e1351',1,'2016-06-01 09:16:44','2016-11-24 19:49:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(2,'V-171199170','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(3,'V-10694705','fabb1633d1e9ef2b39b8b85e70e0e64e2fcd0ed6ca207389109c226aa111bf20',1,'2016-06-01 09:16:44','2016-09-15 08:15:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(4,'V-122431050','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(5,'V-16690754','17f3efbd2f80f1773257221c93e03ade9582d2bc4fbef904e8e2aafb77dbe3f9',1,'2016-06-01 09:16:44','2016-09-23 13:11:14','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(6,'V-168060668','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(7,'V-10695288','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-09-28 17:48:27','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(8,'V-14202215','e12f0205797766dcbd862d1c0bdc8a6a497ee7bfee39a48ae75917d1cf06b814',1,'2016-06-01 09:16:44','2016-10-04 10:12:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(9,'E-81105110','7220b6c7ef9f3df8fb8abb1da1bb43f16948079fdd58f2d88cc7c47a2852b9b8',1,'2016-06-01 09:16:44','2016-08-19 00:49:37','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(10,'V-119480120','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(11,'V-6934184','0e56dfab8911cbeffb6782a9265b06ca6f3ede61bb5ca103743a9e3c9c755df6',1,'2016-06-01 09:16:44','2016-09-28 21:54:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(12,'V-18109503','283fb243c9b850e793642fabf71dc861907f87eaf0033267fe3fee0beb04cc76',1,'2016-06-01 09:16:44','2016-09-28 17:59:43','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(13,'V-10710757','51eeed7251f3f56288ee554afaa1028b7fbc3daacc4a952be4ae8d18ddaf3320',1,'2016-06-01 09:16:44','2016-07-26 08:05:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(14,'V-4675267','284b7e6d788f363f910f7beb1910473e23ce9d6c871f1ce0f31f22a982d48ad4',1,'2016-06-01 09:16:44','2016-10-07 11:01:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(15,'V-18738392','c10b2e73ac5b24529f5ea8a5818006900bee709dda86684ca230f2d51f1b488b',1,'2016-06-01 09:16:44','2016-10-24 09:44:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(16,'V-20238088','8a53e6c215d3a9ea9786e295a618c032e68495f475c80530a0d9341e8b98d040',1,'2016-06-01 09:16:44','2016-08-27 04:11:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(17,'V-146005949','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-08-27 04:34:17','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(18,'V-17309984','4110b58435fb959fb37bd7c96f03adcc8d4e6acd7c74214a0b6fa3e544d766fb',1,'2016-06-01 09:16:44','2016-08-24 16:33:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(19,'V-17987600','4ddd91e85533002dae3ba0e863b1f24680771fbd6179987c8ed5fa88f236e506',1,'2016-06-01 09:16:44','2016-07-26 04:29:43','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(20,'V-18785546','0f52433157d1ad80b0d9f0bdd59c344566241214e73afec2b0c80c28db882676',1,'2016-06-01 09:16:44','2016-09-28 09:09:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(21,'V-152714684','ba574f7da9264466a318b991d5deb631b564947e4ca4ddb32a2e0e85049c37b3',1,'2016-06-01 09:16:44','2016-07-11 16:46:34','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(22,'V-92340119','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(23,'V-12684465','10d14cd69526d7715328526425d687c7d1f0b8516e37a89582b7e996641f7346',1,'2016-06-01 09:16:44','2016-09-11 15:01:14','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(24,'J-403799652','f96dd53f2dbba4672ee95af6caf23b32c6ba16cb8709878a28b665df6fbf5283',1,'2016-06-01 09:16:44','2016-09-15 08:07:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(25,'J-311767576','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(26,'V-10703645','529af1eb241fb1706d343d886d38eb7ab1375ddfb922977c6f95b54182bbd10a',1,'2016-06-01 09:16:44','2016-07-12 07:19:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(27,'V-19825630','e77ed4eb73d379d019b464b35a1059185cb2b1a9b1fa44dd527dc3b013df45fe',1,'2016-06-01 09:16:44','2016-08-26 13:45:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(28,'V-14606805','ce09bc095b7061baf8ed03afbcade41f3c8cfacabf7054eb7f702f7cd2d615cf',1,'2016-06-01 09:16:44','2016-10-04 10:17:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(29,'V-18393583','ecdea18326764a148cc6eade4ebdc0446cc30d0819c5b7f9ec8c5c2727acffa3',1,'2016-06-01 09:16:44','2016-08-02 01:23:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(30,'V-12749447','39d5ce6249548c318a5f0b6bf0a3e2f234750a9741b6ce2f9eff8670bc7cd7af',1,'2016-06-01 09:16:44','2016-09-14 15:40:32','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(31,'V-13308578','b897a8bbb916bf3a70d0a58870d308dc5c96f1c8ade961f3c3a3d3583c60fe92',1,'2016-06-01 09:16:44','2016-10-17 19:06:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(32,'V-61184062','49faaade493be8b6b6164ee67f7e4d101812a5dda970d6ca693dda8b8cf82e4b',1,'2016-06-01 09:16:44','2016-09-15 03:10:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(33,'V-16245454','13f8761a1f5153a7b7c101ea534c7e498897419d86127652f2c2d7156579d228',1,'2016-06-01 09:16:44','2016-08-17 19:02:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(34,'V-14749252','d5d06ce485315613456409a2959d4c38a8be08e95967c2e55b2318f0959da3e7',1,'2016-06-01 09:16:44','2016-07-20 07:06:38','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(35,'J-311815368','9b443cb971e285b7ab1177ba27366306c9681d4e8d95f5e2c8a0f4bda23094e2',1,'2016-06-01 09:16:44','2016-08-09 22:10:58','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(36,'V-18104490','1809e3b521e68d5a2691f1f2eeec3e7b7dcf1bacfcc3833b8e2ce02ed0a24fe9',1,'2016-06-01 09:16:44','2016-08-09 22:28:25','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(37,'V-10902623','a4674f353d4235537f7b68efbb7be10aa2b111ca2631c4869ccbf08955e26382',1,'2016-06-01 09:16:44','2016-07-26 05:36:25','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(38,'V-205393125','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(39,'V-13848034','e24954899f5667e84895d9f81205794fb011bcac0e7ca586f1b3f26e3241135a',1,'2016-06-01 09:16:44','2016-09-12 02:54:32','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(40,'V-19508618','4e9bd3baabf5381388a6edea56af5d6d69d2a4efc955494a5bdf92c13e8194ac',1,'2016-06-01 09:16:44','2016-09-15 07:09:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(41,'V-15756766','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(42,'V-20670473','f08ffbe83800e3e8f98421688987819c09708ba56cf42e6555b44aaade59b2d1',1,'2016-06-01 09:16:44','2016-08-27 02:00:54','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(43,'V-8588724','8b4502d82b9c90a86e45cc394c25f96b74e72a92a54c53c08dd45f7d81dd4584',1,'2016-06-01 09:16:44','2016-09-02 00:32:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(44,'V-14407739','6cc1da1a675e214a1fcc1956c36b505e6528f60e0b38f0e7622a519f64849567',1,'2016-06-01 09:16:44','2016-09-28 18:17:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(45,'V-12054544','f0666ef53c0b251585a247713186c9c60e13d0603a183c6e58939fa3e141605a',1,'2016-06-01 09:16:44','2016-09-29 10:10:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(46,'V-6965718','e340c988d13765ea64ec51c556369d07f50d9447c2ecc0161ddbac53ff2b1e8b',1,'2016-06-01 09:16:44','2016-10-05 12:04:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(47,'V-820551608','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(48,'V-23897335','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(49,'V-221081303','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(50,'V-19410398','56639c3cd96b35a9454a23c2ce8b10a6502c234322302737ca4b2af13755ad35',1,'2016-06-01 09:16:44','2016-07-12 07:17:31','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(51,'J-316803457','0700dd96411d80338fe7f2860582b1464efa87a5b94b8b7f178259d66722df98',1,'2016-06-01 09:16:44','2016-06-26 02:00:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(52,'V-7955512','1e087afa72cf5a7c92f7c14e7192cae482316e379a55e87c65fc946fbc764ff5',1,'2016-06-01 09:16:44','2016-10-05 12:10:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(53,'V-251207255','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(54,'J-404769420','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(55,'V-13790051','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(56,'V-15373239','96d83a2ef9db9225b387e8c2261c96edb7c079183b7f4990486f5818cbd180a6',1,'2016-06-01 09:16:44','2016-09-29 18:36:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(57,'V-14444527','0ecccc89d8559278e3b6de2db5676fe9854c82166c471b40359d49626c670201',1,'2016-06-01 09:16:44','2016-10-05 12:15:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(58,'V-19684236','49faaade493be8b6b6164ee67f7e4d101812a5dda970d6ca693dda8b8cf82e4b',1,'2016-06-01 09:16:44','2016-10-03 14:47:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(59,'V-115264547','ea6663cbf7ef1771b0da4cef331ec8d13b79e09233b66d6482b1d4cd7db81940',1,'2016-06-01 09:16:44','2016-08-16 12:00:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(60,'V-18003346','c0746a5599dd5b8b5643f95f8a4f457c9e21dbe625a081106d35504f37664f5f',1,'2016-06-01 09:16:44','2016-07-12 07:14:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(61,'V-13663979','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(62,'V-15435319','a2c911ad7200952f6294aa7bca7bc534e4151bc5bf37a9618a9740f4906be3bf',1,'2016-06-01 09:16:44','2016-09-05 21:15:39','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(63,'V-11292369','14834fbdde8aafeb29113377113285acb5d5157f81dfd54dc873d289ad717324',1,'2016-06-01 09:16:44','2016-08-30 14:32:03','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(64,'V-10155966','de5f43d2bb9731b19f1c9608c2d93a7aa0c62dbf43bbe6becf01c8ea607848ce',1,'2016-06-01 09:16:44','2016-08-02 04:44:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(65,'V-14510667','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(66,'V-162661708','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(67,'V-11477795','8414d417e73544b14ac0aacb26910d6d6c57ed3753ece001d6048110f3deb23c',1,'2016-06-01 09:16:44','2016-08-24 03:15:19','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(68,'J-298854146','dae89e11241685c65efa5f0ae0828574ab3a20de919325fbf83f9f2ff929dded',1,'2016-06-01 09:16:44','2016-09-29 08:13:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(69,'V-136234532','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(70,'J-314978845','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(71,'J-407186272','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(72,'V-9737729','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-09-12 01:50:20','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(73,'V-12708635','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(74,'V-13228532','d50d8ea32d67d5120a3ac346c952311f36c8375979ba7ac7a2c6fd0ca7388357',1,'2016-06-01 09:16:44','2016-09-09 13:55:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(75,'V-14498810','3b1edb1df2633f398fb2a0e822ac8f2d1a8cbd15674fa4d3b8b3b325dc170143',1,'2016-06-01 09:16:44','2016-08-25 23:59:20','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(76,'V-17466172','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(77,'V-108155783','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(78,'V-24882320','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(79,'V-136018252','2a5be6e943c855c5ac58f187fe40f114766dcf72d1e9ec716a765d207585facf',1,'2016-06-01 09:16:44','2016-07-11 16:18:48','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(81,'J-405865202','f894a71146c937d67698bebff27e4047e9555d9b1a70b6811229bd179f170d15',1,'2016-06-01 09:16:44','2016-06-13 16:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(82,'J-403136203','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(83,'J-404329455','b0404e51538ef9ca0bce012fad27a63d18d84eae174b4640a588ecf1c7041342',1,'2016-06-01 09:16:44','2016-08-30 14:51:33','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(84,'V-104470781','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-26 13:50:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(85,'V-16493671','cca457407f24b80c72d89dd061837112cb99a0aa050c155514b320b7aaffe95c',1,'2016-06-01 09:16:44','2016-08-26 14:13:58','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(86,'V-20075521','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(87,'V-14468514','a9ccc8679ab2bef9f514ce001ef203b353a560d7bdcbcc1184f69ec417076b14',1,'2016-06-01 09:16:44','2016-09-11 13:42:05','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(88,'V-14644466','3d92b65b9faae4e567347a4d37629829248dcc4ce2e3368d28460698e733c984',1,'2016-06-01 09:16:44','2016-09-24 14:36:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(89,'V-137274872','7275367cab23889759c61293699e8fcf66e82b0047c400e27550f0b38808f29c',1,'2016-06-01 09:16:44','2017-02-03 16:50:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(90,'V-5489197','ad16bbee77a6607ce894e0e356757fe580edfc18381a400bd99ce03c491e33b8',1,'2016-06-01 09:16:44','2016-09-07 03:13:43','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(91,'V-25773083','7e4ff98f91de8ee393e5ec73784901ec2c1de29fb1d9f0cd26b52bf5567f4e8f',1,'2016-06-01 09:16:44','2016-09-17 14:16:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(92,'V-17590127','bd4fbf6bb6307e75d89290ef89ad2db44af0083509b076163ea1dcb016f65655',1,'2016-06-01 09:16:44','2016-09-23 14:39:37','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(93,'V-5529192','9e337f285d52d6145ee7ed9f2fea1eddd59e07309b598f06a864785265b40186',1,'2016-06-01 09:16:44','2016-10-05 12:19:22','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(94,'J-404469621','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(95,'V-17799215','eb27e98a2bfa7c6154c1559400e0ff7a032192947cfdf0f2533b255a6e70bf71',1,'2016-06-01 09:16:44','2016-09-23 14:24:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(96,'V-6486776','4b5a262ea103c6f2ae8f20ca33a2c02c4de87b11ee8457984e79774323c9fbd9',1,'2016-06-01 09:16:44','2016-09-22 02:37:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(97,'J-405314354','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(98,'J-293809185','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(99,'V-9411604','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-12-09 12:07:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(100,'V-16692533','f7826ab4ca5b2f8aa38bcd76908d04511fc6f44d71111816381538a2b7125ff8',1,'2016-06-01 09:16:44','2016-09-22 04:07:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(101,'V-13201864','7c09946dc0d149b7b56cf78d589da10570416870704df126d9c25fbb36feaf68',1,'2016-06-01 09:16:44','2016-09-23 14:04:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(102,'V-10279450','9af15b336e6a9619928537df30b2e6a2376569fcf9d7e773eccede65606529a0',1,'2016-06-01 09:16:44','2016-09-23 13:54:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(103,'V-16345720','3cf21cd8049be45d4281cce9f03f7f293d17fa8d97c93fff559da2b2a3fa3188',1,'2016-06-01 09:16:44','2016-09-17 22:26:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(104,'V-86895796','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(105,'V-11495242','46f2b159f4f0b6d55dbde4a9c5f19c9bf149a275cbce2a52c73e95dabe76dcc3',1,'2016-06-01 09:16:44','2016-09-22 04:09:51','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(106,'V-14341901','17796608021c4fcf58172cb753ce2ee77e0a29c1a19b7b02f7636ac108fae946',1,'2016-06-01 09:16:44','2016-08-25 17:39:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(107,'V-167915333','8734faac10a4b0293ba965be6ce09fa58d9950f8d3887c1c612b6d7eaee826e2',1,'2016-06-01 09:16:44','2016-08-27 04:56:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(108,'V-144346978','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-08-27 04:47:58','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(109,'V-15121831','debb7fa2a856c8ba8750b4856f1add47cd36c861c232d791677753985db09226',1,'2016-06-01 09:16:44','2016-08-26 14:08:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(110,'V-16126942','c8e1cd9fbdd6d2fc9a61e9af9457fcfcf80d908de63d63cc97ecb5a81652412b',1,'2016-06-01 09:16:44','2016-08-25 21:47:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(111,'V-177258683','66239568a2ee4ad1375eccd31df1b6329c6de0c810eb9df550e268f5f952f0f0',1,'2016-06-01 09:16:44','2016-06-13 03:08:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(112,'V-111862865','1821d215f845406ce94e8940eed193fd95b8c8e3f2df3fdbdecfcf4e75cbfcd0',1,'2016-06-01 09:16:44','2016-06-03 00:24:04','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(113,'V-151217229','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(114,'V-17767229','cca457407f24b80c72d89dd061837112cb99a0aa050c155514b320b7aaffe95c',1,'2016-06-01 09:16:44','2016-08-25 18:41:53','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(115,'V-14171707','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-11 12:36:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(116,'V-12644476','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(117,'V-152777457','c7f4f146491d27eed1cd4d422c9b3fec37006c606b17dabbfebef85845f3cbc1',1,'2016-06-01 09:16:44','2016-10-11 09:34:37','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(118,'V-8892505','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(119,'V-115198714','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(121,'V-12474976','48c1adbef11c4941b7e3b3cee2ed24064dcf18364cd10045b3384f968d2bda3f',1,'2016-06-01 09:16:44','2016-07-11 17:38:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(122,'V-9444935','dc28fd72d6600184c4219fd8afb43d174dd245e9e1f295c2bb00dc87a82d50b4',1,'2016-06-01 09:16:44','2016-07-11 16:37:41','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(123,'V-21455994','6efb35838cb35a06e051ca00dd6d47b9a071161da6079ddf7f21065d8d0052ed',1,'2016-06-01 09:16:44','2016-08-16 12:06:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(124,'V-13116158','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(125,'V-13548606','179f5a4e6fce7fc4c7f17df03f026f95fd3cd7b7cc03f68117b85ddd84aca89a',1,'2016-06-01 09:16:44','2016-07-12 07:19:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(126,'V-8841133','f5660d3fad8710b5b3dd5c9873b9818aa5c67d5298a3d8938745670f76ff5d9a',1,'2016-06-01 09:16:44','2016-07-12 07:18:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(127,'V-5384538','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(128,'V-14583310','94f8b116c3e34c19981892ddac5fbed887b549426ef39663270ac5b3a9d37a79',1,'2016-06-01 09:16:44','2016-10-01 14:28:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(129,'V-18130314','1274fae36c799b1140825538115a2da9cd8cf816a3983316799cdc396707cf0c',1,'2016-06-01 09:16:44','2016-07-11 18:33:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(130,'V-7102444','f45259426e78ba2647a0e9cd935a0f3db86e43fb3497f7a10dcc403b45926edf',1,'2016-06-01 09:16:44','2016-07-11 19:55:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(132,'V-14464056','53cdc68cba0e2bb6e71f5d11bb0456d2f0b3653e6aa6e3313644bcd5ed376321',1,'2016-06-01 09:16:44','2016-08-19 00:57:13','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(134,'V-107978387','bb3d5da4d1f0dbb67b31fe0e0392dbb8bf97871e62addbf9d91010f457acce7a',1,'2016-06-01 09:16:44','2016-08-16 12:36:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(135,'V-71141965','e48c090834b9080ebca5da681132a42e77dfaf35816565614635b36853ef0d9c',1,'2016-06-01 09:16:44','2016-08-16 13:13:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(136,'J-297772952','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(137,'V-71378051','4b238ad545eda22dbbe98072c2b577d927fc519a2669220cbbf264e30edfb7f4',1,'2016-06-01 09:16:44','2016-08-16 13:17:14','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(138,'V-10076580','f319a2b728c9a20b35885953f1573bb72436aa7558dae2f0a69d7fe384a7a939',1,'2016-06-01 09:16:44','2016-07-12 05:24:41','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(139,'V-16243064','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-07-11 08:14:05','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(140,'V-12393706','258a5641398f450e4ba6e1f90cbd08b6230bd87267e207292954fce0a724c569',1,'2016-06-01 09:16:44','2016-07-22 03:36:18','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(141,'V-11489372','2f5bbecf7ebc1d87e9b1b172ca61609a6f9f3ceeba5253aa22790f56646edbcf',1,'2016-06-01 09:16:44','2016-07-12 07:12:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(142,'V-16447058','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-11 12:17:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(143,'V-15596375','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(144,'V-71291916','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-16 14:04:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(145,'V-139621898','1d92d3c027dba204af27d04b76f8a1a93a54dcc10181858cfda5961326cb72c7',1,'2016-06-01 09:16:44','2016-10-11 12:18:16','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(146,'V-14869764','26f54be8f30a8480062d156daf2678c1150508fb808a881bc6f70a264f83e082',1,'2016-06-01 09:16:44','2016-08-24 16:03:48','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(147,'V-12108712','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-09-21 22:58:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(148,'V-12031877','411c517a9111520055496e4181d7e86b8cb4fe68a69e28b581242c49bcd808bc',1,'2016-06-01 09:16:44','2016-07-12 07:22:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(149,'V-18660260','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(151,'V-18686124','3751e18f792336d6193c18b87900ba2caec8c11983b754d1a7d43a9849266d4e',1,'2016-06-01 09:16:44','2016-08-18 18:04:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(153,'V-7144984','26a4fbcac18d6215f6ae7b911a207993127c4fe06a7dbae3b035389497966fc7',1,'2016-06-01 09:16:44','2016-08-16 14:15:54','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(154,'V-15915267','0038e731dbc913464c9df9611d6765b3037be02118f6e79ee4585574c321f163',1,'2016-06-01 09:16:44','2016-07-11 13:53:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(155,'V-195247338','2a9c3c838a134b765ebdf70fddd4065ad268c676c27afee61115416a598977dd',1,'2016-06-01 09:16:44','2016-07-11 15:44:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(156,'V-27630840','61d6a93a16b97f981b9a26361841c5a1fd8b3b08932bef0576e6f4e5bdf58aac',1,'2016-06-01 09:16:44','2016-09-15 12:40:17','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(157,'V-144178897','bcbd77b0d94304c6f2178c2735ab50eba6574d8997ff060ee89e5fb5bdc2c508',1,'2016-06-01 09:16:44','2016-08-18 18:19:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(158,'V-24571404','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-17 19:11:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(159,'V-23064907','b49fe996947e68b4fcffcb108b1972c6671861de0774ce97a3cb4b42e9e8ec93',1,'2016-06-01 09:16:44','2016-08-18 17:58:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(160,'V-11347344','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(161,'V-12318253','750e6133cc9442bde92d9cfc56fb83c1a52a833f62c9e0f1ad54cef5ed5f2997',1,'2016-06-01 09:16:44','2016-07-11 13:49:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(162,'V-17903674','2f2e737d19a14b0b2e32095dec9999ed3dce7500d4b2e287f297acb16eef8f8e',1,'2016-06-01 09:16:44','2016-07-11 15:19:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(163,'V-205130888','5dc7d272b5532d4f585b71eed99816eb0864109b242aefc44c0e6b3169a77c46',1,'2016-06-01 09:16:44','2016-07-12 07:15:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(164,'V-7435782','aff476c6b838ab12e0ba6fb04cac615c53f074c303a15b956eda67553357548c',1,'2016-06-01 09:16:44','2016-08-18 21:43:16','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(165,'V-22003441','731f5157caa121458303631f18056b15cbea6fe8ac113ece9646a6c406eaa46e',1,'2016-06-01 09:16:44','2016-08-18 17:39:49','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(166,'V-18627399','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(167,'J-296883890','7b3b4d8a9f9f063ae6ae33e451ee944d961a70298f3860cb8fc212ab0b7405a1',1,'2016-06-01 09:16:44','2016-09-27 16:00:54','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(169,'V-7111458','2b0028d1768ee1bc13ee92c7987dc5bc15097f299fb4087bc9b542ff9f22567c',1,'2016-06-01 09:16:44','2016-08-17 19:13:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(170,'V-12382615','c7963a289cad6ea3262bfc452393c675ae6b332cbc99406c0239e6ea7df9453c',1,'2016-06-01 09:16:44','2016-08-18 15:54:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(171,'V-16154638','f5660d3fad8710b5b3dd5c9873b9818aa5c67d5298a3d8938745670f76ff5d9a',1,'2016-06-01 09:16:44','2016-07-12 07:18:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(172,'V-18746726','4d14a790f46e55beb571228d3b4d5ea05f7987a16123fdcfe6a015b9867bb55e',1,'2016-06-01 09:16:44','2016-08-17 19:15:39','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(173,'V-18347244','227ce45370afff8d9953580df6bc7e04f73398526617e387bfb86efe0d7cfa39',1,'2016-06-01 09:16:44','2016-07-11 16:56:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(174,'J-297189866','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-08-16 14:33:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(175,'V-19502540','b602b9cf13f98b01abb382a8aea392e0c23a58cf6db3de435fce6aa2d02a0c8f',1,'2016-06-01 09:16:44','2016-10-19 09:32:27','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(176,'V-15108601','4d7040ce5eac93ed55ee0cb69d87544de554bba5861f36e427745fb316040cfc',1,'2016-06-01 09:16:44','2016-08-17 15:22:10','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(177,'V-141122785','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(178,'V-9413227','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(179,'V-16423934','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(180,'V-13441715','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-11-01 17:37:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(181,'V-157902292','c26430b473c3607e6c4b3bada365a5079932ecd00edb30f4e21feb5ebd12ca98',1,'2016-06-01 09:16:44','2016-08-14 01:03:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(182,'V-10819537','7a89b354e05d0c0ca8b3d95255a8c405f5a4423ad07cd750e02f0154b7aa46e4',1,'2016-06-01 09:16:44','2016-10-04 08:14:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(183,'V-16681693','1020e0f51c59096b6195d230c511ad2f2bdf8925f7119bdb5f4384bf32b2f5d9',1,'2016-06-01 09:16:44','2016-10-11 09:38:38','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(184,'V-12783981','8f03587c046a1bac821276b1a23d42f2a56be3681a033cef939d317054549b70',1,'2016-06-01 09:16:44','2016-10-04 08:21:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(185,'V-14166427','5eda3fad1901aaa5bbce34b4f0a40792517d042524e6c609a777f15c80f745e9',1,'2016-06-01 09:16:44','2016-10-07 11:06:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(186,'V-17588689','2c52330077a08ea7f0795ff8786dc5c50f160359cbb1c0fe6708ea026cfd34e3',1,'2016-06-01 09:16:44','2016-10-04 08:35:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(187,'V-6930123','7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f',1,'2016-06-01 09:16:44','2016-10-04 08:51:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(188,'V-17974685','c2822bfe55c1d3eeffcc8962f66be489d85c26e6d41102aec6b3ec3274ed1f2c',1,'2016-06-01 09:16:44','2016-10-07 11:12:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(189,'J-405114223','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(190,'V-166836960','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(191,'V-14407188','f4bb47829de5e266aabd2bf0a8f4865bb6f28929eca751e711e415137cd8ec5d',1,'2016-06-01 09:16:44','2016-10-07 11:15:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(192,'V-18357945','ca830c7a60e6389ea7a80e87c1fb295a5ae697703e184ef23baec62df4dff280',1,'2016-06-01 09:16:44','2016-10-11 09:42:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(193,'V-200518540','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(194,'V-13697385','f97078af62a0bec2211c3bf5f5af284399e2029bcf7bfccd8dddc390a9ea8f2f',1,'2016-06-01 09:16:44','2016-10-05 10:34:34','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(196,'J-315873974','7646b5a0b1a7c65c492a407bf401b649676fe0ef357b01b1ff09937422876343',1,'2016-06-01 09:16:44','2016-06-15 18:21:18','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(197,'V-99692452','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-18 20:08:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(198,'V-153430841','44896d5d6113f40d5234a5a699ff101993d3171fe8ec576d2ff313baa23ba020',1,'2016-06-01 09:16:44','2016-06-18 23:28:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(200,'V-16682891','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-11 14:11:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(201,'V-13951495','5e6a320b71b22a3169b72fe5b3c37ae316b4d4eeb4047bcfbb260b90e1c83bfd',1,'2016-06-01 09:16:44','2016-09-15 07:03:49','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(202,'V-6292454','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(203,'J-402492537','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(204,'J-295056079','149e0fcb04434f1415d81b0337e75eef01c66ce7fb34746a77c30cf5084c0462',1,'2016-06-01 09:16:44','2016-06-15 21:33:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(205,'J-298133147','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(206,'J-317385799','5f447cf8a94ce53e901247bcd4dea84dece622114a646bf9d279c96c11ded2e9',1,'2016-06-01 09:16:44','2016-09-15 06:51:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(207,'V-10489616','2ca853ae85bdacb0f90afee9f2e0384016389ccd1b56cdde66906f20929e02d4',1,'2016-06-01 09:16:44','2016-09-19 11:51:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(209,'V-17815328','3f3523ac168330e6b429b23d2b25b6c6d7efaf564c1a9f1feaf5398d2bb45318',1,'2016-06-01 09:16:44','2016-10-05 17:52:31','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(210,'V-16744123','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(211,'V-13686739','73d9c67fd4664192c32fb1dc571ab46e8881c673278daa792d4fd2dfa0ec743b',1,'2016-06-01 09:16:44','2016-10-05 11:00:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(212,'J-405706503','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(213,'V-16004873','9d45a4710a9abc4e87cac3a7bc71ca46b79c2cbcce4a01a1f83184f6878744c7',1,'2016-06-01 09:16:44','2016-10-11 14:21:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(214,'J-307878630','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(215,'V-180384541','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(216,'V-403031886','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(217,'V-12711500','9af15b336e6a9619928537df30b2e6a2376569fcf9d7e773eccede65606529a0',1,'2016-06-01 09:16:44','2016-10-05 10:31:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(218,'V-24224321','e5f13e894a70ed5ff2eddab067655a2cafd4fe012f7fa1a61ee36bd36f2eeb12',1,'2016-06-01 09:16:44','2016-11-17 19:46:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(219,'V-17123023','fd4cf01f9aa4ed6ff26d6383c4f4c3f28a8d9abaf50a228fe17c8bb63f710080',1,'2016-06-01 09:16:44','2016-09-15 07:06:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(220,'V-6844399','6140eb8af73f27f95deb3256c7818d2e4777a445092fe9ac832e34b4a2ad2a3f',1,'2016-06-01 09:16:44','2016-10-05 10:01:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(221,'V-12733635','605a08e12621526ebbde7b248b6aa5a2f36f0b64ca1052b6abdc0e1af61a2ebf',1,'2016-06-01 09:16:44','2016-10-11 14:27:31','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(223,'V-6106583','705578eb242f7720d0d979e75d122e04fc5b21459c51f4c82467bd187b4e1155',1,'2016-06-01 09:16:44','2016-08-24 15:39:31','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(224,'V-201448154','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(225,'V-60090110','ea81f6b00d5d29ea4e6a1c73c5eb6ae9ff8e6fa1f5985ef7a647e40dbc5d217b',1,'2016-06-01 09:16:44','2016-08-24 15:51:53','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(226,'V-19672830','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(227,'V-139027155','028a42e6a02c0c77481be187862d5bbca1e3a75316a1b2704d6af7a061ee49b6',1,'2016-06-01 09:16:44','2016-08-24 03:30:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(228,'V-179236180','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(229,'J-299526568','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(230,'J-402536747','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-09-28 15:08:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(231,'J-405780100','03f10dbe53eee150d0cdccda4b44aa7a26711cc912f781b16e8c0d143126b3fe',1,'2016-06-01 09:16:44','2016-06-03 01:26:20','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(232,'J-293940109','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-24 16:25:17','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(233,'J-406183946','9bb09914b117aaa92837348557e3deab4ccb38d7e94e0a29189091aad0a364f2',1,'2016-06-01 09:16:44','2016-08-24 03:22:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(234,'V-95199875','1ba5be6351de5c8383b1f44efc8dc72bbf1ba564cfeabbb53f6e713e1ddcb648',1,'2016-06-01 09:16:44','2016-08-24 02:59:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(235,'V-155459839','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(236,'V-125355419','cb287900f87375da9aaab2a0a98322e3e93243c724b41d8e2d770305c7657eae',1,'2016-06-01 09:16:44','2016-07-20 02:54:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(237,'V-19432916','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-08-18 13:28:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(238,'V-7426869','c7cc6401ee76973f6801c864ed16a1a7638b51cee6ee33b2c21e1c64201eb0ec',1,'2016-06-01 09:16:44','2016-08-14 01:05:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(239,'V-189219969','a76b7f25b6ba5ec51bd9fa42f4143b63c2495996e783baa4d9f8459d314f6ad2',1,'2016-06-01 09:16:44','2016-08-13 21:45:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(240,'V-15776571','a5defbca25ecafd2c5a1380ba4ba08e5063270e1f3daafd5e680d9b97964cb9e',1,'2016-06-01 09:16:44','2016-07-21 04:10:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(241,'V-15448482','3e806dd8555bd6dad034f12dccac749eb3d48cbd1cfa7b5a47a69eb1bb88db27',1,'2016-06-01 09:16:44','2016-08-21 03:57:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(242,'V-167956757','2a1a9a0b74b781066773cd050f3a2e8065d762c306ae475a2f3e9fdbf68542d0',1,'2016-06-01 09:16:44','2016-08-13 22:08:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(243,'V-14590514','dc419c2b7b4d9698d0ca05da0889948670984baac1d3ef1247f3df5247c5f960',1,'2016-06-01 09:16:44','2016-07-20 08:07:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(244,'V-182618442','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(245,'V-164049333','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(247,'V-11314948','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(248,'V-165844579','479f8ec909fe2e84ad23cb8a55e3fc41bc84659e81be514db4b989a89a9bd2a0',1,'2016-06-01 09:16:44','2016-10-19 18:06:51','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(249,'V-8518420','ccbb651593237853c10cf5be6037ac8c4c1fab64babb52036900264f20b5e030',1,'2016-06-01 09:16:44','2016-09-14 09:15:08','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(250,'V-19726925','3ddec17e49b60a88195d4aa1e13cced93c1d55c779edda1da8a9710813e61eb7',1,'2016-06-01 09:16:44','2016-07-20 03:39:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(252,'V-19901068','293e401e6a903b410fe614772283c8ac20b3b7708955b0764c66059a384df8b8',1,'2016-06-01 09:16:44','2016-07-21 04:02:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(253,'V-184221345','26de34bf3aa552191899e5ecdba0147ed210034853b121fc33bd59da986e7d28',1,'2016-06-01 09:16:44','2016-07-20 04:38:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(254,'V-17506214','7850c5701f8d4ffeed5050bb09477b3250f2461d5839a52a1e93815599c1cfa4',1,'2016-06-01 09:16:44','2016-08-13 23:51:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(255,'V-103181239','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(256,'V-16898855','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(257,'V-16750664','c2ab175ba03e6610145df8e60966ac14da68d77d6619df67aaf615358146cb78',1,'2016-06-01 09:16:44','2016-07-20 06:44:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(258,'V-25541638','0599295238e6acd530d71dab8d4a3c9a9a67200e8f39a5fc6706115003f184f6',1,'2016-06-01 09:16:44','2016-08-20 22:12:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(259,'V-14590669','cb6bf28f8deeac68456f4eafe3e75510605928c1832b1b44928362e2518d9e23',1,'2016-06-01 09:16:44','2016-08-14 19:22:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(260,'V-168042767','a3b868f07f7f9d0bc5c082f69ce5e0235b4595e8ac42f3b6b82bbc9db88d9ecd',1,'2016-06-01 09:16:44','2016-09-07 05:34:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(261,'V-11879806','96fee1507b33e03f826ea6b06c3228e4f79c7a4d59c18557c658255ad64819d0',1,'2016-06-01 09:16:44','2016-07-21 03:58:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(262,'V-189223443','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(263,'J-405519720','d3c07bfb99081603c04b48869db83e6ef688a02516c5b463e7cfe1c17d4856ec',1,'2016-06-01 09:16:44','2016-08-15 05:16:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(264,'V-19590560','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-08-15 00:30:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(265,'V-13644139','b876b601b9c1bd9af8471da4b5af1de9de3b6f675ca67a2df309e7c21e82e2d2',1,'2016-06-01 09:16:44','2016-08-15 19:05:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(266,'V-15817277','85a62be89730f96b9690f8a76c32dafea61107a3ed5e3acd84122d7ea766cb8b',1,'2016-06-01 09:16:44','2016-07-20 03:03:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(267,'V-20500294','6f34d74e997d7511ff0513b7df3e865a67bc2d66a72a59570e05263cd170a40d',1,'2016-06-01 09:16:44','2016-08-14 20:43:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(268,'V-7412271','91101ef0c0adad6c9aa297f2470854b5826131376ca93534920da878d6bfc2d2',1,'2016-06-01 09:16:44','2016-07-20 03:28:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(269,'V-12452628','af5a988bd43dfe72e8fe0796968f7459054d73f682423043d5a16be0cefae4d6',1,'2016-06-01 09:16:44','2016-07-20 10:09:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(270,'V-16089098','0805c2e08cbd702b9595b87b2846dc7e5477b47c6a656570dfef14e639620581',1,'2016-06-01 09:16:44','2016-07-20 05:01:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(271,'V-19106169','9894614551bc7ebd8c36a6cab90b22686f72f9e73d57ec89f05b756a58f00874',1,'2016-06-01 09:16:44','2016-08-14 20:59:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(272,'V-9614853','2b8ae4541022864d57e65a7db4c70b75fea47c9101edebf0325da25ea84def02',1,'2016-06-01 09:16:44','2016-11-29 12:01:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(273,'V-19106412','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(276,'V-16277442','947758ee2e227e18e8ed17083828019171a97cd6fb8642c0e05e10027f9e97eb',1,'2016-06-01 09:16:44','2016-07-20 07:23:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(277,'V-198835095','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(278,'V-13266879','c50c10fec2142a78409b8e100a5dea4cf635e6fdca0caf711b6711f7a1e34d1f',1,'2016-06-01 09:16:44','2016-07-24 07:54:18','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(279,'V-14749624','5261e222dc2b63b249f5be736842f7f0a3516eb49a393d357794a89a9664b4f8',1,'2016-06-01 09:16:44','2016-08-14 22:52:43','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(280,'J-401491529','493b161ee652cf61fb2eb5b3e9bc68e03f83ac2dda05e0cd65084b0bcc5a9155',1,'2016-06-01 09:16:44','2016-07-21 04:15:13','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(281,'V-11308010','2dc0269fa54d269a87536810ec453cb095b4b92f45e63826a21dff1c2e76f169',1,'2016-06-01 09:16:44','2016-08-14 22:59:22','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(284,'J-316521338','1b57df57df5c2d4e2bd534e5b81bf81540bca9ff0164b251da7ec5b848149b12',1,'2016-06-01 09:16:44','2016-11-25 12:13:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(285,'V-15922587','84c54753f85e1a7751e3939a50d6f5c920a62a3419ea05eeb0cbf4dff3a2e57f',1,'2016-06-01 09:16:44','2016-07-26 04:39:53','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(286,'V-14438384','7b6fb6ebe2c7eafe52d4b53c736c36f8b00367f843632ef14ec32ae30a1527af',1,'2016-06-01 09:16:44','2016-07-26 04:25:37','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(287,'V-8086180','79977926027f5a94c1b737b624352f5d19e1c85d77eceb7215eca75e6e8ff3aa',1,'2016-06-01 09:16:44','2016-09-06 03:43:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(288,'V-22657431','8491457c18ca724471a89222cc94f74c33084f16f6eaf2e8cd5397aa2b901097',1,'2016-06-01 09:16:44','2016-07-26 06:26:37','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(289,'V-90317012','43ebdfc69d163d059d731d1f94f380ec42b64ca8e052b31f0bc0392ea54dfa83',1,'2016-06-01 09:16:44','2016-09-09 07:10:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(290,'V-145883705','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(291,'V-12355030','08778196dd5d0b10d14ec7b3f5bdf0cdefba9f0cd096bd2492eccd15dd3bf1d7',1,'2016-06-01 09:16:44','2016-07-26 05:20:39','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(292,'V-123462790','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(293,'V-15594482','dcf98ce50dc311a0ae9cf5300e3bddc5530ba06967b8bba4cb95700998b9ffcf',1,'2016-06-01 09:16:44','2016-07-26 07:15:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(294,'V-16741681','6e14ea0ad4c4bb08d3ae4e7f3bcbb3be613e8793fca108afc07fb6da62a8731e',1,'2016-06-01 09:16:44','2016-07-26 03:32:08','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(295,'V-14287940','66a27f4d1680057a8d0e9e9d2a2bccd2e13cf1bed96f64a6ae9c58030f3ea753',1,'2016-06-01 09:16:44','2016-07-26 07:57:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(296,'V-10691505','5a9622e79c16e75361ba8a22b661e0dafd590c0aa5b3c075bfac44257c8296bc',1,'2016-06-01 09:16:44','2016-08-25 04:23:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(297,'V-9103253','d0544c9159d5a045809ea6e690de4270b9f2f5a8eb0aa8f95b4cf2577e83c916',1,'2016-06-01 09:16:44','2016-07-26 05:15:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(298,'V-8036926','1628e749c57b467f05cc72117849b65053e9dd373665a5bfbd0e7faa86a55770',1,'2016-06-01 09:16:44','2017-02-04 10:40:17','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(299,'V-150323343','bb457182fa73ef2c9c8de916d5721181840c603d1c14c3184086bcd9bb306800',1,'2016-06-01 09:16:44','2016-08-17 05:29:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(300,'V-130645107','b70e6197bd55b7886fb79db25651c0de7e8e2d066227da5168fb9b97934cc26d',1,'2016-06-01 09:16:44','2016-08-17 05:35:32','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(301,'V-16742818','136613e79f16a5fd366f3b3a1f1726bc3ff4a37b5ea53b931be93153bc580a35',1,'2016-06-01 09:16:44','2016-07-26 06:18:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(302,'V-166559311','4f8453a17e9112d4b489e78c696454a30f26d2c478f8e37690ccf3e15d5c1554',1,'2016-06-01 09:16:44','2016-08-17 05:38:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(303,'V-12779610','1e0937f5e4e9d1e8323cf740b35ada91b91ed83c9d3c043f3007ec91d3790044',1,'2016-06-01 09:16:44','2016-07-26 07:21:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(304,'V-119527003','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(305,'E-81480353','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-17 05:43:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(307,'V-156212535','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(308,'V-16680944','44ae19456d54240b057d2011557d7d78f0a212db0c27ca4a985f012d9f721e1b',1,'2016-06-01 09:16:44','2016-09-06 04:08:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(309,'V-22989387','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-08-07 23:32:34','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(310,'V-17239848','f33a75501229a131cd372d106f107ea9e5a2d535bf78a2fe4de7b55eb1dcbda5',1,'2016-06-01 09:16:44','2016-07-26 04:54:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(311,'V-11070883','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-06-01 09:16:44','2016-09-06 04:28:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(312,'V-80318207','4b36a4c10f514a33883e3fbfadc3b716907a8baa4bbbaede52f1af3007224e13',1,'2016-06-01 09:16:44','2016-07-26 04:01:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(313,'V-17129041','2833bb158fcae6f4c47d74af161b3ccb785dae986a4fd583e8b529425b186df9',1,'2016-06-01 09:16:44','2016-07-26 05:54:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(314,'V-8000633','2bce6464e01f299cddffbf876f6d11979f269a0af51ae3bbdb48c7db52f5a388',1,'2016-06-01 09:16:44','2016-11-04 15:54:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(315,'V-9470217','92116e89e9ce6a0b0bea3b9f4667b5f8c4317a2fc0a51bf580478ed7b73a5de5',1,'2016-06-01 09:16:44','2016-07-26 05:28:19','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(316,'V-16597643','5af900813d2cc617529b73dc9c3e9b5fa861c0947bf4128cc9c004b491ebdca2',1,'2016-06-01 09:16:44','2016-07-26 07:33:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(318,'V-10528846','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(319,'J-317398548','634839f401462c86cce17daf6807760264df82629542777942c14f74be835fc0',1,'2016-06-01 09:16:44','2016-10-20 09:12:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(320,'V-125630126','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(321,'V-14438052','11d1ff4edd53407199c92b00cbc3abe8c9c5d5bed4414ad07b55c896b0e7a713',1,'2016-06-01 09:16:44','2016-10-05 09:51:48','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(322,'J-405432420','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(324,'V-14892319','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-09-02 23:25:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(325,'V-19378370','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(326,'V-117367947','c9fd92c735c7609969a0ab48b6dc2fda85a06e135196571c06708222baf5a2e7',1,'2016-06-01 09:16:44','2016-10-11 14:47:14','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(327,'V-86758055','5e5341f59865e594c2ba8c689e34ecdf8d2ed5085c615061cb6bf745f64b073b',1,'2016-06-01 09:16:44','2016-10-24 19:25:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(328,'V-146881021','6e65b61d030e5ac6492802c6f619a63006e5b0e2cafc0170ab92a68083162528',1,'2016-06-01 09:16:44','2016-09-30 15:49:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(329,'V-86847317','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(330,'V-6504487','e8a9b6eabca15eb6936f6f22a94f6e114a283c77aa0c082a2140c7ba1c5ea735',1,'2016-06-01 09:16:44','2016-09-11 14:25:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(331,'V-87554348','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(332,'V-155893679','e35cbfcb34ede24672b84b82cc142b717c73fac5b8860b52c8d0adf2ba8829b7',1,'2016-06-01 09:16:44','2016-09-15 07:20:38','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(333,'J-405603410','7e4f27cd1ffa4fa7676e920c73bca39abba7a9e532703197af4b2924ee818e01',1,'2016-06-01 09:16:44','2016-08-21 03:14:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(334,'V-12832272','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(335,'V-6994603','73cfa49a6c86a6188c08e323e6751b67ddafeb309866b188c6ccf4e9f5f2c0b1',1,'2016-06-01 09:16:44','2016-09-15 06:19:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(336,'V-191545024','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(337,'J-295883820','80990987cb6577ea6b99f7711c64cc2c8fce1b0a14a91c57f35580e7e807bd34',1,'2016-06-01 09:16:44','2016-10-18 18:36:16','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(338,'J-299546445','4a771ed230d114637c636a6a1968c2e21668a253a9b8965cea5190e77d41138a',1,'2016-06-01 09:16:44','2016-12-19 14:54:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(339,'V-144808416','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(340,'V-105318274','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(341,'J-317060415','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(342,'J-401303285','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(343,'J-406560294','c5d21b4cb275b52942a53b37a5e63ced8d56d6f1316da01b1dd75e82bb6135b4',1,'2016-06-01 09:16:44','2016-10-21 14:31:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(344,'V-138458780','fccb6362a9a78e111197c4f93837549f6bffc9c29661d213eefb9d2df6176fd7',1,'2016-06-01 09:16:44','2016-11-15 14:39:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(345,'V-132476388','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(346,'V-6519079','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-12-19 12:03:04','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(347,'J-314677764','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(348,'J-297527869','f552b0d998c0b5f4144e63e133af600ca3b9693dc38226453ed38f4d923a4f53',1,'2016-06-01 09:16:44','2016-09-15 06:41:38','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(349,'J-401647588','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(350,'J-296764611','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-09-15 07:58:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(351,'J-296695091','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(352,'V-100927175','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(353,'V-16924395','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-25 17:40:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(354,'V-17651617','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(355,'V-19200916','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(356,'V-24088465','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(357,'J-298321865','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(358,'V-15150151','3218b2e6eb706bb975ba03eb699a3f3e6ebda7fe11c25691ccd90d0a6ebe32d1',1,'2016-06-01 09:16:44','2016-08-17 12:45:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(359,'V-10516007','2a657d7c0194677dbfdeb4c7e2d73a6b43c6dec8d7e5b915fec8b2950c408e1a',1,'2016-06-01 09:16:44','2016-10-25 11:02:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(360,'V-63220252','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(361,'J-301657152','f21b7a3ead02f92a8b1c915a48256dbfae6c3832fdca0ae7fbe4ce5fb6d01dcf',1,'2016-06-01 09:16:44','2016-09-15 07:18:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(362,'V-22046668','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(363,'V-13123680','cc2632d8e992a947a9b8af5be997cc4de0c4914067fe49e754435993606835f9',1,'2016-06-01 09:16:44','2016-09-16 13:46:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(364,'V-120644153','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(365,'V-11561395','586617d7e3b25e22f5f7ff355e3dfe11446b314e178a00bcc986ff7fd5c87dd7',1,'2016-06-01 09:16:44','2016-09-15 03:47:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(366,'V-223516838','335f13ccec68fcb9de22e60226df2c64b192ca4440dfa503795714ce6d0730e3',1,'2016-06-01 09:16:44','2016-10-11 16:35:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(367,'V-140605669','b831dddf4456768a0a45e673119a9ec2208ce8d525be8c73ae56db84751a58a3',1,'2016-06-01 09:16:44','2016-09-15 07:12:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(368,'V-117390272','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(369,'V-15813782','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(370,'V-18556247','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(371,'V-175576254','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(372,'J-315163527','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(373,'J-400065844','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(374,'J-295870779','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(375,'V-182745061','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(376,'V-86515012','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(377,'J-402137729','4318bd3fd7d93612855744e8aabfe65e9322264e22962649ec781c90b981fcd0',1,'2016-06-01 09:16:44','2016-12-05 12:46:33','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(378,'J-407269542','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(379,'V-17419302','44337fb3e5cdeeb2d0e277a76b0daa29d3afd715f1d9607365c8ffe546183af5',1,'2016-06-01 09:16:44','2016-09-25 00:34:18','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(380,'V-163372793','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(381,'V-16545815','502913bfdd49eab564282dff101e6d167321237eeec66eedb2a438ed80fdeaa0',1,'2016-06-01 09:16:44','2016-09-12 02:12:18','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(383,'V-181149180','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(384,'V-14840619','39dfc0ad2b9c5e9a02f70ff41a57ec7a8b238376238422841d332af34af3ec0d',1,'2016-06-01 09:16:44','2016-09-12 02:34:34','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(385,'J-310877629','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(386,'V-163376837','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-11-08 10:24:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(387,'J-95669561','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(388,'J-402511728','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(389,'V-10638194','e07198ba050a32495f45e76e102a28e9b062828bf7a51fd8ed4462f53e0205d9',1,'2016-06-01 09:16:44','2016-08-19 13:51:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(390,'J-407614029','0c08a9536b5dd78713f440acb930872fd69f7a71ad0cf9cdedc9628ddf9ac3d7',1,'2016-06-01 09:16:44','2016-08-24 16:17:13','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(391,'V-16795300','4b9a7f50c0bb198c6f5414c5a8459f5d216d34ab521ea94c060ea35cac66f900',1,'2016-06-01 09:16:44','2016-09-16 14:40:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(392,'V-6451623','d88439bd85ec69019e0604601683f83dd51ab013e53775881f1900e8a8131052',1,'2016-06-01 09:16:44','2016-09-09 14:57:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(393,'J-315955490','73c29e049bb48ec8ab97034d6aa35dcb7f1d60a6a378c78b16619e502ffebcfd',1,'2016-06-01 09:16:44','2016-08-23 05:53:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(394,'V-5685925','b00cdd86d23417c27578cd2e493ea6f8d76a94b369254dfe09c115383d9d4d17',1,'2016-06-01 09:16:44','2016-08-02 03:15:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(395,'V-15988990','132b4525171f6374aa2515e716cd2d7f1d4217616d8589043c482d93f1690ad0',1,'2016-06-01 09:16:44','2016-08-02 05:30:58','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(396,'V-12631511','60454e90c4e9ec757fee7116122d4cb2851708b66e8ec1edeca40d4038e986b8',1,'2016-06-01 09:16:44','2016-08-02 04:16:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(397,'V-211798838','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-14 12:23:39','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(398,'V-12234950','92c7d71b95dc6540fc58e891dbe649fe72ae5e93b5f42fd7fbdeefe6cef3e51d',1,'2016-06-01 09:16:44','2016-08-25 21:05:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(399,'V-133043523','4d13e1dbe7ab3f90f7cf9f49beb4fa7abc5624967d6db79b9e61c022c065d083',1,'2016-06-01 09:16:44','2016-09-08 22:52:04','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(400,'V-16123964','c96c0d36dd4c2a8e101865a2354b2c0fa4b5a87f31b3d52ca378c431eabafe8e',1,'2016-06-01 09:16:44','2016-08-02 04:27:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(401,'V-101733315','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(402,'V-165407020','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(403,'V-161259752','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(404,'V-10172413','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-08-02 03:47:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(405,'V-20999408','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(406,'V-12814562','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(407,'V-11498286','c276916e6f819d215b2c0b96ac7ff8afdb327ca5518797b0d0f105d658c0f603',1,'2016-06-01 09:16:44','2016-08-02 04:12:14','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(408,'V-9238723','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-08-25 22:01:28','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(409,'V-178128554','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-09-06 05:57:19','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(410,'V-6317248','ffee0776cdce7132394608b8edc7747f712bfcacf54b227c7cdc89159d72fd57',1,'2016-06-01 09:16:44','2016-08-02 03:58:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(411,'V-16410121','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(412,'V-14941307','4dfe4be8571f5be6ca4463e37ff11764c081fe8bbe0ffeead61b715df37875b8',1,'2016-06-01 09:16:44','2016-08-02 03:33:04','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(413,'V-9234773','472c468692a9da9eef7dbe719ed5165a1942f843794ff7d9e5a2000cd1c7b58b',1,'2016-06-01 09:16:44','2016-08-02 06:28:17','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(414,'V-10145177','d3039def0c776dba5ce4362c2e3a2e585739d69630b73e6b7b1ee75a504ff745',1,'2016-06-01 09:16:44','2016-08-02 04:06:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(415,'V-17503094','6a43174453643826a65acea9552792fcae7ed9c0f64e27857c94ad663250bbcc',1,'2016-06-01 09:16:44','2016-08-31 21:03:08','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(417,'V-101532093','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(418,'V-12970435','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(419,'V-129704353','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(420,'V-102646203','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(421,'V-19231638','681ddd8e6b1adedec83dd007c4dedad967e8a2b3b9aab0ddd7e0448b2255279d',1,'2016-06-01 09:16:44','2016-07-17 03:20:05','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(422,'V-167241871','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(423,'V-11973051','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(424,'V-17920780','ea399905d85c7eb5b95e79a378e0fde9304ab2a9841ae924553f33e63407cfef',1,'2016-06-01 09:16:44','2016-07-20 05:22:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(425,'V-178444790','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-02 15:54:06','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(426,'V-14210216','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(427,'V-14607191','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(428,'J-297126422','afd1c2f0d4329cdb42517570ed4fee37d01dd5c0568e75d137b872bdb0d251a9',1,'2016-06-01 09:16:44','2016-09-09 09:15:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(429,'V-20275259','1e9a3727005231acb13f0efc124c7665a473058c4412059f96e6097b7656958c',1,'2016-06-01 09:16:44','2016-08-30 19:27:05','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(431,'V-16149195','0ca61167af8b4a6a3917ee9c21187e6d991e687b0fb040152ec017b03d51f386',1,'2016-06-01 09:16:44','2016-09-05 18:12:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(432,'J-296083231','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(433,'V-15720018','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-09-07 05:18:56','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(434,'V-16837189','cc3c49ccc51e0bb804a695f67d9f4d29c7f476149d3e79e3455440a5c92f50e7',1,'2016-06-01 09:16:44','2016-08-26 15:51:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(435,'V-16186594','ed47674d6552bab5df1a02f12122f8369f1953880a3ee415e137a1f0a34c417a',1,'2016-06-01 09:16:44','2016-08-26 16:09:46','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(436,'J-404975993','5556f7709d4c86e1d96718d2d0367e82b24e23fe5ed2615d39f88c52823215a6',1,'2016-06-01 09:16:44','2016-08-30 16:46:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(437,'J-296503605','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 09:16:44','2016-09-07 04:01:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(438,'V-17088027','9d17befb32b03f88473007b622bfc4f56687f27ee58193552683742af706ed07',1,'2016-06-01 09:16:44','2016-08-26 18:11:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(439,'J-314926365','ed45d626b07112a8a501d9672f3b92796a6754b8d8d9cb4c617fec9774889220',1,'2016-06-01 09:16:44','2016-08-29 12:37:55','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(440,'V-133019341','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(441,'V-13300508','6223a5336014cadd6e74fc5867295e64b316a9b4abd25ea0cc7be2197c0bdbd6',1,'2016-06-01 09:16:44','2016-09-07 04:13:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(442,'J-406758280','5b81e011a7f6a0606a6a9940ca7a83ed19b0ca5cecf2000c6ea994bac301582c',1,'2016-06-01 09:16:44','2016-06-02 03:58:00','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(443,'V-16121047','68e58cb2810ac93b70640c3cc88ae88ebfd85e402ce847bc22bdeef93e2856d8',1,'2016-06-01 09:16:44','2016-09-05 17:51:22','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(444,'V-7620622','2b046295b2cc2c6408a16f27f49cfd32187ffaaa7025d2278610b770e6d01fa2',1,'2016-06-01 09:16:44','2016-09-09 08:56:40','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(445,'V-222500261','13790be14241b522bab26ad20801ee96d1e8602bd5e23be9dd4953cef360f196',1,'2016-06-01 09:16:44','2016-09-09 09:21:19','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(446,'V-17684805','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(447,'V-14682348','a523da2cb3b522f8930ecf603f394052dbcec63af245571f1960b2ef76ed1a5a',1,'2016-06-01 09:16:44','2016-09-07 05:22:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(448,'V-167831750','a29a5ced507cb799b6439035c831c0b5b4c39a2e5eb88ab8847b4242fa5f1a5f',1,'2016-06-01 09:16:44','2016-09-09 08:54:10','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(449,'J-296099120','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-08-21 09:12:12','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(450,'V-16492283','d599668f93b812a8723f7b684b39f28b55a6750f79deb918c3190f8b48342e0d',1,'2016-06-01 09:16:44','2016-09-07 04:25:41','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(451,'V-142366300','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-09-09 10:20:36','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(452,'V-14279171','679adcee99f406c47571a38e5a20d60382e9de7271f0e2c29848e482d194eecb',1,'2016-06-01 09:16:44','2016-08-28 02:22:20','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(453,'V-19007041','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(454,'V-17096155','de436c4cf25097f9927a15b40e4e91e1c4a23f1b52f0e7c0399960502222e4fe',1,'2016-06-01 09:16:44','2016-09-07 04:29:52','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(455,'J-406503100','74c8fe4b80b9d69dd4e348c87595945940116e702dcebecdd341b46f8f048b06',1,'2016-06-01 09:16:44','2016-09-05 16:32:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(456,'J-406191124','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(457,'V-7726697','628c3a7c97b51bff311328e98f10c6e951de22c4d3ea2030ec08f065c695157d',1,'2016-06-01 09:16:44','2016-09-07 04:45:35','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(458,'V-168912028','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(459,'V-143780135','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-08-27 04:29:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(460,'E-81692140','c91a28334925a789d7a5035d961ab6d70c9b27457121d51baa4932bcfe216577',1,'2016-06-01 09:16:44','2016-09-20 13:31:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(461,'V-20120702','132f10acc9af6cfdfe2cec4e63ac641b47fadc4f176b070954155a7785293051',1,'2016-06-01 09:16:44','2016-08-02 03:38:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(463,'V-15729794','80c95d0e9e710a56937209d81da3043b5dfed8174bb6acc01e334ecaa6408a97',1,'2016-06-01 09:16:44','2016-11-29 17:52:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(464,'V-20605675','a46104d5a0ebe0e22751012f24a3399e8a3ff1c6bbf5c8835d0673990cd464a4',1,'2016-06-01 09:16:44','2016-09-15 04:11:30','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(465,'J-401178634','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(466,'V-65066862','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-22 16:08:02','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(468,'V-236115182','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(469,'J-406045580','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(470,'V-162884952','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(471,'V-128325588','610cf40ce4576f45b65c2bf4288d3be5e113c9d9f9f0aa0e17809918d8210183',1,'2016-06-01 09:16:44','2016-09-15 07:37:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(472,'V-141962554','b74b7e3fcb623d805dacf98db27530f845760c47e3b0faa702b84e9ff3902c37',1,'2016-06-01 09:16:44','2016-10-04 18:41:32','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(473,'V-14196254','96b026df37a1f9966a1efa807a2e8dce70c3e4a0ee9d36d2764fe0226bf16ec4',1,'2016-06-01 09:16:44','2016-10-06 16:18:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(474,'J-309057219','8924b1a8fffd4019dbc80c17f7ff226474283ee0bd7b0d622c5790479fa6c055',1,'2016-06-01 09:16:44','2016-09-15 07:47:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(475,'J-403416664','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(477,'J-313787744','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(478,'V-8871641','1039e1e17b8716b4a26e840cf622bfba492e889c905520acbbdbf64e43205fba',1,'2016-06-01 09:16:44','2016-09-11 13:49:08','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(479,'V-17956519','1672dd4cc2c449cbf3cc7edcece5af6be52f1c83d49a4060675d881531cbef46',1,'2016-06-01 09:16:44','2016-09-11 13:57:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(480,'V-8263824','0a95adbf8581859ae0cc477127abeaf4ad89916405c41855af8fbc482e1634e8',1,'2016-06-01 09:16:44','2016-09-11 14:05:58','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(481,'V-10290638','f39c1dbf725f0ff68da725f06d311dffb54461ac0fc93ed77c497aeb8004c35f',1,'2016-06-01 09:16:44','2016-09-08 09:22:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(482,'V-20359600','fbb4601715d2bf39d75c43538005c7ed9ee14445909ed89ffa10952afd3c7a99',1,'2016-06-01 09:16:44','2016-11-04 13:04:50','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(483,'V-15874831','b755983b2b2ba58fece8c978f178d303e327b6559ee99ee9afce816f8e597629',1,'2016-06-01 09:16:44','2016-09-11 14:13:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(484,'V-12616886','c7b7979bd55cf0196e712e94725dceb0818314ec04b0a6da119bd4491ab38284',1,'2016-06-01 09:16:44','2016-09-11 18:20:42','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(485,'V-5491343','ca60f87ce4bb68ea7bfdb3e81e09397f8f3654bff7efd632532b8ea7d30fcbf2',1,'2016-06-01 09:16:44','2016-09-11 14:32:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(486,'V-6353270','b3658670d2a52e2c9af9900e5c34acaae4009113569447616ce7932ba67496d7',1,'2016-06-01 09:16:44','2016-09-11 14:36:57','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(487,'J-405880797','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(488,'V-8033545','a54e71f0e17f5aaf7946e66ab42cf3b1fd4e61d60581736c9f0eb1c3f794eb7c',1,'2016-06-01 09:16:44','2016-09-23 14:03:26','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(489,'V-13766027','17283a4b7fba7b000ac9b66fa7b4882e7bc7999b80a82f563ac6ddb3cfcec4ac',1,'2016-06-01 09:16:44','2016-09-17 20:22:25','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(490,'V-122899264','41188651c5bd6aace171ba4c34c34fa210a3036365251d2b7e71697ab0882ea7',1,'2016-06-01 09:16:44','2016-08-30 03:20:25','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(491,'V-34427654','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-09-11 21:10:03','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(492,'J-404237879','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-01 09:16:44','2016-09-08 09:33:23','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(493,'V-17344792','71666c1e4bdeb4e61b367897c3be75cbad1f00120d8bbf4566d152cd02e35d10',1,'2016-06-01 09:16:44','2016-09-23 17:54:05','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(494,'V-8251428','4ac15fcf0d30af85de1586d1e9fddb90a27a25a790485fb6ce8968b05ce08a75',1,'2016-06-01 09:16:44','2016-09-12 16:04:43','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(495,'V-5863658','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(496,'V-117655527','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(497,'V-82632544','67983ff682cd75752d4c914cde4876aca7efa4245c729df1975deb6fd7da1b71',1,'2016-06-01 09:16:44','2016-09-23 13:39:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(498,'J-315952505','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(499,'V-19227678','2ecbbbe98d7e169fa4cf7d2b6c597987e569a8485789f67cd5d8465945ebd380',1,'2016-06-01 09:16:44','2016-08-28 02:15:27','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(500,'J-315969645','ff2f5ce8327b915e5b66ae6e1285753311eddfb94a298c1967b4eb32bf5f32c1',1,'2016-06-01 09:16:44','2016-08-17 15:33:54','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(501,'V-20610368','81695d10de2d9e1c2a1ffbfa4527ea9eee4eeb253ec1854f6ec026dbba167416',1,'2016-06-01 09:16:44','2016-09-05 14:13:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(502,'V-200974979','4f82ecbe295be332781e23281499b5003d8c348228098c6c315449eb141ce86e',1,'2016-06-01 09:16:44','2016-09-15 03:51:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(503,'V-13575135','f89afec187888868207d8ef1afe901bce5809e606946c6c5e8dd9694bc6027a8',1,'2016-06-01 09:16:44','2016-09-07 04:50:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(504,'V-20015210','963d4a8de12a88f492c570a4d6e51b1ccf30f6c912359ecd36855fc8b94b66c1',1,'2016-06-01 09:16:44','2016-07-24 04:34:13','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(505,'V-78190929','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(506,'J-298903457','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(507,'V-10408385','28e9167d29ec9f9f57486b97a64a4b420119601d2efd034c5c75ba848939dad6',1,'2016-06-01 09:16:44','2016-09-07 08:55:01','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(508,'V-159283271','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(509,'V-195725582','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(510,'V-101549034','ba8f7620f9a9ed618f20f70d4d70f3ea23007e0dc3d80d709723832bb3795930',1,'2016-06-01 09:16:44','2016-08-27 04:15:32','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(511,'V-122426471','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(512,'V-23501716','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2017-01-12 08:01:10','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(513,'V-177420987','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-10-03 18:32:08','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(514,'V-161460857','f898c0e2fa3b9767f4e8e8e98c4a29bb98664b2a6f7b9e67129aa90915ed8a4a',1,'2016-06-01 09:16:44','2016-10-03 19:07:11','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(515,'V-6662595','dc727ebc0766b63dc7f10e9e393f53b9083ebf41295af66f51c1a62470d8abe5',1,'2016-06-01 09:16:44','2016-09-23 13:36:48','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(516,'V-17239815','3d3269fcecb6e9d709f07b7c62c569fdac0ca387848dda8e6fbeb1064e280201',1,'2016-06-01 09:16:44','2016-08-17 05:51:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(517,'V-15517350','31d81a09143f657364c8166354bc3db38f3023844907e17f9fad0fe2ccf1e734',1,'2016-06-01 09:16:44','2016-07-26 03:22:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(518,'V-13156301','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-11-21 13:26:53','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(519,'V-10570828','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(520,'V-19130208','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 09:16:44','2016-06-01 09:16:44','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(521,'V-11351254','a1c2d05656b9041ce76a61d23aef096635931217a5cf8b8dd4249cc067ee3ac7',1,'2016-06-01 09:16:44','2016-07-12 07:16:45','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(523,'V-18822612','73a2af8864fc500fa49048bf3003776c19938f360e56bd03663866fb3087884a',1,'2016-06-01 09:16:44','2016-10-03 17:37:33','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(524,'CECHEVERRIA','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 18:13:50','2016-09-06 03:01:03','carlosjem1993@gmail.com',''),
(525,'AECHEVERRIA','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 18:16:15','2016-06-01 18:16:15','1','1'),
(526,'CHEINZE','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-01 18:27:00','2016-06-01 18:27:00','1','1'),
(529,'V-7920106','2d33ce078cdffeef9377a57b4e4637932b1be7c26f501f41cc930bd460034018',1,'2016-06-01 23:35:21','2016-06-02 00:00:20','Gruas.hot.rod@gmail.com',NULL),
(530,'V-10666870','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-01 23:39:24','2016-06-01 23:39:24','pedrovicens@hotmail.com',NULL),
(532,'V-11144314','87077b9dfbfbb9272de1b2bb1d2398cd0c4e0194afbec7433cfc823f73d7d5bc',1,'2016-06-02 00:30:29','2016-06-02 17:28:26','tecpintacarsc.a@gmail.com','tecpintacarsc.a@gmail.com'),
(535,'MDEANDRADE','18bfddf1020067bbd33fad652bc8f1a59b2427ff8c7ebfd62bbfef6c2dddff49',1,'2016-06-02 06:26:29','2016-09-11 05:57:19','deandrademarcos@gmail.com','deandrademarcos@hotmail.com'),
(536,'V-13990540','eca953dc9652effcc009e1699e96392bb77fdcfd01ec5321882a8f97dba11927',1,'2016-06-02 12:07:49','2016-07-20 07:00:49','yhitzandersequera@gmail.com','yhitzandersequera@gmail.com'),
(539,'V-11447003','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-02 14:25:20','2016-06-02 14:26:00','GRUASLUIS2@GMAIL.COM',NULL),
(545,'V-15942602','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-02 18:58:29','2016-06-02 18:59:08','bybmotors@hotmail.com',NULL),
(546,'V-16521460','5f891c6030fe9ac771dab987e9b2662051c253a5c79923d7cff962455897caa7',1,'2016-06-02 19:47:59','2016-06-02 19:49:46','sanches7777@hotmail.com',NULL),
(547,'V-15621253','1e72dc3972d9600dad8987b28985044b68c5290f35b9ead7777260201f74a18a',1,'2016-06-02 20:42:19','2016-09-06 04:05:23','eveneduardo@hotmail.com',NULL),
(549,'V-23542301','d7756bf29a8ceb8ad44ee83d96001ad8cdcf541c6e8d2d0db821f21b38246a23',1,'2016-06-02 22:20:37','2016-06-02 22:20:37','',NULL),
(553,'V-16795675','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-03 02:39:53','2016-06-03 02:40:46','melideo6040@hotmail.com',NULL),
(554,'V-17857690','badc23a5de6bd4d96a110db59c41c679b2c9b1713ec83202d4ecacc79c7b4d27',1,'2016-06-03 15:05:50','2016-06-03 15:05:50','1986Rafaelandrade@gmail.com',NULL),
(556,'V-13301934','cab344eab6dbfcdb85a67432384fef51755dd5eeb878905819304a71abb42933',1,'2016-06-03 18:07:56','2016-06-03 18:10:30','unaldojosema@hotmail.com',NULL),
(559,'V-10182692','9b66a6232d0644f01e10fbefa1e4ea9326d1bb12e9ec68d733b1f9c17adc588e',1,'2016-06-04 02:30:32','2016-06-04 02:30:32','di.m.ay@hotmail.com',NULL),
(561,'V-14431404','2e8eeece955ce69b7632ede29c4041f0a3af589f43c85ac3bedb599ca16da7f6',1,'2016-06-05 01:56:14','2016-06-05 01:56:15','',NULL),
(562,'V-15377463','a25f447d02ad29cd0987a8115199a7579687e9ce9192e0bce85a78175ffbe5f7',1,'2016-06-05 03:35:15','2016-06-05 03:35:15','ordonnell@hotmail.com',NULL),
(565,'V-12834908','cba5ff14c7f948dd02f983d7c1a01abd3ff21af0c59f99fa167ca06da7f3cbaa',1,'2016-06-07 17:40:25','2016-06-07 17:40:26','Angeljherre@gmail.com',NULL),
(566,'V-17514290','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-08 23:13:56','2016-06-08 23:13:57','GRUASYTAXISBGP@GMAIL.COM',NULL),
(567,'V-16444030','628612b803c647a7de70f0306c6bbc489d8b75e6ffef150b70a1553a5a7abbeb',1,'2016-06-09 18:47:39','2016-07-26 08:20:26','jhonramires-82@hotmail.com',NULL),
(568,'V-21367502','51eeed7251f3f56288ee554afaa1028b7fbc3daacc4a952be4ae8d18ddaf3320',1,'2016-06-09 19:07:13','2016-07-26 08:10:57','frank_river13@hotmail.com',NULL),
(569,'V-11952041','b9bdc2b06f695b52f52785b3720e30950079c148161cea7ce359bbca64ba097a',1,'2016-06-09 19:13:37','2016-06-09 19:13:37','erasmogp73@gmail.com',NULL),
(570,'V-11667450','cf654b88ceaebbc12898fac005169a32cf941f80a18a199915bcddedc726dc94',1,'2016-06-10 02:57:15','2016-07-20 05:33:07','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(571,'V-6504830','8ecb5bcd8cd84cc3ffc6f5dc3076d81c0a457a6bd4b305a33f318b623d701c2e',1,'2016-06-10 02:57:15','2016-10-23 09:45:04','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(572,'J-403473641','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-10 02:57:15','2016-06-10 02:57:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(573,'V-11463414','0c838f16808fa0278888caf231777d73bc3201c87a244390c1aef64a5061a15b',1,'2016-06-10 02:57:15','2016-07-26 04:20:27','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(574,'V-17755400','176ea3de4c6dd48356c19ef66aa0af9e296a2ce80da880ac544a4f3c8281fa8c',1,'2016-06-10 02:57:15','2016-07-20 09:40:59','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(575,'V-177176326','e7c644578a0e1d66636593e4d9ff1295af662995ea437697cdf50640786122e2',1,'2016-06-10 02:57:15','2016-08-30 19:31:21','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(577,'J-313976261','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-10 02:57:15','2016-06-10 02:57:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(578,'J-401282814','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-10 02:57:15','2016-06-10 02:57:15','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(585,'V-22314537','aab9b653d91782d898307d10b367a4b06608e30a51c4930b15765e8d4f16ed57',1,'2016-06-11 16:51:46','2016-06-11 16:51:46','oscarjimenez@gmail.com',NULL),
(586,'V-20704086','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-13 21:08:22','2016-06-13 21:08:23','tugruero@gmail.com',NULL),
(589,'V-11584093','3fae8d7f60f2b35dd47c81f6df569adb388c80727e86aa5b773b77a6a9ae0018',1,'2016-06-15 15:53:39','2016-06-15 15:55:13','',NULL),
(591,'V-17960866','8c244b370747c1930a4e0967254778ddbb69f6a409e62beebe5f92191a09a3a1',1,'2016-06-18 18:24:03','2016-09-10 16:30:27','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(592,'V-12630975','a35fb12e82b2c58234015da24be53b8b773d8e6872fddf3d018334e1beb94b6f',1,'2016-06-18 18:24:03','2016-08-02 05:08:24','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(593,'V-14046570','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-18 18:24:03','2016-08-11 13:29:34','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(594,'V-11077085','01c6fc6a16c11a5f87ea2ea57fef50073611c565a86957e5d65cc05bcc096ad2',1,'2016-06-18 18:24:03','2016-07-25 13:46:47','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(595,'V-16923468','709464b5aca46518fe907d6a7a270b36c9ebdce76dc7bdb6fa074c418d2bc9c7',1,'2016-06-18 18:24:03','2016-10-03 14:38:39','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(596,'V-112633656','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-18 18:24:03','2016-06-18 18:24:03','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(597,'V-11163866','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-18 18:24:03','2016-06-18 18:24:03','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(598,'V-24151130','c6dff8cb2f04fe382b70019151693cb92bdfa333b78838f9b8ac5123a3d1b7db',1,'2016-06-18 18:24:03','2016-07-26 07:52:53','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(599,'V-17276293','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-18 18:24:03','2016-06-18 18:24:03','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(600,'V-208597996','35e34d643457de6d05b1bacdf1e6bdfe7b61f10928e7de7da7d5b74a0a50e870',1,'2016-06-18 18:24:03','2016-06-25 23:00:29','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(601,'V-17860283','8c25b6e3f20284c316abd9c46bec730974eb67d270a5100d75dd869862019205',1,'2016-06-18 18:24:03','2016-08-15 03:15:33','mail_prueba@tugruero.com','mail_prueba@tugruero.com'),
(606,'V-16983295','35d485d1327817a4e55e7c38f163e70d0f156797206193a6f97e76afc6fb73d1',1,'2016-06-20 16:30:48','2016-08-02 05:16:15','',NULL),
(607,'V-11200507','8ce00dc83a9c933ffcc5558b0a734200c3eb25de8ee8ef39af4e8b224cd278ef',1,'2016-06-20 17:09:51','2016-08-02 05:10:23','',NULL),
(609,'V-17060670','13c38c0b09efd367ae5a5df333a3c185f868486f2899ddd86c376fb1250f8f6e',1,'2016-06-23 18:33:59','2016-08-21 03:10:16','ronaldtaz1982@hotmail.com',NULL),
(610,'V-20859799','35e34d643457de6d05b1bacdf1e6bdfe7b61f10928e7de7da7d5b74a0a50e870',1,'2016-06-25 22:47:16','2016-06-26 00:01:50','Andres_cameron111@hotmail.com',NULL),
(613,'V-26387942','35e34d643457de6d05b1bacdf1e6bdfe7b61f10928e7de7da7d5b74a0a50e870',1,'2016-06-26 15:28:49','2016-06-26 15:28:49','Andreacameron1111@gmail.com',NULL),
(614,'V-18020590','18bfddf1020067bbd33fad652bc8f1a59b2427ff8c7ebfd62bbfef6c2dddff49',1,'2016-06-26 16:58:17','2016-07-17 16:11:06','deandrademarcos@gmail.com','deandrademarcos@gmail.com'),
(615,'V-12633656','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-27 12:04:57','2016-06-27 12:05:00','Jhin885@Gmail.com',NULL),
(617,'V-25123456','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-06-28 15:39:48','2016-06-28 15:39:48','josealejandro@gmail.com',NULL),
(618,'V-12019003','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-30 05:55:45','2016-06-30 05:55:45','prueba@mail.com','prueba@mail.com'),
(619,'V-18396187','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-30 05:55:45','2016-08-21 09:44:05','prueba@mail.com','prueba@mail.com'),
(620,'J-400807638','50210a776614fd42ab0f76df6775b6917113e821af13b9fc5c3db9a95daea204',1,'2016-06-30 05:55:45','2016-10-04 10:11:37','prueba@mail.com','prueba@mail.com'),
(621,'V-15589528','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-30 05:55:45','2016-06-30 05:55:45','prueba@mail.com','prueba@mail.com'),
(623,'V-13591974','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-06-30 05:55:45','2016-08-27 04:51:36','prueba@mail.com','prueba@mail.com'),
(624,'V-18579072','c359543a20088a8b3eaa52e0c7eb601aed58be65375c1d7f5d9cd814cd32ad05',1,'2016-06-30 05:55:45','2016-07-12 07:21:21','prueba@mail.com','prueba@mail.com'),
(625,'J-405934620','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-30 05:55:45','2016-06-30 05:55:45','prueba@mail.com','prueba@mail.com'),
(626,'J-299300616','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-06-30 05:55:45','2016-06-30 05:55:45','prueba@mail.com','prueba@mail.com'),
(627,'J-405317809','3119d749bec51795e93bfa5246653798a7d437454553402f417c97a44df66e5f',1,'2016-06-30 05:55:45','2016-09-30 11:52:13','prueba@mail.com','prueba@mail.com'),
(628,'V-22345678','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-07-06 13:05:37','2016-07-06 13:05:37','josealejandrogarcia@gmail.com',NULL),
(635,'V-18740123','75be65d37403dd6855b6cab92fdfe4bb5762d0460d15394ed27f09f82f8e04b5',1,'2016-07-10 23:27:50','2016-07-10 23:27:50','',NULL),
(638,'V-7093046','2a9c3c838a134b765ebdf70fddd4065ad268c676c27afee61115416a598977dd',1,'2016-07-11 00:01:21','2016-07-11 20:09:25','',NULL),
(646,'V-21214415','a1c2d05656b9041ce76a61d23aef096635931217a5cf8b8dd4249cc067ee3ac7',1,'2016-07-11 06:36:31','2016-07-11 21:02:08','MSAMPAOLI737@GMAIL.COM',NULL),
(647,'V-12924984','c520935c0b47be3ff7ebf868cecd2e5fc562056bc5f7956b0cca4ac54107d71a',1,'2016-07-11 07:46:07','2016-07-22 01:43:37','DAVID-URBINA20@HOTMAIL.ES',NULL),
(648,'V-19524469','5dc7d272b5532d4f585b71eed99816eb0864109b242aefc44c0e6b3169a77c46',1,'2016-07-11 17:12:02','2016-07-11 17:12:02','G_PIQUERO1-4M@HOTMAIL.COM',NULL),
(649,'V-13716708','1274fae36c799b1140825538115a2da9cd8cf816a3983316799cdc396707cf0c',1,'2016-07-11 18:41:37','2016-07-11 18:41:37','',NULL),
(650,'V-9394180','2fb14b72c9b70266f78a502c2ef1f888e9a4d1565f57cfda6ae8ccd0047fa522',1,'2016-07-11 20:18:45','2016-07-11 20:18:45','',NULL),
(651,'V-20513088','5dc7d272b5532d4f585b71eed99816eb0864109b242aefc44c0e6b3169a77c46',1,'2016-07-11 20:50:54','2016-07-11 20:51:11','ALEXAVILA.21@HOMAIL.COM',NULL),
(652,'V-7121729','6d94ac9f450fc035db68788976045522b2087b7cb795b706f13c716181e3ddca',1,'2016-07-11 21:23:16','2016-07-11 21:23:16','',NULL),
(653,'V-20193302','677746b2ee3fd8e6a0898e96a15cacc2daa9e9c783aaa1a3d252db8b0b563b79',1,'2016-07-11 21:27:06','2016-07-11 21:28:33','',NULL),
(654,'V-71217290','6d94ac9f450fc035db68788976045522b2087b7cb795b706f13c716181e3ddca',1,'2016-07-11 21:30:36','2016-07-11 21:31:55','',NULL),
(656,'J-401484484','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-13 17:33:58','2016-07-13 17:33:58','prueba@mail.com','prueba@mail.com'),
(657,'J-406867829','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-13 17:33:58','2016-07-13 17:33:58','prueba@mail.com','prueba@mail.com'),
(658,'V-12604030','d577db5e90fc343d14b8e9e16bd97e10cb7d06b4b8fc2ca77b0b399ee8d4d4d9',1,'2016-07-13 17:33:58','2016-08-25 03:12:03','prueba@mail.com','prueba@mail.com'),
(659,'V-12983332','c84f0cc684881915f463956d17250a1d00a55cdd5050ce5ed3f4bb690a40045a',1,'2016-07-13 17:33:58','2016-07-15 00:49:08','prueba@mail.com','prueba@mail.com'),
(660,'V-13068844','be4eb83fd89204fbb1c1ddb99ff7775e91044f99b8da699ce0c02c2e7be7a2ed',1,'2016-07-13 17:33:58','2016-07-15 06:58:17','prueba@mail.com','prueba@mail.com'),
(661,'V-13362065','25c92b8983d60355887a0583400d8e3bdae7ff1ba07b2bd45f1e9a97d33afc77',1,'2016-07-13 17:33:58','2016-07-15 04:58:59','prueba@mail.com','prueba@mail.com'),
(662,'V-14755001','9f9e41c65a0c7504d338c0105250824ff276ee2f77a69d3805845104c88ab0ef',1,'2016-07-13 17:33:58','2016-09-26 00:09:09','prueba@mail.com','prueba@mail.com'),
(663,'V-15026778','c7dde08c641243559e1f52e20fb47391fb60ef9c01365509e9a1201ef11a5532',1,'2016-07-13 17:33:58','2016-07-15 05:39:08','prueba@mail.com','prueba@mail.com'),
(664,'V-16242068','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-13 17:33:58','2016-07-13 17:33:58','prueba@mail.com','prueba@mail.com'),
(665,'V-16445385','cad965099be5fb3bc6a795d5067653f3b734c6d872daeb669db6fd421ed5c80a',1,'2016-07-13 17:33:58','2016-07-15 06:54:19','prueba@mail.com','prueba@mail.com'),
(666,'V-16895395','b5f2f2ddffa4acbc7a115db62e66d0d81e5acb648f1fd180db21ed054ae9592d',1,'2016-07-13 17:33:58','2016-07-15 06:04:33','prueba@mail.com','prueba@mail.com'),
(667,'V-17282723','c49b1a7993c439d9b137a56f6e14571d833644f9f4f70f0e7c85fd710354a399',1,'2016-07-13 17:33:58','2016-07-15 04:22:35','prueba@mail.com','prueba@mail.com'),
(668,'V-18671867','2f1223e9508a4ab284d9aca6d6fc249f89999346fcf1d72fcfb3c15e3e9160ca',1,'2016-07-13 17:33:58','2016-09-29 12:36:19','prueba@mail.com','prueba@mail.com'),
(669,'V-188679052','0f98b4d5cea09402f352189e7fc411d678fcac815f67be1f201598f3c7f28d26',1,'2016-07-13 17:33:58','2016-07-15 04:55:00','prueba@mail.com','prueba@mail.com'),
(670,'V-18997236','25febd676b51ae546cce59f003280ecadd4546fc19049834ee9314a76a44c420',1,'2016-07-13 17:33:58','2016-07-22 13:31:45','prueba@mail.com','prueba@mail.com'),
(671,'V-19108582','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-13 17:33:58','2016-07-13 17:33:58','prueba@mail.com','prueba@mail.com'),
(673,'V-19641247','ff7fc36530a4b5aeaf11ebc40b767d8b37255cf1269ee1aa2811084bc2262494',1,'2016-07-13 17:33:58','2016-07-15 05:46:50','prueba@mail.com','prueba@mail.com'),
(674,'V-22514947','9224bad05c7df15aa6deba13ff6e66172d0834604362ca34872d8e0d29d1768f',1,'2016-07-13 17:33:58','2016-07-15 05:51:06','prueba@mail.com','prueba@mail.com'),
(676,'V-8682944','f0e9b2aa528b1a7b8f5b298897db61a045bd8f93ba40faf609f24d65e6e8ba3d',1,'2016-07-13 17:33:58','2016-11-03 10:27:29','prueba@mail.com','prueba@mail.com'),
(686,'V-9117707','0d0d7fa2458cf3ef1ac60a6f92a81eea60ca1af96be2b41138f10a18fd747f8a',1,'2016-07-15 01:01:05','2016-07-22 17:27:15','kcortezc@hotmail.com',NULL),
(687,'V-14991108','a93868dc42fe00909ff70932efc48b57fa952b35b47051935a64421c4ab50fa8',1,'2016-07-15 01:22:01','2016-07-15 01:22:01','',NULL),
(689,'V-16784902','197776d8ee0167d6e6970314fcb2857fa2b790329779703cbf5df1fdf7187228',1,'2016-07-15 05:16:06','2016-09-26 00:13:43','',NULL),
(690,'V-13349928','38f8868e2e137e07ffb68f4d8707d6e285c647dd2e3f7fbb6e21da1e304c342c',1,'2016-07-15 05:25:50','2016-07-15 05:25:50','JIMMYCALN235@GMAIL.COM',NULL),
(691,'V-14041731','480ca430d2a6ff27ec52c64a3a9219f3b355f71096a1ba6e179feb7ad06200d6',1,'2016-07-15 05:27:34','2016-07-15 05:27:34','ANDERSONLOPEZ.VE@GMAIL.COM',NULL),
(692,'V-13898753','6806391d9a5e42a1badf74ef84203dca61bd75ff4220c894de360f30fe3d677e',1,'2016-07-15 06:00:11','2016-07-15 06:00:11','remofreddyb@hotmail.com',NULL),
(693,'V-24648002','f0e9b2aa528b1a7b8f5b298897db61a045bd8f93ba40faf609f24d65e6e8ba3d',1,'2016-07-15 06:15:28','2016-07-15 06:15:28','gruasd.bellofp2013@hotmail.com',NULL),
(694,'V-1802','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-17 16:13:13','2016-07-17 16:13:57','deandrademarcos@j.com2',NULL),
(695,'V-7426864','0f0ecbf36ef0ab27899de89309b98bb8216471ca87ad285dd7ddadfad56b6bc9',1,'2016-07-20 04:07:58','2016-07-20 04:07:58','',NULL),
(696,'V-20016413','0dda1373bde3bf7e01e2ebf0e0901dd5811e39b7b4f428f4ef850d0677e7f027',1,'2016-07-20 04:30:18','2016-10-19 18:39:56','',NULL),
(697,'V-15817552','8c25b6e3f20284c316abd9c46bec730974eb67d270a5100d75dd869862019205',1,'2016-07-20 04:46:28','2016-07-20 04:46:28','DAAP_1985@HOTMAIL.COM',NULL),
(698,'V-4342518','7fa06294b4dbd95e36a59561b7d2035aab04caff37e070c973e3ed8a4714d0c9',1,'2016-07-20 05:10:01','2016-07-20 05:10:01','SALVADORENCINOZA56@HOTMAIL.COM',NULL),
(699,'V-18431746','9e685b4d6cc392ea864ce3af9dc88c5d23e98372408f2c965f9e59ede53a8c03',1,'2016-07-20 05:14:53','2016-07-20 05:14:53','',NULL),
(700,'V-20470070','b07859bd1fadb2d196898a25fcab720a93a2ec36739396b448632c29934abd15',1,'2016-07-20 06:22:35','2016-07-20 06:22:35','',NULL),
(701,'V-25541675','c2ab175ba03e6610145df8e60966ac14da68d77d6619df67aaf615358146cb78',1,'2016-07-20 06:49:54','2016-07-20 06:49:54','NEO.RASTA17@GMAIL.COM',NULL),
(702,'V-9614853','1626fc47a2ecaaf8231cffa83098113e8e9ca888a2c720ebc62280dfa048f0e7',1,'2016-07-20 07:41:02','2016-07-20 07:41:02','',NULL),
(703,'V-17574288','dab496b2b0262a85cbabfd385e848ad10e5637b2a753336c7e8d2261f0674b72',1,'2016-07-20 07:48:06','2016-07-20 07:48:06','',NULL),
(704,'V-18103635','386d02683debd6c93f71f79b8c216818c619d4b903db37f6087dffa5aadc57f5',1,'2016-07-20 08:20:35','2016-07-20 08:20:35','',NULL),
(705,'V-9462673','04eddcd701aa74af75509da061493b00bc8959bcb1b5f394111831761e98e8c7',1,'2016-07-21 02:10:11','2016-11-25 13:50:46','boris68@hotmail.com','boris68@hotmail.com'),
(706,'V-16750054','f1029cf46bb06b32bdfc1dd6271e9793f7b1a723115aeb48fd9d8ccb33ef471f',1,'2016-07-21 04:18:43','2016-07-21 04:18:43','SAMUELMEDINAR@HOTMAIL.COM',NULL),
(707,'V-16750055','f63d65318177e006474a700ec11f5490517b592fe2c727214b2a86122676948f',1,'2016-07-21 04:22:51','2016-07-21 04:22:51','',NULL),
(708,'V-16957296','963d4a8de12a88f492c570a4d6e51b1ccf30f6c912359ecd36855fc8b94b66c1',1,'2016-07-24 04:39:03','2016-07-24 04:39:03','eduar_rodriguez1985@hotmail.com',NULL),
(709,'V-167416817','6e14ea0ad4c4bb08d3ae4e7f3bcbb3be613e8793fca108afc07fb6da62a8731e',1,'2016-07-26 03:44:48','2016-07-26 07:46:53','SERVIGRUASELMOCHO@YAHOO.COM',NULL),
(710,'V-8031820','4b36a4c10f514a33883e3fbfadc3b716907a8baa4bbbaede52f1af3007224e13',1,'2016-07-26 04:04:53','2016-07-26 04:04:53','servigruas-merida@hotmail.com',NULL),
(711,'V-17523932','4b36a4c10f514a33883e3fbfadc3b716907a8baa4bbbaede52f1af3007224e13',1,'2016-07-26 04:10:25','2016-07-26 04:10:25','',NULL),
(712,'V-23721832','84c54753f85e1a7751e3939a50d6f5c920a62a3419ea05eeb0cbf4dff3a2e57f',1,'2016-07-26 04:42:13','2016-07-26 04:42:13','SAN_MIGEL_ARCANGEL24@HOTMAIL.COM',NULL),
(713,'V-20217833','7a70c6195f7a013fb0c2a5039aab3c08ea4c9a12823ec2c2c50c51f42208f1d0',1,'2016-07-26 05:39:03','2016-07-26 05:39:03','HECTOENRIQ_16@HOTMAIL.COM',NULL),
(714,'V-167428181','136613e79f16a5fd366f3b3a1f1726bc3ff4a37b5ea53b931be93153bc580a35',1,'2016-07-26 06:20:38','2016-07-26 10:21:06','FLORACEROS@GMAIL.COM',NULL),
(715,'V-15754429','f92b0b141972e906df9e4098d2a538f0fd87598e0c6e3265986984bf403860eb',1,'2016-07-26 06:51:09','2016-07-26 06:51:09','GRUASMER@HOTMAIL.COM',NULL),
(716,'V-16933248','f92b0b141972e906df9e4098d2a538f0fd87598e0c6e3265986984bf403860eb',1,'2016-07-26 06:53:31','2016-07-26 06:53:31','',NULL),
(717,'V-15920850','f92b0b141972e906df9e4098d2a538f0fd87598e0c6e3265986984bf403860eb',1,'2016-07-26 07:00:12','2016-07-26 07:00:12','',NULL),
(718,'V-16445185','f92b0b141972e906df9e4098d2a538f0fd87598e0c6e3265986984bf403860eb',1,'2016-07-26 07:02:00','2016-07-26 07:02:00','',NULL),
(719,'V-16912004','f92b0b141972e906df9e4098d2a538f0fd87598e0c6e3265986984bf403860eb',0,'2016-07-26 07:06:21','2016-11-25 12:12:42','',NULL),
(720,'V-107107572','51eeed7251f3f56288ee554afaa1028b7fbc3daacc4a952be4ae8d18ddaf3320',1,'2016-07-26 08:08:12','2016-07-26 12:08:37','FREDDYSALASRO@GMAIL.COM',NULL),
(721,'V-213675020','7904791f9bb496a3354bf75641e45feb31e881a00cebcb2508e45bd942a6e430',1,'2016-07-26 08:15:12','2016-07-26 12:15:28','',NULL),
(722,'V-164440300','51eeed7251f3f56288ee554afaa1028b7fbc3daacc4a952be4ae8d18ddaf3320',1,'2016-07-26 08:17:55','2016-07-26 12:18:26','',NULL),
(724,'V-15170724','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-07-26 16:32:32','2016-08-14 19:40:28','',NULL),
(726,'V-13229158','245a5b191984e38a351b650e722fea04305184e5',1,'2016-07-30 06:06:19','2016-07-30 06:06:19','',NULL),
(727,'V-15156014','62c6ab24e906bac2b2da1c4aabc19b39b29167cb5de0f8ab7af2fa4bdd9d9d7e',1,'2016-07-31 16:25:31','2016-10-01 11:02:31','Richard_orlandouribe@hotmail.com','Richard_orlandouribe@hotmail.com'),
(728,'J-307991194','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-01 07:52:26','0000-00-00 00:00:00','',NULL),
(729,'V-73890060','79c775b9a1972c2dbc00956cb993b0c4cd0c9a63373812d69846f0ebec7b453e',1,'2016-08-01 07:52:27','2016-11-04 15:15:33','',NULL),
(730,'V-14000420','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-01 07:52:30','0000-00-00 00:00:00','',NULL),
(731,'V-2397279','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-01 07:52:32','0000-00-00 00:00:00','',NULL),
(733,'','',1,'2016-08-01 07:52:36','0000-00-00 00:00:00','',NULL),
(734,'V-56859256','b00cdd86d23417c27578cd2e493ea6f8d76a94b369254dfe09c115383d9d4d17',1,'2016-08-02 03:18:22','2016-08-02 03:18:22','EDEN7AMDE@HOTMAIL.COM',NULL),
(735,'V-17502082','108761a7fd05b4d0d2c707ce1604176c51c26daae7a706304a29dee2d7f09ee7',1,'2016-08-02 03:24:46','2016-08-02 03:33:21','BARRETOG_14@HOTMAIL.COM',NULL),
(736,'V-25169942','de5f43d2bb9731b19f1c9608c2d93a7aa0c62dbf43bbe6becf01c8ea607848ce',1,'2016-08-02 04:58:31','2016-08-02 04:58:31','orlando1567@hotmail.com',NULL),
(737,'V-23130308','ca9b845c4ae17b97a819d1e34eaa29165ea338222f9a2c95a9ee7e004620ffa7',1,'2016-08-02 05:13:06','2016-08-02 05:13:06','',NULL),
(738,'V-17369618','3158048945ea312117e860c5cfc7e06e0573b9961feeb51bce10540c20b9efa1',1,'2016-08-02 05:34:09','2016-08-02 05:34:09','',NULL),
(739,'V-19135145','bd164135f647868251ac2d165a6dbe91312291c6f37c0b818f78dbd303182e10',1,'2016-08-02 05:36:12','2016-08-02 05:36:12','',NULL),
(740,'V-11370751','d3b63b74645d73789357774484cec186211b99f5d9be208c7bd2e3653a833919',1,'2016-08-02 05:41:38','2016-08-02 05:41:38','',NULL),
(741,'V-18976965','6c70094a09ec2529efa4b9b4b79a101bb2277f7abc39c249defde3a786a3d588',1,'2016-08-02 05:46:24','2016-08-02 05:46:24','',NULL),
(742,'V-19977440','1e84129d20dc6e8ec3d03566cd304acf0dc8c9eb4925750ffef823a3f8cd1c39',1,'2016-08-02 05:51:51','2016-08-02 05:51:51','',NULL),
(743,'V-13587412','8bbd68c6a5c4f3aad8e53dc38edd4e63ec5dbe02867dccac1b508d813c21e604',1,'2016-08-02 05:55:48','2016-08-02 05:55:48','',NULL),
(744,'V-9465591','5b9bbaf2de8994b7e8a1522fa2eadf39a1e5f6099b0b545d47eb156c08a01e49',1,'2016-08-02 05:57:52','2016-08-02 05:57:52','',NULL),
(745,'V-24349094','b4e2fde10292461cf64b347681a4c722bf956e812b61e099e490fc8b576306aa',1,'2016-08-02 06:00:08','2016-08-02 06:00:22','',NULL),
(746,'V-10160044','b845de07fdca84b1b5fd45b7d2375e34f9c153ea883df180b53d42843afafe13',1,'2016-08-02 06:33:23','2016-08-02 06:33:23','',NULL),
(747,'V-26352275','5db45b81f94d65ab4ee07c731714b36524478e68d81014490e1f1fab5de473f8',1,'2016-08-02 06:40:03','2016-08-02 06:40:03','ENDERBARAJAS@GMAIL.COM',NULL),
(748,'V-22676944','f68423f2bc2f42d2123aff8909380763f4638a8c69495a60edc012a6a6100e2e',1,'2016-08-02 06:42:47','2016-08-31 17:57:24','DANIELBARAJAS5@HOTMAIL.COM',NULL),
(750,'V-19106412','ecacf4dcb8c15d12b80522abe766f882c8c5a4ea000c1a3174b57d1059c78d7c',1,'2016-08-06 21:19:04','2016-08-06 21:19:04','arrieche-06_enderson@hotmail.com',NULL),
(751,'V-8001876','79c775b9a1972c2dbc00956cb993b0c4cd0c9a63373812d69846f0ebec7b453e',1,'2016-08-06 22:31:03','2016-08-06 22:31:03','serviciodegruasadrian18@hotmail.com',NULL),
(753,'V-4544455','1809e3b521e68d5a2691f1f2eeec3e7b7dcf1bacfcc3833b8e2ce02ed0a24fe9',1,'2016-08-09 22:33:16','2016-08-09 22:33:16','',NULL),
(754,'V-12432297','02f169fee54f1b6b0bc1304a5a65641e4b497deff35437ff3d4626d4a41e4a3b',1,'2016-08-13 21:04:54','2016-08-13 21:05:03','',NULL),
(755,'V-18484089','197c99fcc18831ad62d5ad46911e5b7a7cc68be696b6fc999eca9b3915ba5dc6',1,'2016-08-13 21:27:15','2016-08-13 21:27:15','',NULL),
(756,'V-16643796','240c43cb96cdaefd3531add5d755fd5c59db2a64f239072ad638825a4b2b03fc',1,'2016-08-14 20:47:25','2016-08-14 20:47:25','',NULL),
(757,'V-19887206','0083f43dd8ddd384a741143d687f245ae965cdc01479cd09491387b6f4484718',1,'2016-08-15 04:59:37','2016-08-15 04:59:37','joan5626@hotmail.com',NULL),
(758,'V-14879928','0083f43dd8ddd384a741143d687f245ae965cdc01479cd09491387b6f4484718',1,'2016-08-15 05:13:29','2016-08-15 05:13:29','joantimaurejcar@gmail.com',NULL),
(759,'V-9604610','79c775b9a1972c2dbc00956cb993b0c4cd0c9a63373812d69846f0ebec7b453e',1,'2016-08-16 14:59:18','2016-08-16 14:59:18','',NULL),
(760,'V-151086019','4d7040ce5eac93ed55ee0cb69d87544de554bba5861f36e427745fb316040cfc',1,'2016-08-17 15:28:22','2016-08-17 19:29:39','X.O.H.GARCES@GMAIL.COM',NULL),
(761,'V-14417889','bcbd77b0d94304c6f2178c2735ab50eba6574d8997ff060ee89e5fb5bdc2c508',1,'2016-08-18 18:21:40','2016-08-18 18:21:55','',NULL),
(762,'V-10405331','acc445a0ce75394c754b04e311ff820afa1fec58152eb6c2c2f65cd57a3215c8',1,'2016-08-21 09:01:44','2016-09-09 09:23:00','no@posee.com',NULL),
(763,'V-13208437','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-08-21 09:14:02','2016-08-21 09:14:02','GRUAS_ARISTOTELES@HOTMAIL.COM',NULL),
(764,'V-29758228','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-08-21 09:17:51','2016-08-21 09:17:51','',NULL),
(765,'V-14682124','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-08-21 09:27:11','2016-08-21 09:27:11','RICARDO_RETRAMAR@HOTMAIL.COM',NULL),
(766,'V-26638009','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-08-21 09:38:40','2016-08-21 09:38:40','UNALDOJOSEMA@GMAIL.COM',NULL),
(768,'V-20465795','eadda10f6b365877ce9a58ec064b3864e87c6fabc5fa0a1e4281eb39d80c3550',1,'2016-08-25 03:50:30','2016-08-25 03:50:30','',NULL),
(769,'V-10557448','6ac5011e0f04151c64b0d28c1e0ea5e2b878618424e703a2c5fda9695ef13881',1,'2016-08-26 14:35:58','2016-08-26 14:35:58','',NULL),
(770,'V-3230066','2e7c278f064f4b9e88fee363ba3f3a78a404b1f9a249bbcbaffe0118c7bbd814',1,'2016-08-26 22:03:17','2016-08-26 22:03:17','gruas_los_angeles@hotmail.com',NULL),
(771,'V-14062752','61ff188a535c5b0a15ef5e6ad905f5fe709a7907112d53f1bf53a2fd327705cf',1,'2016-08-26 22:07:31','2016-08-26 22:07:31','',NULL),
(772,'V-16748987','0805c2e08cbd702b9595b87b2846dc7e5477b47c6a656570dfef14e639620581',1,'2016-08-26 22:28:29','2016-08-26 22:28:29','',NULL),
(773,'V-13971247','1ed50e881e0b2d5987fbea9f96eeeab3bdf39bf9633974a0c7ca2bcdb0417111',1,'2016-08-27 00:49:42','2016-08-27 00:49:42','rosmer_rosendo21@hotmail.com','rosmer_rosendo21@hotmail.com'),
(774,'V-19376884','3eefa07ae681403d9c54cf35434c3d23e514a97afbad8c5ba0b9a24bc4d79410',1,'2016-08-28 08:34:16','2016-09-16 15:23:18','',NULL),
(775,'V-22657749','5a9622e79c16e75361ba8a22b661e0dafd590c0aa5b3c075bfac44257c8296bc',1,'2016-08-28 08:53:55','2016-08-28 08:53:55','VALEGRUASVALE@YAHOO.COM',NULL),
(776,'V-13163425','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-08-30 03:30:33','2016-08-30 03:30:33','PEDROELMOTA@HOTMAIL.COM',NULL),
(777,'V-11420633','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-08-30 03:32:22','2016-08-30 03:32:22','',NULL),
(778,'V-17566190','9bce7d209242c3148bae1a79ef1005ea73eaa52cf10ffbc4134ebb31c4b06d80',1,'2016-08-30 16:43:08','2016-09-07 03:49:03','SMTMARASU@GMAIL.COM',NULL),
(779,'J-078190929','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(780,'J-090032975','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(781,'J-117901277','c2422ddf4ff973a69664c8a43957b4ca7e5ae57be6d883af04f9df309f9fe082',1,'2016-08-31 17:15:47','2016-09-05 04:29:04','prueba@mail.com','prueba@mail.com'),
(782,'J-146980976','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(783,'J-147073611','af978db4d1d5acb41732ff9494d4da42304006a437b33b493e4e0e108d2ced25',1,'2016-08-31 17:15:47','2016-09-03 10:45:04','prueba@mail.com','prueba@mail.com'),
(784,'J-296209073','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(785,'J-296979014','2e3a3067c73f4ef5214905cbcfba8bebe5b6917473093d9147a7f25b47d281be',1,'2016-08-31 17:15:47','2016-09-05 02:33:10','prueba@mail.com','prueba@mail.com'),
(787,'J-299580767','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(788,'J-306047662','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-09-29 14:40:59','prueba@mail.com','prueba@mail.com'),
(789,'J-401058868','62c6ab24e906bac2b2da1c4aabc19b39b29167cb5de0f8ab7af2fa4bdd9d9d7e',1,'2016-08-31 17:15:47','2016-09-09 08:46:11','prueba@mail.com','prueba@mail.com'),
(790,'J-403995613','81d19ddeffd6eff40f38100b8a7fc3957db240b546a252ca49a759061e377933',1,'2016-08-31 17:15:47','2016-09-07 06:05:44','prueba@mail.com','prueba@mail.com'),
(791,'J-406267465','7752aed5b756bd3e9c4c1adbd9cdf20734274a1bb18e4a6836e4e165162d9b84',1,'2016-08-31 17:15:47','2016-09-05 03:56:35','prueba@mail.com','prueba@mail.com'),
(792,'V-041110984','4fcbcb0be3c3951bee6ed9739efc002e395cbabd2a2e2b47cbb7a19ef168433b',1,'2016-08-31 17:15:47','2016-09-03 06:55:09','prueba@mail.com','prueba@mail.com'),
(793,'V-059355836','7ba9419a7635b1bc45e645784712942a1be948ea0d0f3304a71d247e4a2322fd',1,'2016-08-31 17:15:47','2016-09-04 06:06:00','prueba@mail.com','prueba@mail.com'),
(794,'V-070843257','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(795,'V-8024178','95958bacbe7cc778cb7361c1453ff77ac1b1b7cca5d099ee19977d6a2cd06292',1,'2016-08-31 17:15:47','2016-09-06 06:50:03','prueba@mail.com','prueba@mail.com'),
(796,'V-092073455','2dfb7898960405cace23ceaf0367786f6093827ad0c3e526450908fae99b35d1',1,'2016-08-31 17:15:47','2016-09-03 10:16:57','prueba@mail.com','prueba@mail.com'),
(797,'V-10109134','1bde08635b6564de8a40d482cc19e661013e42b53a5fe5b93e2181c1866bf9fb',1,'2016-08-31 17:15:47','2016-09-06 03:04:04','prueba@mail.com','prueba@mail.com'),
(798,'V-10109808','cedfa2364c8a0f031e1953335819d48acde59f3e8d315f4ef8b730c6f645b06b',1,'2016-08-31 17:15:47','2016-09-06 03:08:01','prueba@mail.com','prueba@mail.com'),
(799,'V-10146995','7cbc1f697e71f94e5e4871b5d4e89420f2823dc219d95a58b79482c206f5cbb1',1,'2016-08-31 17:15:47','2016-10-06 13:38:53','prueba@mail.com','prueba@mail.com'),
(800,'V-10147237','b0866e80963f03028366621be34a29392783c3e20ba97239effb79402ecd21e5',1,'2016-08-31 17:15:47','2016-09-03 09:34:29','prueba@mail.com','prueba@mail.com'),
(801,'V-101685868','a0622da062e036a76f4503c3497b5e875c197f46e1c6a127f65a60c3fcb3e221',1,'2016-08-31 17:15:47','2016-09-03 10:04:19','prueba@mail.com','prueba@mail.com'),
(802,'V-10638194','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(803,'V-11717161','937dbdd0b5b0a4dcd44c7e91b48a096b28ecf33c1334eccf42f3f65917323963',1,'2016-08-31 17:15:47','2016-09-05 05:30:45','prueba@mail.com','prueba@mail.com'),
(804,'V-11769640','7ce6b8d89ec96d51d17e3fe396d55ca1c2690fb5f108cd7ce913d886221e8bb3',1,'2016-08-31 17:15:47','2016-09-07 06:14:29','prueba@mail.com','prueba@mail.com'),
(805,'V-122054744','fc613b4dfd6736a7bd268c8a0e74ed0d1c04a959f59dd74ef2874983fd443fc9',1,'2016-08-31 17:15:47','2016-09-05 05:17:46','prueba@mail.com','prueba@mail.com'),
(806,'V-12352142','80e6d6a17d4df93361a5efb35afbfb57721897939513fff37b328b2749dbb7e8',1,'2016-08-31 17:15:47','2016-11-02 14:41:47','prueba@mail.com','prueba@mail.com'),
(807,'V-12790216','f4cc740d8b1526d865b27adb5d592cde56b3a74dde299e765314b7777f3f3ea9',1,'2016-08-31 17:15:47','2016-09-07 05:48:29','prueba@mail.com','prueba@mail.com'),
(808,'V-128001545','b055c448397bcacb2f20616856d1b3904a576e4fabea58676d28332391b2d85b',1,'2016-08-31 17:15:47','2016-09-04 07:38:03','prueba@mail.com','prueba@mail.com'),
(809,'V-12933771','bac30a060a0efdcf255c7a778aa457fb77e5f252a8ed95b132aef73ffb27b2d3',1,'2016-08-31 17:15:47','2016-09-05 04:20:55','prueba@mail.com','prueba@mail.com'),
(810,'V-130418380','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(811,'V-131482392','9cc06d62526e0288d54087ebec9d1dbcb9c4d6affbaef2e2c51ee23ad261de62',1,'2016-08-31 17:15:47','2016-09-03 03:32:10','prueba@mail.com','prueba@mail.com'),
(812,'V-13304059','26c4c9e19307f8d1a50f4002d6e929c38961a1c1ad11431eba521d4abdf69fcf',1,'2016-08-31 17:15:47','2016-09-05 05:51:38','prueba@mail.com','prueba@mail.com'),
(813,'V-136441392','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(814,'V-13803418','38d1cd6c7cbcf6164018f0a6acf9f97d1a3697b8c5461ffcd3b9ca7c0b6819a6',1,'2016-08-31 17:15:47','2016-09-06 02:48:03','prueba@mail.com','prueba@mail.com'),
(815,'V-13803503','cf7c9cab9f8bd06e203fa4b8401bc158a9161e59fa0bdb0f5ccf5e0d3b9a2acf',1,'2016-08-31 17:15:47','2016-09-04 06:55:37','prueba@mail.com','prueba@mail.com'),
(816,'V-13804687','91cf5b7f3b019bcab3c1501684e6f35905dd15b14a512eade33b1e15d5c84192',1,'2016-08-31 17:15:47','2016-09-04 07:03:50','prueba@mail.com','prueba@mail.com'),
(817,'V-13824867','92cd2391bf6b2e82446fea65a844152c2afc8e04826d0a430c79e1185500994a',1,'2016-08-31 17:15:47','2016-09-06 02:59:24','prueba@mail.com','prueba@mail.com'),
(818,'V-140233532','2dc9983e5777ae3617cf6103357b7e0990ee77bb5590404bac7cdd0e65ed080d',1,'2016-08-31 17:15:47','2016-09-03 09:40:43','prueba@mail.com','prueba@mail.com'),
(819,'V-14172361','3bbf5c9d6a235e56eb3a1f5ce9b6d6cdf52cce969f623ee42340b1b310e67f84',1,'2016-08-31 17:15:47','2016-09-05 05:11:20','prueba@mail.com','prueba@mail.com'),
(820,'V-14268154','cf7c9cab9f8bd06e203fa4b8401bc158a9161e59fa0bdb0f5ccf5e0d3b9a2acf',1,'2016-08-31 17:15:47','2016-09-04 06:59:33','prueba@mail.com','prueba@mail.com'),
(821,'V-14292101','2bf5af2e2ea01a431a3a89a4c47903394bb421fbb4a93b793a3d7a48695e359a',1,'2016-08-31 17:15:47','2016-09-05 04:07:06','prueba@mail.com','prueba@mail.com'),
(822,'V-14361524','ad9cc9d6821ec0e5fdbea05b29bb9f5bf471020663b18fdf76d9d888c2522843',1,'2016-08-31 17:15:47','2016-09-03 06:38:18','prueba@mail.com','prueba@mail.com'),
(823,'V-147000207','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(824,'V-14979684','9a84ae968c4c85c507b66000b6eae58cb3a9640183ffc9db592ec973fd6fc8b5',1,'2016-08-31 17:15:47','2016-09-05 04:37:04','prueba@mail.com','prueba@mail.com'),
(825,'V-155359681','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(826,'V-15672544','8318bdfbeae19ecd8dba44e89d35abd8ff5d2b4e298f5c57a00230a79a39e5af',1,'2016-08-31 17:15:47','2016-09-05 05:46:08','prueba@mail.com','prueba@mail.com'),
(827,'V-15729387','32e0c6ebd97bb4a2b22bd2071e31783636fa2cf842a168326a41f340c3cb4fac',1,'2016-08-31 17:15:47','2016-09-05 03:36:41','prueba@mail.com','prueba@mail.com'),
(828,'V-15778873','f614a3b1ad4714ce8c1c2cf452e0e7c072f73910886695e60f62bebc44d29d4b',1,'2016-08-31 17:15:47','2016-09-05 08:57:37','prueba@mail.com','prueba@mail.com'),
(829,'V-15942602','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(830,'V-164386143','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-08-31 17:15:47','2016-09-07 06:01:18','prueba@mail.com','prueba@mail.com'),
(831,'V-16678159','a4b233d852eef94f5f0048b334eda2d853b7ae1a88830b66bf6c519ee8832738',1,'2016-08-31 17:15:47','2016-09-06 03:28:04','prueba@mail.com','prueba@mail.com'),
(832,'V-17034977','0a4f5f0f4ad07be8a82f1165bee58c4d5bf1303eb5afa1c15d99eb571c29c3d4',1,'2016-08-31 17:15:47','2016-09-05 03:53:17','prueba@mail.com','prueba@mail.com'),
(833,'V-17469479','341c4acae54cf7e10a02766da663911d463c8f7c9462ae828aa999f303442d83',1,'2016-08-31 17:15:47','2016-09-05 03:41:55','prueba@mail.com','prueba@mail.com'),
(834,'V-17522084','2ca2b9b1c688a96b9c20caa6f9b41b8d7a8af0a7dfbeb1f14356f9e98f13b04a',1,'2016-08-31 17:15:47','2016-09-06 03:21:30','prueba@mail.com','prueba@mail.com'),
(835,'V-17678831','1be34f4462f58d194eca104510513073db689daf3368dcaafaf04ed6cf36bcad',1,'2016-08-31 17:15:47','2016-09-03 03:41:54','prueba@mail.com','prueba@mail.com'),
(836,'V-17699424','e78b447548cb9fb3c63c808a6bf7a84fde122bccb654abbaf218b9c304df4c95',1,'2016-08-31 17:15:47','2016-09-05 04:31:47','prueba@mail.com','prueba@mail.com'),
(837,'V-17810494','f45d9f675bbafb416e1bbdef1f2c330099d5862064a293669195785c4bc3775e',1,'2016-08-31 17:15:47','2016-09-04 07:32:04','prueba@mail.com','prueba@mail.com'),
(838,'V-17853807','edd194eefb8e2265915f99952cef2ed5d22580a8f0589da93c01041a069601ca',1,'2016-08-31 17:15:47','2016-09-05 04:11:46','prueba@mail.com','prueba@mail.com'),
(839,'V-17862920','27b98092c62aebe912b93e94ff5ef4894d7e8aab068c050a92e7dba9f1ccb376',1,'2016-08-31 17:15:47','2016-09-02 20:22:10','prueba@mail.com','prueba@mail.com'),
(840,'V-18156895','3f1540bbb3a4b09364684866fb4bce6c8a68d967b49b35e9058ad1742fcb7a97',1,'2016-08-31 17:15:47','2016-09-07 05:55:21','prueba@mail.com','prueba@mail.com'),
(841,'V-18182911484','e8d50972e680245601cb66849f13d1ed6a093b1e094c9aba17dee4949802d496',1,'2016-08-31 17:15:47','2016-09-03 11:00:16','prueba@mail.com','prueba@mail.com'),
(842,'V-182070250','aed173541803c43f48801bcc717e6d4d7e5c71420cf9082b85d9f83965e783ef',1,'2016-08-31 17:15:47','2016-09-04 10:38:39','prueba@mail.com','prueba@mail.com'),
(843,'V-182876833','4a68e0bd8984a8b7f72e87f3905de31bf481499c809dde7da73c18a9d193ce83',1,'2016-08-31 17:15:47','2016-09-04 05:10:45','prueba@mail.com','prueba@mail.com'),
(844,'V-18498057','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-08-31 17:15:47','2016-09-05 03:43:34','prueba@mail.com','prueba@mail.com'),
(845,'V-18772811','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(846,'V-19515681','de9463815e6c69c5caa58cb21c8da8b140364bfd1a9edcc8704fedefc616d064',1,'2016-08-31 17:15:47','2016-09-05 08:34:58','prueba@mail.com','prueba@mail.com'),
(847,'V-19727121','9d62a7ccc705d1142ffa75e8dc65df8f8396879a0bc97a5760ca036aa5d6d6c5',1,'2016-08-31 17:15:47','2016-09-05 04:42:53','prueba@mail.com','prueba@mail.com'),
(848,'V-20101371','a51a3dd434901e64092f7c92cdb86e8e0be4d514d88b9bb5d16c506b618a2507',1,'2016-08-31 17:15:47','2016-09-05 05:43:07','prueba@mail.com','prueba@mail.com'),
(849,'V-20369600','fbb4601715d2bf39d75c43538005c7ed9ee14445909ed89ffa10952afd3c7a99',1,'2016-08-31 17:15:47','2016-09-04 04:55:23','prueba@mail.com','prueba@mail.com'),
(850,'V-20670473','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(851,'V-21502570','1646231d5925a6290400592f5269060ce850de89b0f53a88ea9752617fe3ac66',1,'2016-08-31 17:15:47','2016-09-07 05:58:07','prueba@mail.com','prueba@mail.com'),
(852,'V-221117430','9ad8a9a2f51c5621bd1432d8f6dc33bf0cfa91889033d0a6f4d3f020d7c01037',1,'2016-08-31 17:15:47','2016-09-07 06:34:12','prueba@mail.com','prueba@mail.com'),
(853,'V-234201600','ca43fe081db5292f0866ade2d537973097836d2756bd666916fba7556e6ff4b6',1,'2016-08-31 17:15:47','2016-09-03 09:56:06','prueba@mail.com','prueba@mail.com'),
(854,'V-5026390','242d93a0dbc8551951a2532006f19ef56223e5294bfdcfd2fc05484a1615f442',1,'2016-08-31 17:15:47','2016-09-03 06:47:26','prueba@mail.com','prueba@mail.com'),
(855,'V-5199291','5071957e41e35d7f91e421a4b06cf5ba4b8de636272824a1030a702ba0fe320a',1,'2016-08-31 17:15:47','2016-09-04 10:29:19','prueba@mail.com','prueba@mail.com'),
(856,'V-5463388','3c2ed94568fe3254f0ec23c2a4f2737b00bdbc75d8192e3e4bd2fbd5f2c4f1ad',1,'2016-08-31 17:15:47','2016-09-04 05:32:31','prueba@mail.com','prueba@mail.com'),
(857,'V-8046183','d1d9ada1ecef8b1a3265fc40a95e758022c8fd19449a0716aa26005817ec8be3',1,'2016-08-31 17:15:47','2016-09-04 06:41:16','prueba@mail.com','prueba@mail.com'),
(858,'V-8518420','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-08-31 17:15:47','2016-08-31 17:15:47','prueba@mail.com','prueba@mail.com'),
(859,'V-9028506','56f1d6e734cb9efd3ba54935ac853ad7753f7c0ea3f91bf09739fed60e622e3f',1,'2016-08-31 17:15:47','2016-09-04 06:35:55','prueba@mail.com','prueba@mail.com'),
(860,'V-9240891','fbbe89cc152332f660524678e6b6b8385a138844862e143bf897c9a6d5da7a32',1,'2016-08-31 17:15:47','2016-09-05 05:55:53','prueba@mail.com','prueba@mail.com'),
(861,'V-9390805','b678f30c93861b72e54a8757c92bc758e95120b20b79662c528e322a55d87935',1,'2016-08-31 17:15:47','2016-09-05 03:48:36','prueba@mail.com','prueba@mail.com'),
(906,'V-V-205714','db8baae7c79690ec27ebad8adcb166f2f4f0358cdedae9842966aebe25dab420',1,'2016-08-31 21:00:23','2016-08-31 21:00:23','',NULL),
(907,'V-19135093','41d1d5fd192b99e09320262ce86baa67e163c1cf278a93fdf2c87c6189bd2534',1,'2016-09-03 09:18:12','2016-09-03 09:18:12','servi_grua_losamigos@hotmail.com',NULL),
(908,'V-5651989','41d1d5fd192b99e09320262ce86baa67e163c1cf278a93fdf2c87c6189bd2534',1,'2016-09-03 09:22:00','2016-09-03 09:22:00','',NULL),
(909,'V-16779836','3722dd943dd816bbfcea7c4ef489fd64577bf4d52b1ead047a243d4099659bb2',1,'2016-09-03 09:28:30','2016-09-03 09:28:30','JON_ROMERO@HOTMAIL.COM',NULL),
(910,'V-1515601','62c6ab24e906bac2b2da1c4aabc19b39b29167cb5de0f8ab7af2fa4bdd9d9d7e',1,'2016-09-03 10:33:59','2016-09-09 08:47:20','',NULL),
(911,'V-5652366','af978db4d1d5acb41732ff9494d4da42304006a437b33b493e4e0e108d2ced25',1,'2016-09-03 10:49:48','2016-09-03 10:49:48','',NULL),
(912,'E-81372421','eab4c0932cea217a624fc361878373395ff3cc1dda4becb00b6b787f5e086a13',1,'2016-09-03 11:05:17','2016-09-06 09:28:46','',NULL),
(913,'V-18291148','e8d50972e680245601cb66849f13d1ed6a093b1e094c9aba17dee4949802d496',1,'2016-09-03 11:07:53','2016-09-03 12:26:50','',NULL),
(914,'V-20075521','636186e2e1299d9bf2edff7f1901bb0252790bd5b03437445983b2f56ffbb0d8',1,'2016-09-04 05:56:43','2016-09-04 05:56:43','CARLOS_MIGUEL_OTERO@HOTMAIL.COM',NULL),
(915,'V-16491105','38fcfb003bbdac7bee64b2c491dfcc20a10fe35bc562a27743be6beb440a000e',1,'2016-09-04 05:59:26','2016-09-04 05:59:26','JUANC.OTEROP04@GMAIL.COM',NULL),
(916,'V-24391428','7ba9419a7635b1bc45e645784712942a1be948ea0d0f3304a71d247e4a2322fd',1,'2016-09-04 06:01:30','2016-09-04 06:01:30','',NULL),
(917,'V-24391443','7ba9419a7635b1bc45e645784712942a1be948ea0d0f3304a71d247e4a2322fd',1,'2016-09-04 06:04:02','2016-09-04 06:04:02','',NULL),
(918,'V-22655605','d1d9ada1ecef8b1a3265fc40a95e758022c8fd19449a0716aa26005817ec8be3',1,'2016-09-04 06:43:43','2016-09-04 06:43:43','VICTORUZCATEGUI68@GMAIL.COM',NULL),
(919,'V-8032475','26859ec97aa6e54b13ef3d59203223c6319bf775c5d5cf75c636d5347ccdabc6',1,'2016-09-04 06:51:07','2016-09-04 06:51:07','TRANSPORTEITAMEL1@GMAIL.COM',NULL),
(920,'V-18523614','ae28be27b01d03acc800d91d24ec32956908495d253cc2b05b396bf97c25bf99',1,'2016-09-05 02:23:09','2016-09-05 02:23:09','josejyr@gmail.com',NULL),
(921,'V-11720879','ae28be27b01d03acc800d91d24ec32956908495d253cc2b05b396bf97c25bf99',1,'2016-09-05 02:28:44','2016-09-05 02:28:44','',NULL),
(922,'V-15031943','8c126b40d1e2e4966162e27006c6d13a0f501fd4317bf11677cbde4c398d4c58',1,'2016-09-05 02:32:25','2016-09-06 02:45:06','GERBANNYBARRIOS@HOTMAIL.COM',NULL),
(923,'V-6777752','0d4a8514bf9aa2d618a3535d70633ba5daeed1a87a26916691076f87acd0d4a2',1,'2016-09-05 02:35:59','2016-09-05 02:35:59','',NULL),
(924,'V-14278637','1d280ea4a9fafdb8245a979d2079cc3530becb61e3ae3ca78ae3cafc77bd026f',1,'2016-09-05 03:29:45','2016-09-05 03:29:45','gruastiopocho2@outlook.com',NULL),
(925,'V-18498058','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2016-09-05 03:47:29','2016-09-05 03:47:29','RONALDJOSEOSUNA@GMAIL.COM',NULL),
(926,'V-17728467','fc2999136c9113f04d202d568beb5f23a810b9df6ef8375d82e2c00eaba1fd02',1,'2016-09-05 04:01:08','2016-09-05 04:01:08','SERVIGRUASBCA@GMAIL.COM',NULL),
(927,'V-15961789','349c61b224addaf564ed63d8319b107d12947724003b44745c6154265c697adb',1,'2016-09-05 04:14:13','2016-09-05 04:14:13','JOSEHERNANMOGOLLON@GMAIL.COM',NULL),
(928,'V-157788732','f614a3b1ad4714ce8c1c2cf452e0e7c072f73910886695e60f62bebc44d29d4b',1,'2016-09-05 04:57:16','2016-09-05 08:57:41','naudyjohan@hotmail.com',NULL),
(929,'V-20962094','03913d275e8e4cacbf9f9214910c6478406c2069a9a028b76e4af807cb1beaf4',1,'2016-09-05 05:23:51','2016-09-05 05:23:51','',NULL),
(930,'V-20961971','476f4441c8bc12d7f7ac6dde8368c4bd282e9e7212c5e650422104a8903baa18',1,'2016-09-05 05:34:51','2016-09-05 05:34:51','escalanteaquiles@gmail.com',NULL),
(931,'V-13041838','22c0a02953c644abfb8923256ffe2c6467ccb5473b8a5988067097b2efbb3ec0',1,'2016-09-05 06:00:55','2016-09-05 06:00:55','elreymacho35@hotmail.com',NULL),
(932,'V-27350766','22c0a02953c644abfb8923256ffe2c6467ccb5473b8a5988067097b2efbb3ec0',1,'2016-09-05 06:03:50','2016-09-05 06:03:50','',NULL),
(933,'V-24195065','c51ccf9c20d2453bdb023400a54407272d9cbb3fae57520b5fe005cab257c92d',1,'2016-09-05 08:14:44','2016-09-05 08:14:44','GRUASSATELITE@HOTMAIL.COM',NULL),
(934,'V-17130435','6b9694dfd010b4586c5dc1bf5a5c9135f5dfd930d66ce1223e9e7e296509e6fd',1,'2016-09-05 08:19:44','2016-09-05 08:19:44','',NULL),
(935,'V-18619657','6b9694dfd010b4586c5dc1bf5a5c9135f5dfd930d66ce1223e9e7e296509e6fd',1,'2016-09-05 08:27:15','2016-09-05 08:27:15','',NULL),
(936,'V-16912004','ad0ef5947e06571d5bbe662bae2aeaa2de0616a391cbca271341a62d610380c3',1,'2016-09-06 03:09:57','2017-01-16 13:27:23','RECUPERACIONESAUTOCEV@GMAIL.COM',NULL),
(937,'J-313976261','c4b302928d5bd53353c0ab9ca7980da1983d1412a7033eb776f909ba3d580087',1,'2016-09-06 03:12:43','2016-09-06 07:13:02','',NULL),
(938,'V-11462060','f0639b829cd328903a72c210650204865841cea9211b1c9279db3063f806d2dc',1,'2016-09-06 03:33:46','2016-09-06 03:33:46','TONYJOSECOLMENARES@GMAIL.COM',NULL),
(939,'V-9201606','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:30:17','2016-09-06 04:30:17','',NULL),
(940,'V-17028360','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:32:06','2016-09-06 04:32:06','',NULL),
(941,'V-17810494','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:33:15','2016-09-06 04:33:15','',NULL),
(942,'V-14946037','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:34:27','2016-09-06 04:34:27','',NULL),
(943,'V-18498257','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:35:21','2016-09-06 04:35:21','',NULL),
(944,'V-20572832','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:36:12','2016-09-06 04:36:12','',NULL),
(945,'V-16305728','907f22e9d6c632192ad48f116cd867d30ade384bdc3a3865940cf9b8b9f26094',1,'2016-09-06 04:37:13','2016-09-06 04:37:13','',NULL),
(946,'V-9207345','d375ae37e1c2b87ad1a8808d3696c7abc152419b60d0373314d47673cec7e32e',1,'2016-09-06 05:24:40','2016-09-06 05:24:40','LUISITO_2029@HOTMAIL.COM',NULL),
(947,'V-17232201','c8a3ae4fac96d6076957306628f54a3eede2c9859363c297b0e70f72f5482231',1,'2016-09-07 04:06:30','2016-09-07 04:06:30','EUDYCHICHO@HOTMAIL.COM',NULL),
(948,'V-18624297','bd3dae5fb91f88a4f0978222dfd58f59a124257cb081486387cbae9df11fb879',1,'2016-09-07 04:52:02','2016-09-07 04:52:02','DANIELCABERA87@HOTMAIL.COM',NULL),
(949,'V-22362827','3ab072724cbbceb41eb69ac2c2b9f5b0166f22bb5061a0391cbe1f08edc6b2d1',1,'2016-09-07 04:57:46','2016-09-07 04:57:46','JULIOEVILLALOBOSV@HOTMAIL.COM',NULL),
(950,'V-14794766','81d19ddeffd6eff40f38100b8a7fc3957db240b546a252ca49a759061e377933',1,'2016-09-07 06:09:42','2016-09-07 06:09:42','OSWALDOSANCHEZBRAVO@GMAIL.COM',NULL),
(951,'V-14698097','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-09-07 06:21:08','2016-09-07 06:21:08','faviof123@hotmail.com',NULL),
(952,'V-15535968','6570c95862161adcb728d7b42614c3d01d6f3d51faa11a701e4b2329dd3ed9f2',1,'2016-09-07 06:29:23','2016-09-07 06:29:23','franklin24flores@gmail.com',NULL),
(953,'V-9031701','6cb866d7ce702c415757cc1d3b7d2f342df25816bd0a3be91f3c8be68900717d',1,'2016-09-09 07:12:59','2016-09-09 07:12:59','ANGELITO2@HOTMAIL.COM',NULL),
(954,'V-18114712','4036e91c927160279046f13d6d16fa3d5845282031a696016d328c8b2d8553be',1,'2016-09-12 02:15:16','2016-09-12 02:15:16','',NULL),
(955,'V-14840619','39dfc0ad2b9c5e9a02f70ff41a57ec7a8b238376238422841d332af34af3ec0d',1,'2016-09-12 02:23:10','2016-09-12 02:34:53','edmundo2villarroel@gmail.com',NULL),
(956,'V-148406193','39dfc0ad2b9c5e9a02f70ff41a57ec7a8b238376238422841d332af34af3ec0d',1,'2016-09-12 02:25:56','2016-09-12 06:26:11','',NULL),
(957,'V-3823764','39dfc0ad2b9c5e9a02f70ff41a57ec7a8b238376238422841d332af34af3ec0d',1,'2016-09-12 02:28:43','2016-09-12 02:28:43','',NULL),
(958,'V-38237640','39dfc0ad2b9c5e9a02f70ff41a57ec7a8b238376238422841d332af34af3ec0d',1,'2016-09-12 02:32:36','2016-09-12 02:32:36','',NULL),
(959,'V-19806233','b08277862a9488f78bebd7189057bdb509fc3fe48902ea1d276d2265c3fbd59f',1,'2016-09-12 02:44:05','2016-10-31 16:51:01','MOISESFERRER1988@HOTMAIL.COM',NULL),
(960,'V-13192143','042e4c0c83f53c8835224193896ecf2af363f7f759851e65dd07f8cabce5db52',1,'2016-09-12 02:47:04','2016-09-12 02:47:04','alexyose@hotmail.com',NULL),
(961,'V-1319214300','042e4c0c83f53c8835224193896ecf2af363f7f759851e65dd07f8cabce5db52',1,'2016-09-12 02:48:51','2016-09-12 06:49:05','',NULL),
(962,'V-131921430','042e4c0c83f53c8835224193896ecf2af363f7f759851e65dd07f8cabce5db52',1,'2016-09-12 02:50:48','2016-09-12 02:51:11','',NULL),
(963,'V-4975107','4d428a8c43743f48f9a14bac4638de14d345670b1b554adc4a4955109d7c1b5b',1,'2016-09-15 06:28:33','2016-09-15 06:28:33','',NULL),
(964,'V-29589413','b35589d614f04a65bcb5c608b3293c76fe657980cb400560809ba26f6f2af34b',1,'2016-09-15 06:30:37','2016-09-15 06:30:37','',NULL),
(965,'V-16224996','a73860a05ec07cb9ce86d8022312d6e32e5048f44e33e3386cf1ce8a6dc4fe27',1,'2016-09-15 06:32:24','2016-09-15 06:32:24','',NULL),
(966,'V-19497041','f552b0d998c0b5f4144e63e133af600ca3b9693dc38226453ed38f4d923a4f53',1,'2016-09-15 06:43:39','2016-09-15 06:43:59','',NULL),
(967,'V-18711081','1c648c5bbd6313eb3f60787a17bd24c5eda5cfb2cb2ef2145c7807bf3d27cb4d',1,'2016-09-15 07:29:06','2016-09-15 07:29:06','',NULL),
(968,'V-17983830','610cf40ce4576f45b65c2bf4288d3be5e113c9d9f9f0aa0e17809918d8210183',1,'2016-09-15 07:38:36','2016-09-15 07:38:36','',NULL),
(969,'V-17752667','610cf40ce4576f45b65c2bf4288d3be5e113c9d9f9f0aa0e17809918d8210183',1,'2016-09-15 07:39:50','2016-09-15 07:39:50','',NULL),
(970,'V-21016218','80222b332f1a5469ee233a58553a4d57efa743041b434f4630e4157204e0f974',1,'2016-09-15 08:00:38','2016-09-15 08:00:38','',NULL),
(971,'J-293686318','5f6d9867ccd91930f2a240d43dbcf4f25e3dad17cd1ca62a475500248a917967',1,'2016-09-19 05:07:35','2016-09-20 07:04:23','prueba@mail.com','prueba@mail.com'),
(972,'V-13652069','bfd84528d458c29bef042aa9a1045bfc9fd5e9976e728797a7c15004cd758f14',1,'2016-09-19 05:07:35','2016-09-23 13:17:52','prueba@mail.com','prueba@mail.com'),
(973,'J-405323043','7466ead22bcaabbb745fe527d0169256947cba775d62ce70fc0dd354e55af39a',1,'2016-09-19 05:07:35','2016-09-25 00:44:41','prueba@mail.com','prueba@mail.com'),
(974,'V-10118179','bb5a52f42f9c9261ed4361f59422a1e30036e7c32b270c8807a419feca605023',1,'2016-09-19 05:07:35','2016-09-20 07:28:29','prueba@mail.com','prueba@mail.com'),
(975,'V-110268331','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-19 05:07:35','2016-09-19 05:07:35','prueba@mail.com','prueba@mail.com'),
(976,'V-13424947','e3d13a22d164db55758b1f0566cd93c63cfb12cb8c79590e585ca6b01396a480',1,'2016-09-19 05:07:35','2016-09-20 06:11:05','prueba@mail.com','prueba@mail.com'),
(977,'V-14777378','2fa39c201038339aea8ea378ba0d70a08da8252848ecfa7d63c170bd7b32f979',1,'2016-09-19 05:07:35','2016-09-25 00:42:17','prueba@mail.com','prueba@mail.com'),
(978,'V-14784543','078d5b398944635861eea211086dc593e6d12f8ee743fe9c7b205413ed115445',1,'2016-09-19 05:07:35','2016-09-25 00:51:11','prueba@mail.com','prueba@mail.com'),
(979,'V-16910346','9e5662db1313cf64da8b99629480fc57cdef6b0ba5064481f6bbe1ffc4117bc4',1,'2016-09-19 05:07:35','2016-10-22 14:58:05','prueba@mail.com','prueba@mail.com'),
(980,'V-16930078','9c5b127682d88986f0b6fea2927a503486d5297c8c30f393c23ed1872225678f',1,'2016-09-19 05:07:35','2016-09-20 06:18:23','prueba@mail.com','prueba@mail.com'),
(981,'V-17564663','ffa329577e1a799a981fb55137a19c93798a9f703b4ef2cfa882473a9ef56deb',1,'2016-09-19 05:07:35','2016-09-25 00:39:43','prueba@mail.com','prueba@mail.com'),
(982,'V-17653214','87a148a4fcdf920c36603ade979cecb9276e20131e98890f87aff138707af81b',1,'2016-09-19 05:07:35','2016-09-20 07:23:30','prueba@mail.com','prueba@mail.com'),
(983,'V-18525119','6607577826bb6877a0d73338ee71daf30b52d0ef2e3d2a47ed3298079a34f576',1,'2016-09-19 05:07:35','2016-11-10 14:59:05','prueba@mail.com','prueba@mail.com'),
(984,'V-20112888','6164acdb7df323793a45c0ccc468698e96906d2ed39ece4f4fd8e3b25cf07048',1,'2016-09-19 05:07:35','2016-09-20 07:17:17','prueba@mail.com','prueba@mail.com'),
(986,'V-11474606','9c5b127682d88986f0b6fea2927a503486d5297c8c30f393c23ed1872225678f',1,'2016-09-20 06:20:44','2016-09-20 06:20:44','',NULL),
(987,'V-16932255','9316dc40ff85184465de9db63dbba2f33ec8e798c590e2d9951251ae519bea12',1,'2016-09-20 07:05:57','2016-09-20 07:05:57','',NULL),
(988,'V-14686355','d9508122cd143d69df229bf3624b7bcb2b8ac81ed210a0c926455ef119c12abd',1,'2016-09-20 07:07:21','2016-09-20 07:07:21','',NULL),
(989,'V-11702621','03a9783727f9da9a9bf6fffc5d4f672c884143ac60d7da6e549b21a25dc4e5bc',1,'2016-09-22 17:30:56','2016-09-22 17:30:56','ELGUARO_1974@HOTMAIL.COM',NULL),
(990,'V-19137120','f898c0e2fa3b9767f4e8e8e98c4a29bb98664b2a6f7b9e67129aa90915ed8a4a',1,'2016-09-23 13:58:13','2016-09-23 13:58:13','PABLOARTIGA8@GMAIL.COM',NULL),
(991,'V-20635932','a54e71f0e17f5aaf7946e66ab42cf3b1fd4e61d60581736c9f0eb1c3f794eb7c',1,'2016-09-23 14:05:04','2016-09-23 14:05:04','GRUASBARCELONA@GMAIL.COM',NULL),
(992,'V-17906073','61c5bbf13ab1dad37cb1366b39fd06eaf176f1b296ba583aa2ec0ac5da77e708',1,'2016-09-23 14:19:28','2016-09-23 14:19:40','',NULL),
(993,'V-24423545','7bee28d5fccce295dc1c05ce05d8a2da5b8855d033c16a86a6a8ab98b9e227aa',1,'2016-09-27 16:01:45','2016-09-27 16:01:45','',NULL),
(994,'J-306372660','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(995,'J-309465112','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(996,'J-400966639','f8ffc0ef787efe21d7292d41247963bd9c0f424b007072362d225237aa9c934c',1,'2016-09-28 05:39:44','2016-09-28 18:35:54','mail@mail.com','mail@mail.com'),
(997,'J-407669168','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(998,'V- 15874983','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(999,'V-104605156','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1000,'V-12014502','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1001,'V-12678754','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1002,'V-12812752','f13a522d5993bfef866e3bfdf9247bbefc503813830cf68ded4f28b099f29338',1,'2016-09-28 05:39:44','2016-10-25 09:35:44','mail@mail.com','mail@mail.com'),
(1003,'V-13962550','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1004,'V-18227764','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1005,'V-22858585','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1006,'V-49169961','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1007,'V-6549992','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1008,'V-8250257','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1009,'V-8443422','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1010,'V-9782622','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-09-28 05:39:44','2016-09-28 05:39:44','mail@mail.com','mail@mail.com'),
(1025,'V-18630833','639bccbcbe55f86744217a1d25cd6365363326d2bdb2d4fb4ca6c44c156f4af7',1,'2016-09-28 15:06:32','2016-09-28 15:06:32','',NULL),
(1026,'V-13956541','a0f3d67d989362b62f4ae0ef2387b88f3772b0da7985a940826935be0f80af3f',1,'2016-09-28 15:11:38','2016-09-28 15:11:38','',NULL),
(1027,'V-13998948','c483c695e4b27814089b0977ccc96cfe190505055fdfd122bc287e5c3f928027',1,'2016-09-29 08:11:09','2016-09-29 08:11:52','',NULL),
(1028,'V-169234686','7aae5ab1531b32d66a1edd7be3f2b74b250c647ee639e6f4ecc5ff493fe6036c',1,'2016-10-03 14:41:11','2016-10-03 14:41:35','',NULL),
(1029,'J-293666651','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1030,'J-29711596','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1031,'J-311344926','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1032,'J-315661284','d7e8c9ec5d4c6c945072359ac3ad6d327d61d9c8958c3718e9c39941bb394b23',1,'2016-10-05 08:31:18','2016-10-09 15:36:20','mail@mail.com','mail@mail.com'),
(1033,'J-400549361','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1034,'J-402614543','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1035,'J-403529809','0ee6dc550e42a3ce5cac2cd7399e386ae823af18be8d60ae8df7c0cc8311de7e',1,'2016-10-05 08:31:18','2016-10-05 21:02:12','mail@mail.com','mail@mail.com'),
(1036,'J-403646708','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1037,'J-405097540','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1038,'J-40514044-5','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1039,'J-406760072','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1040,'J-80295886','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1041,'V-023972790','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1042,'V-080831800','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-12-19 15:41:20','mail@mail.com','mail@mail.com'),
(1043,'V-11463415','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1044,'V-11565242','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1045,'V-11567867','21e4bb031502fc787f31077ecbbf3c4050b0b0b72d86028c7970ce202b35919a',1,'2016-10-05 08:31:18','2016-12-19 12:05:21','mail@mail.com','mail@mail.com'),
(1046,'V-116835815','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1047,'V-11780034','9c5fd0208515514e782fee909658bf77423660f3d646d3860bbf7361ed80971d',1,'2016-10-05 08:31:18','2016-11-02 08:33:26','mail@mail.com','mail@mail.com'),
(1048,'V-12152566','3162d692b831916b037db87925697de7507c63c83865adbca2b4254e579ae58f',1,'2016-10-05 08:31:18','2016-11-26 10:49:53','mail@mail.com','mail@mail.com'),
(1049,'V-12659237','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1050,'V-128127514','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1051,'V-12851926','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1052,'V-13257859','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1053,'V-136866750','8c525f93672f3080c828425862038d2406ba38983d93d6d7e98d11f76fde7dc3',1,'2016-10-05 08:31:18','2016-10-05 20:55:14','mail@mail.com','mail@mail.com'),
(1054,'V-136928615','74831f14e2b2d1a0e7989f3ea8fa4696b976084a04fb5dd36361ac3450b27cfa',1,'2016-10-05 08:31:18','2016-10-10 14:26:43','mail@mail.com','mail@mail.com'),
(1055,'V-13965935','ff150bc51704cbc2fb2f412c2d8a79afb6212c9dff3d6127c2b0f937a33ea5ed',1,'2016-10-05 08:31:18','2016-10-27 08:31:22','mail@mail.com','mail@mail.com'),
(1056,'V-143010399','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1057,'V-15616709','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1058,'V-15778874','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1059,'V-159426021','ff231d4dee9c91e9ead0253639c25479b934a352b052aa23ad05f6b79efa137b',1,'2016-10-05 08:31:18','2016-10-24 16:00:33','mail@mail.com','mail@mail.com'),
(1060,'V-16329995','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1061,'V-16662062','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1062,'V-17227355','dab2e78c8b5b1d04c09908172faba7f5433f4ab79c95bc73dca3d18695532476',1,'2016-10-05 08:31:18','2017-01-05 20:29:28','mail@mail.com','mail@mail.com'),
(1063,'V-172679168','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1064,'V-173036260','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1065,'V-17782991','cbfad02f9ed2a8d1e08d8f74f5303e9eb93637d47f82ab6f1c15871cf8dd0481',1,'2016-10-05 08:31:18','2016-11-04 14:06:56','mail@mail.com','mail@mail.com'),
(1066,'V-18067972','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1067,'V-182321385','8165ca58b74b438983ac0c58822b3147742fedace3d2f03bcfdf1a68d2fa50cc',1,'2016-10-05 08:31:18','2016-11-04 09:11:01','mail@mail.com','mail@mail.com'),
(1068,'V-19456237','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1069,'V-20147060','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1070,'V-20634144','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1071,'V-20922735','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1072,'V-22196967','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1073,'V-6272072','6ef1010b8165c3049f4352ee256fa23f3c803fc8de278582e5b27ae835541ff2',1,'2016-10-05 08:31:18','2016-10-05 15:58:47','mail@mail.com','mail@mail.com'),
(1074,'V-6900725','77459b9b941bcb4714d0c121313c900ecf30541d158eb2b9b178cdb8eca6457e',1,'2016-10-05 08:31:18','2016-10-22 14:41:52','mail@mail.com','mail@mail.com'),
(1075,'V-8742049','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 08:31:18','2016-10-05 08:31:18','mail@mail.com','mail@mail.com'),
(1092,'V-19993978','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 11:26:16','2016-10-05 11:26:16','grupobgp2013@hotmail.com',NULL),
(1093,'V-19379028','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-05 16:25:56','2016-10-05 16:25:56','juandanielrodriguezperez@gmail.com',NULL),
(1094,'V-14036822','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-06 15:20:57','2016-10-06 15:20:57','GRUPOBGP2013@GMAIL.COM',NULL),
(1095,'V-14486621','3119d749bec51795e93bfa5246653798a7d437454553402f417c97a44df66e5f',1,'2016-10-10 14:58:47','2016-10-10 14:58:47','ISYGRUAS@GMAIL.COM',NULL),
(1096,'V-17258390','c1a874609dc4dabee741f9832227626396e3cf3af3d2d9d380f71d230df2bae3',1,'2016-10-11 12:22:46','2016-10-11 12:25:41','',NULL),
(1097,'V-11941803','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 10:51:04','2016-10-13 10:51:04','OPERACIONESGRUASBGP@GMAIL.COM',NULL),
(1098,'V-21282483','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 10:56:31','2016-10-13 10:56:31','JEFERSONJOSEMORILLO@GMAIL.COM',NULL),
(1099,'V-17510180','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 11:09:25','2016-10-13 11:09:25','FRANKLINMONTILLA@GMAIL.COM',NULL),
(1100,'V-12097276','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 11:14:53','2016-10-13 11:14:53','MICHAELFRANCO046@GMAIL.COM',NULL),
(1101,'V-6108976','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 11:18:10','2016-10-13 11:18:10','IGNACIOLP@HOTMAIL.COM',NULL),
(1102,'V-14765215','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 11:28:04','2016-10-13 11:28:04','HUMBERTORMC@HOTMAIL.COM',NULL),
(1103,'V-9417621','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 12:48:39','2016-10-13 12:48:39','ALIRIOLUIS9@GMAIL.COM',NULL),
(1104,'V-6335255','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 12:51:41','2016-10-13 12:51:41','PALACIOSJORGE931@GMAIL.COM',NULL),
(1105,'V-21133484','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-13 12:55:56','2016-10-13 12:55:56','DANNYCONLACRUZ@GMAIL.COM',NULL),
(1106,'V-11312430','80990987cb6577ea6b99f7711c64cc2c8fce1b0a14a91c57f35580e7e807bd34',1,'2016-10-18 18:40:02','2016-10-18 18:51:33','JONJONHIDALGO75@HOTMAIL.COM',NULL),
(1107,'V-16028013','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-18 18:47:41','2016-10-31 08:43:53','JONHIDALGO75@HOTMAIL.COM',NULL),
(1108,'J-400031397','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1109,'J-405043377','7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f',1,'2016-10-20 08:13:39','2016-10-22 15:20:35','mail@mail.com','mail@mail.com'),
(1110,'V-10416230','afc372b4965c0e44b121c590187481aaffbdbf017bd505d2679ac577b4ddfa6a',1,'2016-10-20 08:13:39','2016-12-05 12:44:03','mail@mail.com','mail@mail.com'),
(1111,'V-11564588','fe6e43250ada87c58f677937616b927987a7bfe977d42b2fbb6851ad64d04701',1,'2016-10-20 08:13:39','2016-10-20 14:55:02','mail@mail.com','mail@mail.com'),
(1112,'V-11790127','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1113,'V-12169016','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1114,'V-147073611','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1115,'V-16013593','5c9a7f508de2f1ec87076e88a888f9af847c69d68565ab6a6983fc8b497fa1f8',1,'2016-10-20 08:13:39','2016-11-04 08:09:59','mail@mail.com','mail@mail.com'),
(1116,'V-16342853','7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f',1,'2016-10-20 08:13:39','2016-11-04 16:45:31','mail@mail.com','mail@mail.com'),
(1117,'V-17262370','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1118,'V-17438408','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1119,'V-19568176','85bfbbb6fd6e052d1b4fc1263187a3f6072cc606361b2f4c91f6b683052ad823',1,'2016-10-20 08:13:39','2016-11-16 15:13:13','mail@mail.com','mail@mail.com'),
(1120,'V-41110984','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1121,'V-59355836','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1122,'V-70843257','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1123,'V-9003297','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1124,'V-92073455','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-20 08:13:39','2016-10-20 08:13:39','mail@mail.com','mail@mail.com'),
(1125,'V-9668021','51a720ef9dc27c23273c86e3aa5df8dfeba1020088cd549139bcf7f2bc771dbe',1,'2016-10-20 08:13:39','2016-10-22 11:07:15','mail@mail.com','mail@mail.com'),
(1139,'V-16342853','7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f',1,'2016-10-22 15:25:45','2016-10-22 15:26:02','SERVISGRUASJHONOSORIOCA@GMAIL.COM',NULL),
(1140,'V-8675805','c6539f5db3e4e2faad6db628f0f74b9f801d058d2728c371cf5ad017840bf9b4',1,'2016-10-24 19:30:51','2016-10-24 19:35:11','wuilian_carranza@hotmail.com',NULL),
(1141,'V-15613829','a573fe90facce4abe3e0113a26df725a27ab1bf902dfd21cb10e78fb1fcfde06',1,'2016-10-24 21:38:23','2016-11-04 16:41:45','mail@mail.com','mail@mail.com'),
(1142,'V-16981851','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-24 21:38:23','2016-10-24 21:38:23','mail@mail.com','mail@mail.com'),
(1143,'V-25714351','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-10-24 21:38:23','2016-10-24 21:38:23','mail@mail.com','mail@mail.com'),
(1144,'V-68444213','2a657d7c0194677dbfdeb4c7e2d73a6b43c6dec8d7e5b915fec8b2950c408e1a',1,'2016-10-25 11:08:19','2016-10-25 11:08:19','',NULL),
(1145,'V-16949028','40ef730af446fa96c0737cfa2d1a6b87574f35f4fc697d69793285ab6e555c2b',1,'2016-10-26 18:34:25','2016-10-26 18:34:25','GRUASGUANIPA@HOTMAIL.COM','GRUASGUANIPA@HOTMAIL.COM'),
(1146,'V-16006582','d387d8f016a1e8dd471de17fd837ce101676156ab7d2ec1e395a67d46f3472b0',1,'2016-10-28 13:10:48','2016-10-28 13:12:09','',NULL),
(1147,'J-406691348','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-01 08:08:02','2016-11-01 08:08:02','mail@mail.com','mail@mail.com'),
(1148,'V-14759432','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-01 08:08:02','2016-11-01 08:08:02','mail@mail.com','mail@mail.com'),
(1149,'V-15711947','4091f2c5c45d0cb95c6b43919f9f07f62f7f6c6fb46ca207264b2aee4ee6e4f9',1,'2016-11-01 08:08:02','2016-12-05 09:38:05','mail@mail.com','mail@mail.com'),
(1150,'V-23580224','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-01 08:08:02','2016-11-01 08:08:02','mail@mail.com','mail@mail.com'),
(1154,'V-9955540','a48317286e0445e807090fe301da37ceb30a15c4df3aa6c06a8d9cde05c0fd83',1,'2016-11-04 17:04:34','2016-11-04 17:05:46','',NULL),
(1155,'V-65044870','e8a9b6eabca15eb6936f6f22a94f6e114a283c77aa0c082a2140c7ba1c5ea735',1,'2016-11-07 16:00:49','2016-11-07 16:00:49','',NULL),
(1156,'V-19203559','278e9138e692c17dcd35a5cda239f3a13f073761c6f5a794e4f637c426ea585b',1,'2016-11-10 18:24:56','2016-11-10 18:24:56','onellamentado@hotmail.com','onellamentado@hotmail.com'),
(1157,'J-408402823','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1158,'V-10731438','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1159,'V-11521827','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1160,'V-12632327','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1161,'V-14035016','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1162,'V-14244678','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1163,'V-14573229','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1164,'V-15054114','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1165,'V-18629771','ed946f65d2c785d90e827c5ffd879ce3b49c68d4c88013074176a7e73bc58bcf',1,'2016-11-11 08:23:01','2016-11-19 09:27:22','mail@mail.com','mail@mail.com'),
(1166,'V-18764584','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1167,'V-19852034','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1168,'V-21584071','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1169,'V-5266298','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-11 08:23:01','2016-11-11 08:23:01','mail@mail.com','mail@mail.com'),
(1172,'V-16013593','5c9a7f508de2f1ec87076e88a888f9af847c69d68565ab6a6983fc8b497fa1f8',1,'2016-11-13 09:33:59','2016-11-13 09:33:59','',NULL),
(1173,'V-25932349','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-21 13:29:43','2016-11-21 13:29:43','',NULL),
(1174,'J-401929150','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-25 14:38:51','2016-11-25 14:38:51','mail@mail.com','mail@mail.com'),
(1175,'V-13969841','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-25 14:38:51','2016-11-25 14:38:51','mail@mail.com','mail@mail.com'),
(1176,'V-16544780','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-25 14:38:51','2016-11-25 14:38:51','mail@mail.com','mail@mail.com'),
(1177,'V-17875842','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-25 14:38:51','2016-11-25 14:38:51','mail@mail.com','mail@mail.com'),
(1178,'v-7434681','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2016-11-25 14:38:51','2016-11-25 14:38:51','mail@mail.com','mail@mail.com'),
(1181,'V-13247638','238066922caf3d19913b16d6724c636505c0b9ec74ab23df9597f7aee4ca36d9',1,'2017-01-02 11:13:41','2017-01-02 11:13:41','JEANYCAROLINA70@GMAIL.COM',NULL),
(1182,'V-14591597','429716f4fbda0fe880e2efd19822756d7ce7ec80986a8564d41c91e533511673',1,'2017-01-19 10:21:13','2017-01-19 10:21:13','karinadevalera@gmail.com','karinadevalera@gmail.com'),
(1183,'J-40498924-6','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1184,'J-40561788-8','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1185,'V-10113755','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1186,'V-12112458','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1187,'V-13145210-8','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1188,'V-13383381','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1189,'V-13727487','7275367cab23889759c61293699e8fcf66e82b0047c400e27550f0b38808f29c',1,'2017-02-01 16:34:53','2017-02-03 14:26:50','mail@mail.com','mail@mail.com'),
(1190,'V-15928308','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1,'2017-02-01 16:34:53','2017-02-01 16:34:53','mail@mail.com','mail@mail.com'),
(1191,'E-81524901','195790763d258edffdd745b4eb9fe958eafb18a29ff91241f067ac41b5497bb6',1,'2017-03-28 02:01:11','2017-03-28 02:01:11','Elportu_2021@hotmail.com','Elportu_2021@hotmail.com'),
(1192,'CCCT','ac1845f44a6e64bd6abebc92bb70d64b54bc5dd8a0e118c9aff9fb9f50a33f41',1,'2017-08-20 10:58:45','2017-08-20 11:02:35','tugruero@gmail.com','tugruero@gmail.com'),
(1193,'EVERDE','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'2017-08-26 17:33:44','2017-08-26 17:36:38','tugruero@gmail.com','tugruero@gmail.com');

/*Table structure for table `users_company` */

DROP TABLE IF EXISTS `users_company`;

CREATE TABLE `users_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1202 DEFAULT CHARSET=utf8;

/*Data for the table `users_company` */

insert  into `users_company`(`id`,`id_user`,`id_company`,`status`,`date_created`,`date_updated`) values 
(1,1,1,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(2,2,2,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(3,3,3,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(4,4,4,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(5,5,5,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(6,6,6,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(7,7,7,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(8,8,8,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(9,9,9,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(10,10,10,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(11,11,11,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(12,12,12,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(13,13,13,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(14,14,14,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(15,15,15,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(16,16,16,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(17,17,17,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(18,18,18,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(19,19,19,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(20,20,20,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(21,21,21,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(22,22,22,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(23,23,23,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(24,24,24,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(25,25,25,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(26,26,26,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(27,27,27,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(28,28,28,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(29,29,29,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(30,30,30,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(31,31,31,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(32,32,32,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(33,33,33,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(34,34,34,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(35,35,35,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(36,36,36,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(37,37,37,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(38,38,38,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(39,39,39,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(40,40,40,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(41,41,41,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(42,42,42,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(43,43,43,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(44,44,44,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(45,45,45,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(46,46,46,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(47,47,47,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(48,48,48,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(49,49,49,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(50,50,50,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(51,51,51,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(52,52,52,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(53,53,53,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(54,54,54,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(55,55,55,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(56,56,56,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(57,57,57,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(58,58,58,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(59,59,59,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(60,60,60,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(61,61,61,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(62,62,62,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(63,63,63,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(64,64,64,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(65,65,65,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(66,66,66,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(67,67,67,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(68,68,68,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(69,69,69,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(70,70,70,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(71,71,71,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(72,72,72,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(73,73,73,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(74,74,74,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(75,75,75,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(76,76,76,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(77,77,77,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(78,78,78,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(79,79,79,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(81,81,81,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(82,82,82,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(83,83,83,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(84,84,84,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(85,85,85,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(86,86,86,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(87,87,87,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(88,88,88,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(89,89,89,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(90,90,90,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(91,91,91,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(92,92,92,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(93,93,93,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(94,94,94,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(95,95,95,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(96,96,96,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(97,97,97,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(98,98,98,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(99,99,99,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(100,100,100,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(101,101,101,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(102,102,102,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(103,103,103,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(104,104,104,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(105,105,105,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(106,106,106,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(107,107,107,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(108,108,108,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(109,109,109,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(110,110,110,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(111,111,111,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(112,112,112,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(113,113,113,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(114,114,114,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(115,115,115,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(116,116,116,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(117,117,117,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(118,118,118,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(121,121,121,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(122,122,122,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(123,123,123,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(124,124,124,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(125,125,125,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(126,126,126,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(127,127,127,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(128,128,128,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(129,129,129,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(130,130,130,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(132,132,132,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(134,134,134,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(135,135,135,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(136,136,136,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(137,137,137,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(138,138,138,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(139,139,139,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(140,140,140,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(141,141,141,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(142,142,142,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(143,143,143,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(144,144,144,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(145,145,145,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(146,146,146,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(147,147,147,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(148,148,148,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(149,149,149,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(151,151,151,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(153,153,153,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(154,154,154,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(155,155,155,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(156,156,156,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(157,157,157,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(158,158,158,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(159,159,159,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(160,160,160,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(161,161,161,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(162,162,162,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(163,163,163,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(164,164,164,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(165,165,165,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(166,166,166,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(167,167,167,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(169,169,169,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(170,170,170,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(171,171,171,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(172,172,172,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(173,173,173,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(174,174,174,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(175,175,175,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(176,176,176,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(177,177,177,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(178,178,178,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(179,179,179,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(180,180,180,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(181,181,181,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(182,182,182,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(183,183,183,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(184,184,184,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(185,185,185,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(186,186,186,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(187,187,187,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(188,188,188,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(189,189,189,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(190,190,190,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(191,191,191,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(192,192,192,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(193,193,193,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(194,194,194,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(196,196,196,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(197,197,197,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(198,198,198,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(200,200,200,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(201,201,201,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(202,202,202,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(203,203,203,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(204,204,204,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(205,205,205,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(206,206,206,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(207,207,207,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(209,209,209,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(210,210,210,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(211,211,211,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(212,212,212,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(213,213,213,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(214,214,214,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(215,215,215,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(216,216,216,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(217,217,217,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(218,218,218,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(219,219,219,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(220,220,220,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(221,221,221,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(223,223,223,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(224,224,224,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(225,225,225,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(226,226,226,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(227,227,227,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(228,228,228,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(229,229,229,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(230,230,230,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(231,231,231,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(232,232,232,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(233,233,233,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(234,234,234,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(235,235,235,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(236,236,236,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(237,237,237,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(238,238,238,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(239,239,239,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(240,240,240,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(241,241,241,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(242,242,242,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(243,243,243,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(244,244,244,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(245,245,245,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(247,247,247,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(248,248,248,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(249,249,249,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(250,250,250,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(252,252,252,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(253,253,253,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(254,254,254,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(255,255,255,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(256,256,256,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(257,257,257,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(258,258,258,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(259,259,259,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(260,260,260,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(261,261,261,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(262,262,262,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(263,263,263,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(264,264,264,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(265,265,265,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(266,266,266,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(267,267,267,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(268,268,268,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(269,269,269,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(270,270,270,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(271,271,271,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(272,272,272,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(273,273,273,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(276,276,276,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(277,277,277,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(278,278,278,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(279,279,279,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(280,280,280,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(281,281,281,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(284,284,284,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(285,285,285,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(286,286,286,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(287,287,287,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(288,288,288,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(289,289,289,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(290,290,290,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(291,291,291,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(292,292,292,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(293,293,293,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(294,294,294,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(295,295,295,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(296,296,296,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(297,297,297,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(298,298,298,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(299,299,299,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(300,300,300,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(301,301,301,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(302,302,302,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(303,303,303,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(304,304,304,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(305,305,305,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(307,307,307,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(308,308,308,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(309,309,309,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(310,310,310,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(311,311,311,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(312,312,312,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(313,313,313,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(314,314,314,1,'2016-06-01 09:30:47','2016-11-04 15:54:06'),
(315,315,315,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(316,316,316,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(318,318,318,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(319,319,319,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(320,320,320,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(321,321,321,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(322,322,322,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(324,324,324,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(325,325,325,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(326,326,326,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(327,327,327,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(328,328,328,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(329,329,329,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(330,330,330,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(331,331,331,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(332,332,332,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(333,333,333,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(334,334,334,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(335,335,335,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(336,336,336,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(337,337,337,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(338,338,338,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(339,339,339,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(340,340,340,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(341,341,341,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(342,342,342,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(343,343,343,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(344,344,344,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(345,345,345,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(346,346,346,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(347,347,347,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(348,348,348,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(349,349,349,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(350,350,350,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(351,351,351,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(352,352,352,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(353,353,353,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(354,354,354,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(355,355,355,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(356,356,356,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(357,357,357,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(358,358,358,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(359,359,359,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(360,360,360,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(361,361,361,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(362,362,362,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(363,363,363,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(364,364,364,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(365,365,365,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(366,366,366,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(367,367,367,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(368,368,368,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(369,369,369,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(370,370,370,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(371,371,371,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(372,372,372,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(373,373,373,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(374,374,374,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(375,375,375,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(376,376,376,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(377,377,377,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(378,378,378,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(379,379,379,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(380,380,380,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(381,381,381,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(383,383,383,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(384,384,384,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(385,385,385,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(386,386,386,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(387,387,387,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(388,388,388,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(389,389,389,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(390,390,390,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(391,391,391,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(392,392,392,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(393,393,393,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(394,394,394,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(395,395,395,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(396,396,396,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(397,397,397,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(398,398,398,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(399,399,399,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(400,400,400,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(401,401,401,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(402,402,402,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(403,403,403,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(404,404,404,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(405,405,405,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(406,406,406,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(407,407,407,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(408,408,408,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(409,409,409,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(410,410,410,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(411,411,411,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(412,412,412,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(413,413,413,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(414,414,414,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(415,415,415,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(417,417,417,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(418,418,418,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(419,419,419,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(420,420,420,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(421,421,421,1,'2016-06-01 09:30:47','2016-07-17 03:20:05'),
(422,422,422,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(423,423,423,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(424,424,424,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(425,425,425,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(426,426,426,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(427,427,427,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(428,428,428,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(429,429,429,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(431,431,431,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(432,432,432,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(433,433,433,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(434,434,434,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(435,435,435,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(436,436,436,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(437,437,437,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(438,438,438,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(439,439,439,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(440,440,440,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(441,441,441,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(442,442,442,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(443,443,443,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(444,444,444,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(445,445,445,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(446,446,446,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(447,447,447,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(448,448,448,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(449,449,449,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(450,450,450,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(451,451,451,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(452,452,452,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(453,453,453,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(454,454,454,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(455,455,455,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(456,456,456,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(457,457,457,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(458,458,458,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(459,459,459,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(460,460,460,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(461,461,461,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(463,463,463,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(464,464,464,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(465,465,465,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(466,466,466,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(468,468,468,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(469,469,469,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(470,470,470,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(471,471,471,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(472,472,472,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(473,473,473,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(474,474,474,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(475,475,475,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(477,477,477,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(478,478,478,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(479,479,479,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(480,480,480,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(481,481,481,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(482,482,482,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(483,483,483,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(484,484,484,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(485,485,485,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(486,486,486,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(487,487,487,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(488,488,488,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(489,489,489,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(490,490,490,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(491,491,491,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(492,492,492,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(493,493,493,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(494,494,494,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(495,495,495,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(496,496,496,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(497,497,497,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(498,498,498,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(499,499,499,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(500,500,500,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(501,501,501,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(502,502,502,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(503,503,503,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(504,504,504,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(505,505,505,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(506,506,506,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(507,507,507,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(508,508,508,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(509,509,509,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(510,510,510,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(511,511,511,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(512,512,512,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(513,513,513,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(514,514,514,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(515,515,515,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(516,516,516,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(517,517,517,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(518,518,518,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(519,519,519,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(520,520,520,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(521,521,521,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(523,523,523,1,'2016-06-01 09:30:47','2016-06-01 09:30:47'),
(526,529,499,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(527,530,465,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(529,532,525,1,'2016-06-02 00:30:29','2016-06-02 17:28:26'),
(532,536,526,1,'2016-06-02 12:07:49','2016-06-02 17:30:00'),
(535,539,475,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(541,545,10,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(542,546,233,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(543,547,307,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(545,549,416,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(549,553,242,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(550,554,456,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(552,556,440,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(555,559,506,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(557,561,506,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(558,562,25,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(561,565,208,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(562,566,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(563,567,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(564,568,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(565,569,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(566,570,528,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(567,571,529,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(568,572,530,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(569,573,531,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(570,574,532,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(571,575,533,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(573,577,535,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(574,578,536,1,'2016-06-10 03:09:44','2016-06-10 03:09:44'),
(581,585,81,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(582,586,543,1,'2016-06-13 21:16:23','2016-06-13 21:16:25'),
(584,589,196,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(586,591,544,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(587,592,545,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(588,593,546,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(589,594,547,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(590,595,548,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(591,596,549,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(592,597,550,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(593,598,551,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(594,599,552,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(595,600,553,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(596,601,554,1,'2016-06-18 18:35:58','2016-06-18 18:35:58'),
(601,606,545,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(602,607,545,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(604,609,333,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(605,610,553,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(608,613,553,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(609,614,559,1,'2016-06-26 16:58:17','2016-06-26 20:59:59'),
(610,615,549,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(612,617,543,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(613,626,560,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(614,620,561,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(615,624,562,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(616,627,563,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(617,625,564,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(618,618,565,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(619,623,566,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(620,621,567,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(621,619,568,1,'2016-06-30 06:13:05','2016-06-30 06:13:05'),
(622,628,543,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(629,635,421,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(632,638,155,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(640,646,521,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(641,647,129,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(642,648,163,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(643,649,129,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(644,650,60,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(645,651,163,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(646,652,141,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(647,653,141,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(648,654,141,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(649,656,569,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(650,657,570,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(651,658,571,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(652,659,572,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(653,660,573,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(654,661,574,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(655,662,575,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(656,663,576,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(657,664,577,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(658,665,578,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(659,666,579,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(660,667,580,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(661,668,581,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(662,669,582,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(663,670,583,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(664,671,584,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(665,673,585,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(666,674,586,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(667,676,587,1,'2016-07-13 18:36:18','2016-07-13 18:36:18'),
(680,686,583,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(681,687,577,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(683,689,575,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(684,690,570,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(685,691,570,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(686,692,570,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(687,693,587,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(688,694,559,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(689,695,280,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(690,696,248,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(691,697,554,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(692,698,270,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(693,699,270,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(694,700,269,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(695,701,257,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(696,702,276,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(697,703,276,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(698,704,278,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(699,705,600,1,'2016-07-21 02:10:11','2016-08-02 09:24:59'),
(700,706,280,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(701,707,280,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(702,708,504,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(703,709,294,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(704,710,312,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(705,711,312,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(706,712,285,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(707,713,37,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(708,714,301,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(709,715,284,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(710,716,284,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(711,717,284,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(712,718,284,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(713,719,284,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(714,720,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(715,721,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(716,722,13,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(718,724,259,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(720,726,517,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(721,727,601,1,'2016-07-31 16:25:31','2016-08-14 02:25:14'),
(722,728,602,1,'2016-08-01 16:25:47','2016-08-01 16:25:47'),
(723,729,603,1,'2016-08-01 16:25:47','2016-08-01 16:25:47'),
(724,730,604,1,'2016-08-01 16:25:47','2016-08-01 16:25:47'),
(725,731,605,1,'2016-08-01 16:25:47','2016-08-01 16:25:47'),
(729,734,394,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(730,735,412,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(731,736,64,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(732,737,545,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(733,738,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(734,739,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(735,740,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(736,741,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(737,742,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(738,743,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(739,744,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(740,745,395,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(741,746,413,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(742,747,413,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(743,748,413,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(745,750,276,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(746,751,41,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(748,753,36,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(749,754,238,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(750,755,238,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(751,756,267,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(752,757,263,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(753,758,263,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(754,759,603,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(755,760,176,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(756,761,157,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(757,762,445,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(758,763,449,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(759,764,449,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(760,765,441,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(761,766,440,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(763,768,249,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(764,769,112,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(765,770,42,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(766,771,42,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(767,772,270,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(768,773,606,1,'2016-08-27 00:49:42','2016-08-27 00:49:42'),
(769,774,389,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(770,775,296,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(771,776,492,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(772,777,492,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(773,778,436,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(774,779,607,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(775,780,608,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(776,781,609,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(777,782,610,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(778,783,611,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(779,784,612,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(780,785,613,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(781,787,614,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(782,788,615,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(783,789,616,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(784,790,617,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(785,791,618,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(786,792,619,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(787,793,620,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(788,794,621,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(789,795,622,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(790,796,623,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(791,797,624,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(792,798,625,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(793,799,626,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(794,800,627,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(795,801,628,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(796,803,629,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(797,804,630,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(798,805,631,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(799,806,632,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(800,807,633,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(801,808,634,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(802,809,635,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(803,810,636,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(804,811,637,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(805,812,638,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(806,813,639,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(807,814,640,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(808,815,641,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(809,816,642,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(810,817,643,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(811,818,644,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(812,819,645,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(813,820,646,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(814,821,647,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(815,822,648,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(816,823,649,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(817,824,650,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(818,825,651,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(819,826,652,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(820,827,653,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(821,828,654,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(822,830,655,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(823,831,656,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(824,832,657,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(825,833,658,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(826,834,659,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(827,835,660,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(828,836,661,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(829,837,662,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(830,838,663,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(831,839,664,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(832,840,665,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(833,841,666,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(834,842,667,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(835,843,668,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(836,844,669,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(837,845,670,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(838,846,671,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(839,847,672,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(840,848,673,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(841,849,674,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(842,851,675,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(843,852,676,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(844,853,677,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(845,854,678,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(846,855,679,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(847,856,680,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(848,857,681,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(849,859,682,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(850,860,683,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(851,861,684,1,'2016-08-31 18:05:40','2016-08-31 18:05:40'),
(901,906,415,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(902,907,621,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(903,908,621,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(904,909,621,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(905,910,616,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(906,911,611,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(907,912,666,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(908,913,666,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(909,914,620,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(910,915,620,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(911,916,620,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(912,917,620,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(913,918,681,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(914,919,614,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(915,920,612,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(916,921,612,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(917,922,649,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(918,923,613,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(919,924,607,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(920,925,669,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(921,926,618,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(922,927,663,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(923,928,654,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(924,929,631,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(925,930,629,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(926,931,636,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(927,932,636,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(928,933,608,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(929,934,608,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(930,935,608,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(931,936,625,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(932,937,625,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(933,938,615,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(934,939,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(935,940,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(936,941,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(937,942,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(938,943,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(939,944,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(940,945,311,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(941,946,623,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(942,947,438,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(943,948,503,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(944,949,507,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(945,950,617,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(946,951,610,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(947,952,651,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(948,953,289,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(949,954,381,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(950,955,384,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(951,956,384,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(952,957,384,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(953,958,384,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(954,959,71,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(955,960,385,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(956,961,385,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(957,962,385,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(958,963,25,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(959,964,25,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(960,965,25,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(961,966,348,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(962,967,506,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(963,968,471,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(964,969,471,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(965,970,350,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(966,971,734,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(967,972,735,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(968,973,736,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(969,974,737,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(970,975,738,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(971,976,739,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(972,977,740,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(973,978,741,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(974,979,742,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(975,980,743,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(976,981,744,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(977,982,745,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(978,983,746,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(979,984,747,1,'2016-09-19 05:21:58','2016-09-19 05:21:58'),
(981,986,743,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(982,987,734,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(983,988,734,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(984,989,477,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(985,990,102,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(986,991,488,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(987,992,477,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(988,993,167,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(989,994,748,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(990,995,749,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(991,996,750,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(992,997,751,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(993,998,752,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(994,999,753,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(995,1000,754,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(996,1001,755,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(997,1002,756,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(998,1003,757,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(999,1004,758,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1000,1005,759,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1001,1006,760,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1002,1007,761,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1003,1008,762,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1004,1009,763,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1005,1010,764,1,'2016-09-28 05:55:41','2016-09-28 05:55:41'),
(1020,1025,230,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1021,1026,230,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1022,1027,68,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1023,1028,548,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1024,1029,765,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1025,1030,766,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1026,1031,767,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1027,1032,768,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1028,1033,769,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1029,1034,770,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1030,1035,771,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1031,1036,772,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1032,1037,773,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1033,1038,774,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1034,1039,775,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1035,1040,776,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1036,1041,777,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1037,1042,778,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1038,1043,779,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1039,1044,780,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1040,1045,781,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1041,1046,782,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1042,1047,783,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1043,1048,784,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1044,1049,785,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1045,1050,786,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1046,1051,787,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1047,1052,788,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1048,1053,789,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1049,1054,790,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1050,1055,791,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1051,1056,792,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1052,1057,793,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1053,1058,794,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1054,1059,795,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1055,1060,796,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1056,1061,797,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1057,1062,798,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1058,1063,799,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1059,1064,800,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1060,1065,801,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1061,1066,802,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1062,1067,803,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1063,1068,804,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1064,1069,805,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1065,1070,806,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1066,1071,807,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1067,1072,808,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1068,1073,809,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1069,1074,810,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1070,1075,811,1,'2016-10-05 08:32:48','2016-10-05 08:32:48'),
(1087,1092,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1088,1093,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1089,1094,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1090,1095,563,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1091,1096,142,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1092,1097,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1093,1098,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1094,1099,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1095,1100,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1096,1101,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1097,1102,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1098,1103,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1099,1104,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1100,1105,469,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1101,1106,337,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1102,1107,337,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1103,1108,828,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1104,1109,829,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1105,1110,830,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1106,1111,831,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1107,1112,832,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1108,1113,833,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1109,1114,834,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1110,1115,835,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1111,1116,836,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1112,1117,837,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1113,1118,838,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1114,1119,839,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1115,1120,840,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1116,1121,841,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1117,1122,842,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1118,1123,843,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1119,1124,844,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1120,1125,845,1,'2016-10-20 08:14:12','2016-10-20 08:14:12'),
(1134,1139,829,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1135,1140,327,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1136,1141,859,1,'2016-10-24 21:38:41','2016-10-24 21:38:41'),
(1137,1142,860,1,'2016-10-24 21:38:41','2016-10-24 21:38:41'),
(1138,1143,861,1,'2016-10-24 21:38:41','2016-10-24 21:38:41'),
(1139,1144,359,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1140,1145,862,1,'2016-10-26 18:34:25','2016-10-26 18:34:25'),
(1141,1146,31,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1142,1147,863,1,'2016-11-01 08:08:19','2016-11-01 08:08:19'),
(1143,1148,864,1,'2016-11-01 08:08:19','2016-11-01 08:08:19'),
(1144,1149,865,1,'2016-11-01 08:08:19','2016-11-01 08:08:19'),
(1145,1150,866,1,'2016-11-01 08:08:19','2016-11-01 08:08:19'),
(1149,1154,836,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1150,1155,330,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1151,1156,867,1,'2016-11-10 18:24:56','2016-11-10 18:24:56'),
(1152,1157,868,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1153,1158,869,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1154,1159,870,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1155,1160,871,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1156,1161,872,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1157,1162,873,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1158,1163,874,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1159,1164,875,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1160,1165,876,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1161,1166,877,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1162,1167,878,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1163,1168,879,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1164,1169,880,1,'2016-11-11 08:23:24','2016-11-11 08:23:24'),
(1167,1157,868,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1168,1158,869,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1169,1159,870,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1170,1160,871,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1171,1161,872,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1172,1162,873,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1173,1163,874,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1174,1164,875,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1175,1165,876,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1176,1166,877,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1177,1167,878,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1178,1168,879,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1179,1169,880,1,'2016-11-11 08:23:42','2016-11-11 08:23:42'),
(1182,1172,835,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1183,1173,518,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1184,1174,881,1,'2016-11-25 14:39:07','2016-11-25 14:39:07'),
(1185,1175,882,1,'2016-11-25 14:39:07','2016-11-25 14:39:07'),
(1186,1176,883,1,'2016-11-25 14:39:07','2016-11-25 14:39:07'),
(1187,1177,884,1,'2016-11-25 14:39:07','2016-11-25 14:39:07'),
(1188,1178,885,1,'2016-11-25 14:39:07','2016-11-25 14:39:07'),
(1191,1181,345,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(1192,1182,888,1,'2017-01-19 10:21:13','2017-01-19 10:21:13'),
(1193,1183,889,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1194,1184,890,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1195,1185,891,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1196,1186,892,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1197,1187,893,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1198,1188,894,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1199,1189,895,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1200,1190,896,1,'2017-02-01 16:35:21','2017-02-01 16:35:21'),
(1201,1191,897,1,'2017-03-28 02:01:11','2017-03-28 02:01:11');

/*Table structure for table `users_data` */

DROP TABLE IF EXISTS `users_data`;

CREATE TABLE `users_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `second_name` varchar(45) DEFAULT NULL,
  `first_last_name` varchar(45) NOT NULL,
  `second_last_name` varchar(45) DEFAULT NULL,
  `nationality` varchar(1) NOT NULL,
  `document` varchar(45) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `phone1` varchar(45) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `certificado_file` varchar(100) NOT NULL,
  `document_file` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `zone_work` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1342 DEFAULT CHARSET=utf8;

/*Data for the table `users_data` */

insert  into `users_data`(`id`,`id_users`,`first_name`,`second_name`,`first_last_name`,`second_last_name`,`nationality`,`document`,`birthdate`,`gender`,`phone`,`phone1`,`image`,`certificado_file`,`document_file`,`date_created`,`date_updated`,`location`,`zone_work`) values 
(1,1,'JESUS','','SILVA','','V','16532308','0000-00-00','M','04262090590','4262090590','','','V-16532308-cedula.jpg','2016-06-01 09:29:32','2016-08-23 23:03:50','BARQUISIMETO','LARA'),
(2,2,'DEIBY','','ESCALONA','','V','V-171199170','0000-00-00','M','4241548145','4241548145','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUATIRE','MIRANDA'),
(3,3,'GUSTAVO','','RIVAS','','V','V-10694705','0000-00-00','M','4142343185','4142343185','','','V-10694705-cedula.jpg','2016-06-01 09:29:32','2016-09-15 12:15:51','GUATIRE','MIRANDA'),
(4,4,'KERWIS','','ALVAREZ','','V','V-122431050','0000-00-00','M','4145190422','4145190422','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(5,5,'ANDRES','','ALFONSO','','V','16690754','0000-00-00','M','4243105810','4243105810','','','V-16690754-cedula.jpg','2016-06-01 09:29:32','2016-09-23 17:11:13',NULL,NULL),
(6,6,'YOHANY','','CONTRERAS','','V','V-168060668','0000-00-00','M','4247785063','4247785063','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BOCONO','TRUJILLO'),
(7,7,'ANTONIO','JOSE','HERNANDEZ','MARTINEZ','V','V-10695288','0000-00-00','M','4141140242','4141140242','','','V-10695288-cedula.jpg','2016-06-01 09:29:32','2016-09-28 21:48:58','GUATIRE','MIRANDA'),
(8,8,'PIETRO','GIUSEPPE','GARGARO','CONSTANTINO','V','14202215','0000-00-00','M','4142938134','4142938134','','','V-14202215-cedula.jpg','2016-06-01 09:29:32','2016-10-04 10:13:45','CARACAS','DISTRITO CAPITAL'),
(9,9,'DIONICIO','','GARCIA','','E','81105110','0000-00-00','M','04143507107','4143507107','','','E-81105110-cedula.jpg','2016-06-01 09:29:32','2016-08-19 04:49:56','MIRANDA','CARABOBO'),
(10,10,'OSCAR','','RIVERO','','V','V-119480120','0000-00-00','M','4143799528','4143799528','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(11,11,'IVAN','JOSE','PALACIOS','CACERES','V','6934184','0000-00-00','M','4143290314','4143290314','','','V-69341841-cedula.jpg','2016-06-01 09:29:32','2016-09-28 21:54:35','GUATIRE','MIRANDA'),
(12,12,'JHOANDER','JESUS','PARRA','RAMIREZ','V','V-18109503','0000-00-00','M','4141296441','4141296441','','','V-18109503-cedula.jpg','2016-06-01 09:29:32','2016-09-28 22:00:21','CARACAS','DISTRITO CAPITAL'),
(13,13,'FREDY','','SALAS','','V','V-10710757','0000-00-00','M','04166027164','4166027164','','','V-10710757-cedula.jpg','2016-06-01 09:29:32','2016-07-26 12:05:40','MERIDA','MERIDA'),
(14,14,'ANIBAL','JOSE','MARTINEZ','MEDINA','V','4675267','0000-00-00','M','4169222083','4169222083','V-46752674.jpg','','V-46752674-cedula.jpg','2016-06-01 09:29:32','2016-10-07 11:01:59','CARACAS','MIRANDA'),
(15,15,'JERSON','Jesus','HERRERA','Quintero','V','18738392','0000-00-00','M','04242725395','04242725395','V-23223154.jpg','','V-23223154-cedula.jpg','2016-06-01 09:29:32','2016-10-24 09:44:44','PARACOTO','MIRANDA'),
(16,16,'RONALD','OLIVIER','VELASQUEZ','PEREZ','V','V-20238088','0000-00-00','M','4245608280','4245608280','','','V-20238088-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:11:59','BARINAS','BARINAS'),
(17,17,'JUAN CARLOS','','MANZANILLA','','V','V-146005949','0000-00-00','M','4245874653','4245874653','','','V-146005949-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:33:50','BARINAS','BARINAS'),
(18,18,'FRANCISCO','','NAVAS','','V','V-17309984','0000-00-00','M','4246250735','4246250735','','','V-17309984-cedula.jpg','2016-06-01 09:29:32','2016-08-24 20:33:01','PUNTO FIJO','FALCON'),
(19,19,'JOSSNEY','','GONZALEZ','','V','V-17987600','0000-00-00','M','04247229199','4247229199','','','V-17987600-cedula.jpg','2016-06-01 09:29:32','2016-07-26 08:29:42','MERIDA','MERIDA'),
(20,20,'OCTAVIO','','RODRIGUEZ','','V','18785546','0000-00-00','M','4264536852','4264536852','','','V-187855469-cedula.jpg','2016-06-01 09:29:32','2016-09-28 09:09:29','BARQUISIMETO','LARA'),
(21,21,'LUIS','','QUINTANA','','V','V-152714684','0000-00-00','M','4267422621','4267422621','','','V-152714684-cedula.jpg','2016-06-01 09:29:32','2016-07-11 20:45:14','VALENCIA','CARABOBO'),
(22,22,'OSWALDO','','MORENO','','V','V-92340119','0000-00-00','M','4268279985','4268279985','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','TRONCAL 5','TACHIRA'),
(23,23,'EVEREST','YUMARE','COLMENARES','OROZCO','V','12684465','0000-00-00','M','4143360976','04169256597','','','V-12684465-cedula.jpg','2016-06-01 09:29:32','2016-09-11 19:01:14','GUARENAS','MIRANDA'),
(24,24,'LUIS','','OLIVARES','','V','J-403799652','0000-00-00','M','4143250418','4143250418','','','J-403799652-cedula.jpg','2016-06-01 09:29:32','2016-09-15 12:07:21','CHARALLAVE','MIRANDA'),
(25,25,'ORDONEL','','RODRIGUEZ','','V','J-311767576','0000-00-00','M','4142574463','4142574463','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(26,26,'DANILO','','LARA','','V','10703645','0000-00-00','M','4128918791','4128918791','','','V-107036454-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:19:26',NULL,NULL),
(27,27,'FRANKLIN','','VASQUEZ','','V','19825630','0000-00-00','M','4140731293','4140731293','','','V-19825630-cedula.jpg','2016-06-01 09:29:32','2016-08-26 17:45:45','BARINAS','BARINAS'),
(28,28,'JACSON','RAMON','ABREU','JAIME','V','V-14606805','0000-00-00','M','4142089644','4142089644','','','V-14606805-cedula.jpg','2016-06-01 09:29:32','2016-10-04 10:18:18','CARACAS','DISTRITO CAPITAL'),
(29,29,'LUIS','angel','GARCIA','porras','V','V-18393583','0000-00-00','M','4142178029','4142178029','','','V-18393583-cedula.jpg','2016-06-01 09:29:32','2016-08-02 05:23:35','SAN CRISTOBAL ','TACHIRA'),
(30,30,'MIGUEL','','VILLARROEL','','V','12749447','0000-00-00','M','4142868201','4142868201','','','','2016-06-01 09:29:32','2016-09-14 19:30:36','LOS TEQUES','MIRANDA'),
(31,31,'NEHOMAR','','FEBLES','MARTINEZ','V','V-13308578','0000-00-00','M','4143035455','4143035455','','','V-13308578-cedula.jpg','2016-06-01 09:29:32','2016-11-20 13:01:56','EL HATILLO','DISTRITO CAPITAL'),
(32,32,'TRINO','','CISNERO','','V','V-61184062','0000-00-00','M','4143982234','4143982234','','','V-61184062-cedula.jpg','2016-06-01 09:29:32','2016-09-15 07:10:56','CARACAS','DISTRITO CAPITAL'),
(33,33,'NESTOR','','LAYA','','V','16245454','0000-00-00','M','4144207880','4144207880','','','V-162454540-cedula.jpg','2016-06-01 09:29:32','2016-08-17 19:02:02','VALENCIA','CARABOBO'),
(34,34,'WILSON','','PEREZ','','V','V-14749252','0000-00-00','M','04145170480','4145170480','','','V-14749252-cedula.jpg','2016-06-01 09:29:32','2016-07-20 11:06:54','CABUDARE','LARA'),
(35,35,'FERNANDO','','MENDOZA','','V','J-311815368','0000-00-00','M','4145262115','4145262115','','','J-311815368-cedula.jpg','2016-06-01 09:29:32','2016-08-10 02:10:57','CABUDARE','LARA'),
(36,36,'ARVIN','','PEREZ','','V','V-18104490','0000-00-00','M','4145594508','4145594508','','','V-18104490-cedula.jpg','2016-06-01 09:29:32','2016-08-10 02:28:25','BARQUISIMETO','LARA'),
(37,37,'HECTOR','','DIAZ','','V','10902623','0000-00-00','M','04147580197','4147580197','','','V-10902623-cedula.jpg','2016-06-01 09:29:32','2016-07-26 09:42:40','TOVAR','MERIDA'),
(38,38,'JEAN CARLOS','','GUTIERREZ','','V','V-205393125','0000-00-00','M','4149536360','4149536360','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CHIVACOA','YARACUY'),
(39,39,'DOMINGO','','TINEO','','V','13848034','0000-00-00','M','4164955162','4164955162','','','V-13848034-cedula.jpg','2016-06-01 09:29:32','2016-09-12 06:54:31','MARGARITA','NUEVA ESPARTA'),
(40,40,'JONATHAN','','RODRIGUEZ','','V','V-19508618','0000-00-00','M','4241070255','4241070255','','','V-19508618-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:09:06','CARACAS','MIRANDA'),
(41,41,'ADRIAN','','ALBARRAN','','V','V-15756766','0000-00-00','M','4248181474','4248181474','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(42,42,'ANGEL','','GARCIA','','V','20670473','0000-00-00','M','4262089910','4262089910','','','J-309503707-cedula.jpg','2016-06-01 09:29:32','2016-08-27 02:00:54','CABUDARE','LARA'),
(43,43,'RAFAEL','GREGORIO','TORREALBA','LEAL','V','8588724','0000-00-00','M','04261087177','04245458924','','','V-8588724-cedula.jpg','2016-06-01 09:29:32','2016-09-02 04:34:08','BARQUISIMETO','LARA'),
(44,44,'LISMARDO','EFREN','LOPEZ','PINTO','V','V-14407739','0000-00-00','M','4141096926','4141096926','','','V-14407739-cedula.jpg','2016-06-01 09:29:32','2016-09-28 22:18:06','EL JUNQUITO','DISTRITO CAPITAL'),
(45,45,'DARWIN','TIMONE','BERAJANO','ALVAREZ','V','V-12054544','0000-00-00','M','4142403423','4142403423','','','V-12054544-cedula.jpg','2016-06-01 09:29:32','2016-09-29 18:11:35','CARACAS','DISTRITO CAPITAL'),
(46,46,'RAFAEL','ANTONIO','SEIJAS','GUDIÑO','V','6965718','0000-00-00','M','4142854767','4142854767','','','V-6965718-cedula.jpg','2016-06-01 09:29:32','2016-10-05 12:05:50','GUATIRE','MIRANDA'),
(47,47,'LUIS','','PITA','','V','V-820551608','0000-00-00','M','4145606054','4145606054','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUANARE','PORTUGUESA'),
(48,48,'TAOUFIK','','SUKKAR','','V','V-23897335','0000-00-00','M','4148303626','4148303626','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(49,49,'MANUEL','','PIETROGRANDRE','','V','V-221081303','0000-00-00','M','4245416699','4245416699','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','OSPINO','PORTUGUESA'),
(50,50,'JESUS','','AREVALO','','V','19410398','0000-00-00','M','4121452095','4121452095','','','V-194103987-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:17:32',NULL,NULL),
(51,51,'JOSE RAMON','','PAREDES','','V','J-316803457','0000-00-00','M','4121742187','4121742187','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALERA','TRUJILLO'),
(52,52,'RICHARD','ALBERTO','PEÑARANDA','GONZALES','V','7955512','0000-00-00','M','04241446178','4122628543','','','V-7955512-cedula.jpg','2016-06-01 09:29:32','2016-10-05 12:11:39','CARACAS','DISTRITO CAPITAL'),
(53,53,'JUAN','','MACHADO','','V','V-251207255','0000-00-00','M','4129656162','4129656162','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CARLOS','COJEDES'),
(54,54,'IVAN','','SOTO','','V','J-404769420','0000-00-00','M','4141070683','4141070683','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA GUAIRA','VARGAS'),
(55,55,'EBERTO','','RENDON','','V','V-13790051','0000-00-00','M','4141624929','4141624929','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(56,56,'ROIDMAN','DANIEL','BLANCO','PIÑATE','V','15373239','0000-00-00','M','4141967210','4141967210','','','V-153732392-cedula.jpg','2016-06-01 09:29:32','2016-09-29 18:48:28','GUATIRE','MIRANDA'),
(57,57,'MIGUEL','ANGEL','VIELMA','AVEDAÑO','V','14444527','0000-00-00','M','4142926286','4142926286','','','V-14444527-cedula.jpg','2016-06-01 09:29:32','2016-10-05 12:16:04','CARACAS','DISTRITO CAPITAL'),
(58,58,'MANUEL','','TOVAR','','V','V-19684236','0000-00-00','M','4143911747','4143911747','','','V-19684236-cedula.jpg','2016-06-01 09:29:32','2016-10-03 14:47:15','OCUMARE DEL TUY','MIRANDA'),
(59,59,'NELSON','','ALVAREZ','','V','V-115264547','0000-00-00','M','4144170128','4144170128','','','V-115264547-cedula.jpg','2016-06-01 09:29:32','2016-08-16 16:00:11','VALENCIA','CARABOBO'),
(60,60,'ALIRIO','','RIVAS','','V','18003346','0000-00-00','M','4144292595','4144292595','','','J-297507922-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:14:15','VALENCIA','CARABOBO'),
(61,61,'JOSE','','CARTAYA','','V','V-13663979','0000-00-00','M','4144827650','4144827650','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(62,62,'LEONYD','','VILLALOBOS','','V','15435319','0000-00-00','M','4146344930','4146344930','','','J-402086784-cedula.jpg','2016-06-01 09:29:32','2016-09-05 21:15:39',NULL,NULL),
(63,63,'JOSE','','YANEZ','','V','V-11292369','0000-00-00','M','4146570448','4146570448','','','V-11292369-cedula.jpg','2016-06-01 09:29:32','2016-08-30 18:31:52','SAN FRANCISCO','ZULIA'),
(64,64,'JOSE','','AVENDAÑO','','V','V-10155966','0000-00-00','M','04147122580','4147122580','','','V-10155966-cedula.jpg','2016-06-01 09:29:32','2016-08-02 08:44:44','SAN CRISTOBAL ','TACHIRA'),
(65,65,'ANTONIO','','AGUILERA','','V','V-14510667','0000-00-00','M','4148941206','4148941206','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','PUERTO ORDAZ','BOLIVAR'),
(66,66,'PAUL','','OLMOS','','V','V-162661708','0000-00-00','M','4166367589','4166367589','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALERA','TRUJILLO'),
(67,67,'CESAR LEONARDO','','MARTINEZ','','V','11477795','0000-00-00','M','04146820979','4146820979','','','V-11477795-cedula.jpg','2016-06-01 09:29:32','2016-08-24 07:15:18','CORO','FALCON'),
(68,68,'ANIBAL','','MARCANO','','V','J-298854146','0000-00-00','M','4249227716','4249227716','','','J-298854146-cedula.jpg','2016-06-01 09:29:32','2016-09-29 16:12:54','MATURIN','MONAGAS'),
(69,69,'JUSTIN','','FARIAS','','V','V-136234532','0000-00-00','M','4249018833','4249018833','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(70,70,'RAFAEL','','CASTILLO','','V','J-314978845','0000-00-00','M','4249103563','4249103563','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(71,71,'ASOGRUENE','','ASOGRUENE ','','V','J-407186272','0000-00-00','M','4120956972','4120956972','','','','2016-06-01 09:29:32','2016-09-12 01:07:25','VALENCIA','CARABOBO'),
(72,72,'LEWIS','','HERNANDEZ','','V','9737729','0000-00-00','M','4265863830','4265863830','V-97377290.png','','','2016-06-01 09:29:32','2016-09-12 01:50:20','MARGARITA','NUEVA ESPARTA'),
(73,73,'DANY','','INFANTE','','V','V-12708635','0000-00-00','M','4125211867','4125211867','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','ACARIGUA','PORTUGUESA'),
(74,74,'DOUGLAS','','PIÑANGO','','V','13228532','0000-00-00','M','4140568955','4140568955','','','V-13228532-cedula.jpg','2016-06-01 09:29:32','2016-09-09 17:55:01','PIRITU','PORTUGUESA'),
(75,75,'HEMBERTH','','MEDINA','','V','14498810','0000-00-00','M','4264700237','4264700237','','','V-144988104-cedula.jpg','2016-06-01 09:29:32','2016-08-25 23:59:20','RUBIO','TACHIRA'),
(76,76,'DANIEL','','COLMENARES','','V','V-17466172','0000-00-00','M','4247535207','4247535207','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CAPACHO','TACHIRA'),
(77,77,'TONNY','','PEREZ','','V','V-108155783','0000-00-00','M','4140366725','4140366725','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','TRUJILLO','TRUJILLO'),
(78,78,'YOSMER','','ESTRADA','','V','V-24882320','0000-00-00','M','4164734196','4164734196','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(79,79,'LUIS','','DURAN','','V','V-136018252','0000-00-00','M','4128901273','4128901273','','','V-136018252-cedula.jpg','2016-06-01 09:29:32','2016-07-11 20:18:47','VALENCIA','CARABOBO'),
(81,81,'CARLOS','RUBEN','PARADAS','PEREZ','V','J-405865202','0000-00-00','M','4264522002','4262304154','','','','2016-06-01 09:29:32','2016-06-13 20:19:11','YARITAGUA','YARACUY'),
(82,82,'JONNY','','GALLO','','V','J-403136203','0000-00-00','M','4245332917','4245332917','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MIRANDA','CARABOBO'),
(83,83,'JAIRO','ANTONIO','REYES','BERTIZ','V','J-404329455','0000-00-00','M','4246192286','4246771338','','','J-404329455-cedula.jpg','2016-06-01 09:29:32','2016-08-30 18:51:32',NULL,NULL),
(84,84,'GERARDO','ANTONIO','DELGADO','FLORES','V','V-104470781','0000-00-00','M','4246815631','4167633640','V-104470781.jpg','','V-104470781-cedula.jpg','2016-06-01 09:29:32','2016-08-26 17:50:24','MARACAIBO','ZULIA'),
(85,85,'ERWIN','','GIL','','V','16493671','0000-00-00','M','4143461144','4143461144','','','V-16493671-cedula.jpg','2016-06-01 09:29:32','2016-08-26 18:13:57',NULL,NULL),
(86,86,'CARLOS','','OTERO','','V','V-20075521','0000-00-00','M','4248544775','4248544775','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','PUERTO LA CRUZ','ANZOATEGUI'),
(87,87,'LUIS','','LOPEZ','','V','V-14468514','0000-00-00','M','4248629399','4248629399','','','V-14468514-cedula.jpg','2016-06-01 09:29:32','2016-09-08 14:12:25',NULL,NULL),
(88,88,'JULIO','CESAR','JIMENEZ','VITTA','V','14644466','0000-00-00','M','4148166125','4148166125','','','V-14644466-cedula.jpg','2016-06-01 09:29:32','2016-09-24 18:36:51',NULL,NULL),
(89,89,'ARGENIS','','GONZALEZ','','V','137274872','0000-00-00','M','04143202867','04129191652','V-137274872.jpg','','J-308480061-cedula.jpg','2016-06-01 09:29:32','2017-02-03 16:52:53','EL TIGRE','ANZOATEGUI'),
(90,90,'GLETO','MARCELINO','GALINDEZ','ARIAS','V','5489197','0000-00-00','M','04148062396','4148062396','','','V-5489197-cedula.jpg','2016-06-01 09:29:32','2016-09-22 17:16:35',NULL,NULL),
(91,91,'EUGENIO ','GABRIEL','AMARO ','GONZALEZ','V','V-25773083','0000-00-00','M','4148158330','4148158330','','','V-25773083-cedula.jpg','2016-06-01 09:29:32','2016-09-17 18:17:16','EL TIGRE','ANZOATEGUI'),
(92,92,'CARLOS','','QUIJADA','','V','V-17590127','0000-00-00','M','4248918963','4248918963','','','V-17590127-cedula.jpg','2016-06-01 09:29:32','2016-09-23 18:39:36',NULL,NULL),
(93,93,'CRISTOBAL','JOSE','TERAN','GRATEROL','V','5529192','0000-00-00','M','4164122191','4164122191','','','V-5529192-cedula.jpg','2016-06-01 09:29:32','2016-10-05 12:19:46','GUATIRE','MIRANDA'),
(94,94,'JOHAN','','PEREIRA','','V','J-404469621','0000-00-00','M','4144474578','4144474578','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(95,95,'ANGEL','','PALMA','','V','V-17799215','0000-00-00','M','4145432257','4145432257','','','V-17799215-cedula.jpg','2016-06-01 09:29:32','2016-09-23 18:24:10',NULL,NULL),
(96,96,'GIOVANNI','','NUÑEZ','','V','6486776','0000-00-00','M','4241197399','4241197399','','','V-6486776-cedula.jpg','2016-06-01 09:29:32','2016-09-22 06:37:27','CARACAS','DISTRITO CAPITAL'),
(97,97,'FRANCISCO','','NAVARRO','','V','J-405314354','0000-00-00','M','4243323343','4243323343','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(98,98,'LUIS','','LAROCHE','','V','J-293809185','0000-00-00','M','4144916119','4144916119','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(99,99,'RODOLFO','','HERNANDEZ','','V','V-9411604','0000-00-00','M','4163461281','4163461281','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','TURMERO','ARAGUA'),
(100,100,'FELIX','','FARIÑA','','V','V-16692533','0000-00-00','M','04149350297','4149350297','','','V-16692533-cedula.jpg','2016-06-01 09:29:32','2016-09-22 08:07:29',NULL,NULL),
(101,101,'JUAN','','BLANCO','','V','V-13201864','0000-00-00','M','4127542210','4127542210','','','V-13201864-cedula.jpg','2016-06-01 09:29:32','2016-09-23 18:04:25',NULL,NULL),
(102,102,'FREDDY','','ARTIGAS','','V','10279450','0000-00-00','M','4143444071','4143444071','','','V-10279450-cedula.jpg','2016-06-01 09:29:32','2016-09-23 17:53:59',NULL,NULL),
(103,103,'JUAN','ENAI','ARMAS','MORALES','V','16345720','0000-00-00','M','4141440182','4141440182','','','V-163457209-cedula.jpg','2016-06-01 09:29:32','2016-09-17 22:27:28',NULL,NULL),
(104,104,'EVENCIO','','ARMAS','','V','V-86895796','0000-00-00','M','4145798902','4145798902','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(105,105,'MIGUEL','','GARCIA','','V','V-11495242','0000-00-00','M','4144551505','4144551505','','','V-11495242-cedula.jpg','2016-06-01 09:29:32','2016-09-22 08:09:51',NULL,NULL),
(106,106,'WILLIAM','','SANTIAGO','','V','14341901','0000-00-00','M','4245696342','4245696342','','','V-14341901-cedula.jpg','2016-06-01 09:29:32','2016-08-25 21:39:36','BARINAS','BARINAS'),
(107,107,'JEAN CARLOS','','SALAZAR','','V','V-167915333','0000-00-00','M','4149734116','4149734116','','','V-167915333-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:56:05','BARINAS','BARINAS'),
(108,108,'ANGELO','','RAMIREZ','','V','V-144346978','0000-00-00','M','4149997551','4149997551','','','V-144346978-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:47:57','BARINAS','BARINAS'),
(109,109,'DANI','','PRATO','','V','V-15121831','0000-00-00','M','4267787864','4267787864','','','V-15121831-cedula.jpg','2016-06-01 09:29:32','2016-08-26 18:08:22','BARINAS','BARINAS'),
(110,110,'EVANDRO','','MOLINA','','V','16126942','0000-00-00','M','4245064104','4245064104','','','V-161269421-cedula.jpg','2016-06-01 09:29:32','2016-08-25 21:47:07',NULL,NULL),
(111,111,'RAFAEL','ANTONIO','FRIAS','GUERRERO','V','V-177258683','0000-00-00','M','4247722317','4247722317','','','','2016-06-01 09:29:32','2016-06-13 07:07:46','SANTA BARBARA','BARINAS'),
(112,112,'WILMAR','','CORREA','','V','V-111862865','0000-00-00','M','4245076293','4245076293','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(113,113,'VICTOR','','CHACON','','V','V-151217229','0000-00-00','M','4145667571','4145667571','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARINAS','BARINAS'),
(114,114,'MANUEL','','BLANCO','','V','17767229','0000-00-00','M','4145462758','4145462758','','','V-17767229-cedula.jpg','2016-06-01 09:29:32','2016-08-25 22:41:52','BARINAS','BARINAS'),
(115,115,'ROMULO','','BASTIDAS','','V','14171707','0000-00-00','M','4145728720','4145728720','','','','2016-06-01 09:29:32','2016-10-11 12:36:21',NULL,NULL),
(116,116,'VICTOR','','VARGAS','','V','V-12644476','0000-00-00','M','4249495078','4249495078','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','PUERTO ORDAZ','BOLIVAR'),
(117,117,'FRAN','','MARCHAN','','V','V-152777457','0000-00-00','M','4140989120','4140989120','','','V-152777457-cedula.jpg','2016-06-01 09:29:32','2016-10-11 09:34:36','CIUDAD BOLIVAR','BOLIVAR'),
(118,118,'DOMINGO','','DIMARCO','','V','V-8892505','0000-00-00','M','4148533395','4148533395','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CIUDAD BOLIVAR','BOLIVAR'),
(121,121,'DOUGLAS','','OSTOS','','V','V-12474976','0000-00-00','M','4143405667','4143405667','','','V-12474976-cedula.jpg','2016-06-01 09:29:32','2016-07-11 21:38:41',NULL,NULL),
(122,122,'RAMON','','ARANGUREN','','V','V-9444935','0000-00-00','M','4143593106','4143593106','','','V-9444935-cedula.jpg','2016-06-01 09:29:32','2016-07-11 20:37:40',NULL,NULL),
(123,123,'ALEXANDER','','VARGAS','','V','V-21455994','0000-00-00','M','4144709892','4144709892','','','V-21455994-cedula.jpg','2016-06-01 09:29:32','2016-08-16 16:06:06',NULL,NULL),
(124,124,'JOSE','','ZAMORA','','V','V-13116158','0000-00-00','M','4244989362','4244989362','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(125,125,'JOSÉ','','ZAMORA','','V','13548606','0000-00-00','M','4124932655','4124932655','','','V-135486066-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:20:00',NULL,NULL),
(126,126,'ABRAHAM','','ZAMORA','','V','8841133','0000-00-00','M','4244095163','4244095163','','','V-88411338-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:18:52','VALENCIA','CARABOBO'),
(127,127,'WILLIAM','','VALDIVEZ','','V','V-5384538','0000-00-00','M','4244989746','4244989746','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(128,128,'JAVIER','','HERNANDEZ','','V','14583310','0000-00-00','M','4242988833','4242988833','','','V-14583310-cedula.jpg','2016-06-01 09:29:32','2016-10-01 22:28:35','CARACAS','DISTRITO CAPITAL'),
(129,129,'DAVID','','URBINA','','V','V-18130314','0000-00-00','M','4244286984','4244286984','V-18130314.jpg','','V-18130314-cedula.jpg','2016-06-01 09:29:32','2016-07-11 22:33:26','VALENCIA','CARABOBO'),
(130,130,'FERNANDO','','SUAREZ','','V','V-7102444','0000-00-00','M','4143498859','4143498859','','','V-7102444-cedula.jpg','2016-06-01 09:29:32','2016-07-11 23:54:39',NULL,NULL),
(132,132,'DANIEL','','SILVA','','V','14464056','0000-00-00','M','4125011995','4125011995','','','V-14464056-cedula.jpg','2016-06-01 09:29:32','2016-08-19 04:57:13','VALENCIA','CARABOBO'),
(134,134,'TONY','','RODRIGUEZ','','V','V-107978387','0000-00-00','M','4145937629','4145937629','','','V-107978387-cedula.jpg','2016-06-01 09:29:32','2016-08-16 16:36:34',NULL,NULL),
(135,135,'JESUS','','RINCÓN','','V','V-71141965','0000-00-00','M','4144203809','4144203809','','','V-71141965-cedula.jpg','2016-06-01 09:29:32','2016-08-16 17:13:14','VALENCIA','CARABOBO'),
(136,136,'RAMON','','PEREZ','','V','J-297772952','0000-00-00','M','4121439215','4121439215','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(137,137,'NIMROOD','','PEREZ','','V','V-71378051','0000-00-00','M','4145939304','4145939304','','','V-71378051-cedula.jpg','2016-06-01 09:29:32','2016-08-16 17:17:13','VALENCIA','CARABOBO'),
(138,138,'RUBEN','','PARRA','','V','10076580','0000-00-00','M','4169424666','4169424666','','','J-402540450-cedula.jpg','2016-06-01 09:29:32','2016-07-12 05:24:42','VALENCIA','CARABOBO'),
(139,139,'ELVIS','','MORALES','','V','V-16243064','0000-00-00','M','4246957387','4246957387','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(140,140,'JOSE','','MORALES','','V','12393706','0000-00-00','M','4125121232','4125121232','','','V-12393706-cedula.jpg','2016-06-01 09:29:32','2016-07-22 03:36:18','VALENCIA','CARABOBO'),
(141,141,'MAXIMILIANO','','MIRANDA','','V','11489372','0000-00-00','M','4144130472','4144130472','','','V-114893729-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:12:30',NULL,NULL),
(142,142,'DERBIN','','MEZA','','V','16447058','0000-00-00','M','04148829880','4148829880','','','','2016-06-01 09:29:32','2016-11-19 18:53:32','VALENCIA','CARABOBO'),
(143,143,'LUIS','','MATA','','V','V-15596375','0000-00-00','M','4140402516','4140402516','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(144,144,'SANTOS','','MARTINEZ','','V','V-71291916','0000-00-00','M','4144274805','4144274805','','','V-71291916-cedula.jpg','2016-06-01 09:29:32','2016-08-16 18:04:23','VALENCIA','CARABOBO'),
(145,145,'HECTOR','Aristides','IRUMBA','Leon','V','V-139621898','0000-00-00','M','4141431911','04167315791','','','V-139621898-cedula.jpg','2016-06-01 09:29:32','2016-10-11 12:04:53','VALENCIA','CARABOBO'),
(146,146,'ANDERSON','','HERRERA','','V','14869764','0000-00-00','M','4141379874','4141379874','','','V-14869764-cedula.jpg','2016-06-01 09:29:32','2016-08-24 20:03:47','VALENCIA','CARABOBO'),
(147,147,'EFRAIN','','HERNANDEZ','','V','12108712','0000-00-00','M','4244412134','4244412134','','','J-298335262-cedula.jpg','2016-06-01 09:29:32','2016-09-21 22:58:35','PUERTO CABELLO','CARABOBO'),
(148,148,'LUIS','','HERNANDEZ','','V','12031877','0000-00-00','M','4128962877','4128962877','','','','2016-06-01 09:29:32','2016-07-12 07:22:01','VALENCIA','CARABOBO'),
(149,149,'ROBERTO','','GUILLEN','','V','V-18660260','0000-00-00','M','4244744610','4244744610','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(151,151,'JOSE','','GARCIA','','V','18686124','0000-00-00','M','4128447915','4128447915','','','V-18686124-cedula.jpg','2016-06-01 09:29:32','2016-08-18 22:04:44','VALENCIA','CARABOBO'),
(153,153,'EDISON','','FLORES','','V','V-7144984','0000-00-00','M','4144149576','4144149576','','','V-7144984-cedula.jpg','2016-06-01 09:29:32','2016-08-16 18:15:53','VALENCIA','CARABOBO'),
(154,154,'LUIS','','FERNANDEZ','','V','V-15915267','0000-00-00','M','4121359807','4121359807','','','V-15915267-cedula.jpg','2016-06-01 09:29:32','2016-07-11 17:53:11',NULL,NULL),
(155,155,'EMILIO','','ESCALANTE','','V','V-195247338','0000-00-00','M','4149428988','4149428988','','','V-195247338-cedula.jpg','2016-06-01 09:29:32','2016-07-11 19:44:49','VALENCIA','CARABOBO'),
(156,156,'Jose','Miguel','NAVEDA','Granje','V','27630840','0000-00-00','M','04128916905','04128916905','J-405780100.jpg','','','2016-06-01 09:29:32','2016-09-15 12:40:17','CORO','FALCON'),
(157,157,'JONATHAN','','DIAZ','','V','V-144178897','0000-00-00','M','4124669217','4124669217','','','V-144178897-cedula.jpg','2016-06-01 09:29:32','2016-08-18 22:19:56','PUERTO CABELLO','CARABOBO'),
(158,158,'CARLOS','','CONTRERAS','','V','24571404','0000-00-00','M','4244263777','4244263777','','','V-245714048-cedula.jpg','2016-06-01 09:29:32','2016-08-17 19:11:28','VALENCIA','CARABOBO'),
(159,159,'JOSÉ','','CONTRERAS','','V','V23064907','0000-00-00','M','4244339130','4244339130','','','V-23064907-cedula.jpg','2016-06-01 09:29:32','2016-08-18 21:58:22','VALENCIA','CARABOBO'),
(160,160,'FRANCISCO','','OVIEDO','','V','V-11347344','0000-00-00','M','4144362722','4144362722','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(161,161,'RAFAEL','','CEBALLOS','','V','V-12318253','0000-00-00','M','4144191725','4144191725','','','V-12318253-cedula.jpg','2016-06-01 09:29:32','2016-07-11 16:32:11',NULL,NULL),
(162,162,'CARLOS','','CARREYO','','V','V-17903674','0000-00-00','M','4244346222','4244346222','','','V-17903674-cedula.jpg','2016-06-01 09:29:32','2016-07-11 19:19:27',NULL,NULL),
(163,163,'ALEXANDER','','AVILA','','V','205130888','0000-00-00','M','4244954715','4244954715','','','J-404936157-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:15:47',NULL,NULL),
(164,164,'JORGE','','ARRAEZ','','V','7435782','0000-00-00','M','4141424244','4141424244','','','V-74357829-cedula.jpg','2016-06-01 09:29:32','2016-08-18 21:43:16','VALENCIA','CARABOBO'),
(165,165,'WIDERMIS','','ARGUELLO','','V','V-22003441','0000-00-00','M','4127772056','4127772056','','','V-22003441-cedula.jpg','2016-06-01 09:29:32','2016-08-18 21:39:48',NULL,NULL),
(166,166,'CARLOS','','AREVALO','','V','V-18627399','0000-00-00','M','4124075092','4124075092','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','VALENCIA','CARABOBO'),
(167,167,'TRANSPORTE ','','PARAMACONI 305, C.A','','J','296883890','0000-00-00','M','4145973434','4144207396','','','J-296883890-cedula.jpg','2016-06-01 09:29:32','2016-09-27 20:04:35','NAGUANAGUA','CARABOBO'),
(169,169,'LIMBER','','ACOSTA','','V','7111458','0000-00-00','M','4244528532','4244528532','','','J-298479442-cedula.jpg','2016-06-01 09:29:32','2016-08-19 05:28:55','VALENCIA','CARABOBO'),
(170,170,'RUBEN','','PURO','','V','12382615','0000-00-00','M','4127795599','4127795599','','','V-12382615-cedula.jpg','2016-06-01 09:29:32','2016-08-18 19:54:06','VALENCIA','CARABOBO'),
(171,171,'JOSE','daniel','ZAMORA','rojas','V','16154638','0000-00-00','M','4145918414','4145918414','','','V-161546387-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:18:06','VALENCIA','CARABOBO'),
(172,172,'ARGENIS','','SEIJAS','','V','18746726','0000-00-00','M','4244684329','4244684329','','','V-187467264-cedula.jpg','2016-06-01 09:29:32','2016-08-17 19:15:39','VALENCIA','CARABOBO'),
(173,173,'GREGORY','','TARAZONA','','V','V-18347244','0000-00-00','M','4124080838','4124080838','','','V-18347244-cedula.jpg','2016-06-01 09:29:32','2016-07-11 20:56:23','SAN DIEGO','CARABOBO'),
(174,174,'OSCAR','','LOPEZ','','V','J-297189866','0000-00-00','M','4244092699','4244092699','','','J-297189866-cedula.jpg','2016-06-01 09:29:32','2016-08-16 18:33:27',NULL,NULL),
(175,175,'JESUS','','SUAREZ','','V','19502540','0000-00-00','M','4247308006','4247308006','','','V-195025408-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:14:50','VALENCIA','CARABOBO'),
(176,176,'XAVIER','','HENRIQUEZ','','V','15108601','0000-00-00','M','4245789286','4245789286','','','V-15108601-cedula.jpg','2016-06-01 09:29:32','2016-08-17 19:22:09',NULL,NULL),
(177,177,'JOSE','','RIVERO','','V','V-141122785','0000-00-00','M','4145958570','4145958570','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CARLOS','COJEDES'),
(178,178,'MELVIN','','CAMPOS','','V','V-9413227','0000-00-00','M','4244554792','4244554792','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CARLOS','COJEDES'),
(179,179,'EDUARDO','','AVILA','','V','V-16423934','0000-00-00','M','4124021470','4124021470','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CARLOS','COJEDES'),
(180,180,'HECTOR','','ACOSTA','','V','V-13441715','0000-00-00','M','4145957718','4145957718','','','V-13441715-cedula.jpg','2016-06-01 09:29:32','2016-11-01 17:37:35','SAN CARLOS','COJEDES'),
(181,181,'JESUS','','HERNANDEZ','','V','157902292','0000-00-00','M','4120897047','4120897047','','','V-157902292-cedula.jpg','2016-06-01 09:29:32','2016-08-14 01:03:13','TUCUPITA','DELTA AMACURO'),
(182,182,'MIGUEL','ANTONIO','ZOLLO','GUERRERO','V','10819537','0000-00-00','M','4142761757','4142761757','','','V-10819537-cedula.jpg','2016-06-01 09:29:32','2016-10-04 08:15:17','CARACAS','DISTRITO CAPITAL'),
(183,183,'ANGEL','JOSE','VIELMA','AVENDAÑO','V','16681693','0000-00-00','M','4241101259','4241101259','','','V-16681693-cedula.jpg','2016-06-01 09:29:32','2016-10-11 09:39:06','CARACAS','DISTRITO CAPITAL'),
(184,184,'JEAN','CARLOS','TORRES','CACERES','V','12783981','0000-00-00','M','4141375346','4141375346','','','V-12783981-cedula.jpg','2016-06-01 09:29:32','2016-10-04 08:22:28','CARACAS','DISTRITO CAPITAL'),
(185,185,'RAFAEL','DE JESUS','SOTO','MENCO','V','14166427','0000-00-00','M','4141257398','4141257398','','','V-14166427-cedula.jpg','2016-06-01 09:29:32','2016-10-07 11:07:05','CARACAS','DISTRITO CAPITAL'),
(186,186,'EDGAR','ALEJANDRO','SILVA','DIAZ','V','17588689','0000-00-00','M','4265111415','4265111415','','','V-17588689-cedula.jpg','2016-06-01 09:29:32','2016-10-04 08:36:31','CARACAS','DISTRITO CAPITAL'),
(187,187,'CESAR','LUIS','RODRIGUEZ','TIRONA','V','6930123','0000-00-00','M','4143080366','4143080366','','','V-6930123-cedula.jpg','2016-06-01 09:29:32','2016-10-04 08:52:00','CARACAS','MIRANDA'),
(188,188,'CARLOS','JOSE','RAMOS','CONTRERAS','V','17974685','0000-00-00','M','4263054553','4263054553','V-179746855.jpg','','V-17974685-cedula.jpg','2016-06-01 09:29:32','2016-10-07 11:12:28','CARACAS','DISTRITO CAPITAL'),
(189,189,'DUOGLAS','','OSORIO','','V','J-405114223','0000-00-00','M','4149201105','4149201105','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(190,190,'REISNEL','','OLIVEROS','','V','V-166836960','0000-00-00','M','4242301970','4242301970','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(191,191,'DANNY','JOSE','IBARRA','DEVIZ','V','14407188','0000-00-00','M','4141630878','4141630878','','','V-14407188-cedula.jpg','2016-06-01 09:29:32','2016-10-07 11:16:21','CARACAS','DISTRITO CAPITAL'),
(192,192,'YORGENIS','OSWALDO','GONZALEZ','MONTERREI','V','V-18357945','0000-00-00','M','4241530799','4241530799','','','V-18357945-cedula.jpg','2016-06-01 09:29:32','2016-10-11 09:42:55','CARACAS','DISTRITO CAPITAL'),
(193,193,'ANDERSON','','GARCIA','','V','V-200518540','0000-00-00','M','4142561599','4142561599','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(194,194,'WELBYS','','GARCIA','','V','13697385','0000-00-00','M','4143397611','4143397611','','','V-136973858-cedula.jpg','2016-06-01 09:29:32','2016-10-05 10:34:34','CARACAS','DISTRITO CAPITAL'),
(196,196,'RAMÓN','','BRICEÑO','','V','J-315873974','0000-00-00','M','4142854569','4142854569','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(197,197,'OSMARLIN','','GUTIERREZ','','V','V-99692452','0000-00-00','M','4148458047','4148458047','','','V-99692452-cedula.jpg','2016-06-01 09:29:32','2016-10-18 20:07:53','CARACAS','MIRANDA'),
(198,198,'Juan','Francisco','Rasse','Gonzalez','V','V-153430841','0000-00-00','M','4143328987','4143328987','','','','2016-06-01 09:29:32','2016-06-19 04:12:23','CARACAS','DISTRITO CAPITAL'),
(200,200,'ABRAHAM','','CABRERA','','V','16682891','0000-00-00','M','4243398447','4243398447','','','','2016-06-01 09:29:32','2016-10-11 14:11:06','CARACAS','DISTRITO CAPITAL'),
(201,201,'FERNANDO','','BRICEÑO','','V','V-13951495','0000-00-00','M','4241152945','4241152945','','','V-13951495-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:03:49','CARACAS','DISTRITO CAPITAL'),
(202,202,'JOSE','','URBINA','','V','V-6292454','0000-00-00','M','4143377129','4143377129','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(203,203,'MERVIN','','PARRA','','V','J-402492537','0000-00-00','M','4169019199','4169019199','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(204,204,'MARCOS','','NUÑEZ','','V','J-295056079','0000-00-00','M','04142570064','4142570064','J-295056079.jpg','','','2016-06-01 09:29:32','2016-06-24 16:51:35','CARACAS','DISTRITO CAPITAL'),
(205,205,'JESUS','','MONTILLA','','V','J-298133147','0000-00-00','M','4143151927','4143151927','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(206,206,'REINALDO','','MENDEZ','','V','J-317385799','0000-00-00','M','04142452383','04129210262','J-317385799.jpg','','','2016-06-01 09:29:32','2016-06-28 16:26:43','CARACAS','DISTRITO CAPITAL'),
(207,207,'FILIBERTO','','LOPEZ','','V','V-10489616','0000-00-00','M','4242107850','4242107850','','','V-10489616-cedula.jpg','2016-06-01 09:29:32','2016-09-19 15:51:22','JUNQUITO','MIRANDA'),
(209,209,'MIGUEL','','GUTIERREZ','','V','17815328','0000-00-00','M','4123362522','4123362522','','','V-17815328-cedula.jpg','2016-06-01 09:29:32','2016-10-05 17:52:31','GUARENAS','MIRANDA'),
(210,210,'JOSE','','GUERRERO','','V','V16744123','0000-00-00','M','4244466326','4244466326','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(211,211,'ANTONIO','','GONZALEZ','','V','13686739','0000-00-00','M','4141283181','4141283181','','','V-13686739-cedula.jpg','2016-06-01 09:29:32','2016-10-05 11:00:40','CARACAS','DISTRITO CAPITAL'),
(212,212,'DIEGO','','GOMEZ','','V','J-405706503','0000-00-00','M','4141064693','4141064693','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(213,213,'CRISTIAN','','FERNANDEZ','','V','16004873','0000-00-00','M','4140149054','4140149054','','','V-16004873-cedula.jpg','2016-06-01 09:29:32','2016-10-11 14:19:56','CARACAS','DISTRITO CAPITAL'),
(214,214,'JOSE','','FIGARELA','','V','J-307878630','0000-00-00','M','4165387628','4165387628','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(215,215,'ANTONIO','','FERNANDEZ','','V','V-180384541','0000-00-00','M','4164286525','4164286525','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(216,216,'LUIS','','ESTANGA','','V','V-403031886','0000-00-00','M','4243119933','4243119933','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(217,217,'HARRISON','','CUEVAS','','V','V-12711500','0000-00-00','M','4141739022','4141739022','','','V-12711500-cedula.jpg','2016-06-01 09:29:32','2016-10-05 10:30:33','CARACAS','DISTRITO CAPITAL'),
(218,218,'LUPO','','CALDERON','','V','24224321','0000-00-00','M','4142393481','4142393481','','','J-404040730-cedula.jpg','2016-06-01 09:29:32','2016-11-17 19:46:15','CARACAS','DISTRITO CAPITAL'),
(219,219,'JORGE','','RODRIGUEZ','','V','V-17123023','0000-00-00','M','4142649255','4142649255','','','V-17123023-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:06:24','CARACAS','MIRANDA'),
(220,220,'MANUEL','','RODRIGUEZ','','V','V-6844399','0000-00-00','M','4242722363','4242722363','','','V-6844399-cedula.jpg','2016-06-01 09:29:32','2016-10-05 10:01:05','CARACAS','DISTRITO CAPITAL'),
(221,221,'EDGANDER','','ROMANO','','V','12733635','0000-00-00','M','4146842942','4146842942','','','V-12733635-cedula.jpg','2016-06-01 09:29:32','2016-10-11 14:26:59','CORO','FALCON'),
(223,223,'SEBASTIAN','','HERNANDEZ','','V','6106583','0000-00-00','M','4146969138','4146969138','','','V-6106583-cedula.jpg','2016-06-01 09:29:32','2016-08-24 19:39:30',NULL,NULL),
(224,224,'LUIS','','GUANIPA','','V','V-201448154','0000-00-00','M','4244740291','4244740291','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CORO','FALCON'),
(225,225,'DENNIS','','FERNANDEZ','','V','V-60090110','0000-00-00','M','4146844405','4146844405','','','V-60090110-cedula.jpg','2016-06-01 09:29:32','2016-08-24 19:51:52',NULL,NULL),
(226,226,'JEAN','','ESPINOZA','','V','V-19672830','0000-00-00','M','4123797464','4123797464','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CORO','FALCON'),
(227,227,'HECTOR','EIRNAR','BRAVO','ROMERO','V','V-139027155','0000-00-00','M','4146832507','04163674865','V-139027155.jpg','','V-139027155-cedula.jpg','2016-06-01 09:29:32','2016-08-24 07:30:59','CORO','FALCON'),
(228,228,'ORZON','','MENDEZ','','V','V-179236180','0000-00-00','M','4127435801','4127435801','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(229,229,'ALEXNDER','','FIRIT','','V','J-299526568','0000-00-00','M','4267387688','4267387688','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CORO','FALCON'),
(230,230,'GUSTAVO','','SARMIENTO','','V','J-402536747','0000-00-00','M','4126512472','4164621222','','','J-402536747-cedula.jpg','2016-06-01 09:29:32','2016-09-28 19:08:51','CORO','FALCON'),
(231,231,'ALBIN','RAFAEL','NAVEDA','GRANJE','V','J-405780100','0000-00-00','M','04120422133','4128916905','','','','2016-06-01 09:29:32','2016-06-03 05:13:29','CORO','FALCON'),
(232,232,'FRANK','','MANZINI','','V','J-293940109','0000-00-00','M','4127127923','4127127923','','','J-293940109-cedula.jpg','2016-06-01 09:29:32','2016-08-24 20:25:16','CORO','FALCON'),
(233,233,'REYKAR','0SWALDO','RODRIGUEZ','SANCHEZ','V','J-406183946','0000-00-00','M','04124053188','04164301869','','','J-406183946-cedula.jpg','2016-06-01 09:29:32','2016-08-24 07:22:24',NULL,NULL),
(234,234,'MIGUEL','','BRAVO','','V','V-95199875','0000-00-00','M','4128645088','4128645088','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(235,235,'EDWIN','','BAUTE','','V','V-155459839','0000-00-00','M','4149895146','4149895146','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA GUAIRA','VARGAS'),
(236,236,'MIGUEL','','PERALTA','','V','V-125355419','0000-00-00','M','4145520705','4145520705','','','V-125355419-cedula.jpg','2016-06-01 09:29:32','2016-07-20 06:54:58','BARQUISIMETO','LARA'),
(237,237,'JOSE','','RODRIGUEZ','','V','V-19432916','0000-00-00','M','4245304180','4245304180','','','V-19432916-cedula.jpg','2016-06-01 09:29:32','2016-08-18 17:28:51','BARQUISIMETO','LARA'),
(238,238,'NAPOLEON','','CARRASCO','','V','7426869','0000-00-00','M','4145228181','4145228181','','','V-74268699-cedula.jpg','2016-06-01 09:29:32','2016-08-14 01:05:29','BARQUISIMETO','LARA'),
(239,239,'ANTONY','','PEREZ','','V','V-189219969','0000-00-00','M','4247697810','4247697810','','','V-189219969-cedula.jpg','2016-06-01 09:29:32','2016-08-14 01:45:28','BARQUISIMETO','LARA'),
(240,240,'ORLANDO','','PEREZ','','V','15776571','0000-00-00','M','4245213740','4245213740','','','V-15776571-cedula.jpg','2016-06-01 09:29:32','2016-07-21 08:10:11','BARQUISIMETO','LARA'),
(241,241,'DANIEL','','ORFELI','','V','15448482','0000-00-00','M','4160581007','4160581007','','','V-154484821-cedula.jpg','2016-06-01 09:29:32','2016-08-21 03:57:46','BARQUISIMETO','LARA'),
(242,242,'OSCAR DONATO','','MELIDEO','','V','V-167956757','0000-00-00','M','4245090747','4245090747','','','V-167956757-cedula.jpg','2016-06-01 09:29:32','2016-08-14 02:08:12','CABUDARE','LARA'),
(243,243,'ALDEMARO','','CASAMAYOR','','V','14590514','0000-00-00','M','04245324693','4245324693','','','V-14590514-cedula.jpg','2016-06-01 09:29:32','2016-07-20 12:07:57','CABUDARE','LARA'),
(244,244,'JOHAN','','ABRAHAN','','V','V-182618442','0000-00-00','M','4245267553','4245267553','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(245,245,'RUBEN','','TORRES','','V','V-164049333','0000-00-00','M','4245251507','4245251507','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CABUDARE','LARA'),
(247,247,'JAIRO','','TORREALBA','','V','V-11314948','0000-00-00','M','4165015045','4165015045','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(248,248,'JOSÉ','','SUAREZ','','V','V-165844579','0000-00-00','M','04145117224','4145117224','','','','2016-06-01 09:29:32','2016-07-21 08:28:53',NULL,NULL),
(249,249,'MIGUEL','ANGEL','SOTO','VILLEGAS','V','8518420','0000-00-00','M','04145667110','04261514089','','','V-8518420-cedula.jpg','2016-06-01 09:29:32','2016-08-06 23:49:33','BARQUISIMETO','LARA'),
(250,250,'MANAURE','','SILVA','','V','V-19726925','0000-00-00','M','4145584772','4145584772','','','V-19726925-cedula.jpg','2016-06-01 09:29:32','2016-07-20 07:39:29',NULL,NULL),
(252,252,'PANFILO','','SANABRIA','','V','V-19901068','0000-00-00','M','4245991713','4245991713','','','V-19901068-cedula.jpg','2016-06-01 09:29:32','2016-07-21 08:02:47','BARQUISIMETO','LARA'),
(253,253,'JONATHAN','','ROSALES','','V','V-184221345','0000-00-00','M','4245578547','4245578547','','','V-184221345-cedula.jpg','2016-06-01 09:29:32','2016-07-20 08:38:44','CABUDARE ','LARA'),
(254,254,'IVAN','','ARRAEZ','','V','V-17506214','0000-00-00','M','4263567129','4263567129','','','V-17506214-cedula.jpg','2016-06-01 09:29:32','2016-08-14 03:51:30','CABUDARE ','LARA'),
(255,255,'DENNIS','','RODRIGUEZ','','V','V-103181239','0000-00-00','M','4166518532','4166518532','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(256,256,'JOSE','','PEROZA','','V','V-16898855','0000-00-00','M','4145356766','4145356766','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(257,257,'NOÉ','GERARDO','PEREZ','ALVAREZ','V','16750664','0000-00-00','M','04145674609','4167520356','','','V-16750664-cedula.jpg','2016-06-01 09:29:32','2016-07-20 10:44:39','BARQUISIMETO','LARA'),
(258,258,'DAVID','','PEREZ','','V','25541638','0000-00-00','M','4144067657','4144067657','','','','2016-06-01 09:29:32','2016-08-21 02:11:49','BARQUISIMETO','LARA'),
(259,259,'ALFREDO','JOSE','NAVAS','GOMEZ','V','14590669','0000-00-00','M','4145738159','4145738159','J-407265580.jpg','','','2016-06-01 09:29:32','2016-08-14 23:21:49','BARQUISIMETO','LARA'),
(260,260,'JOSE','','MOLLEJA','','V','V-168042767','0000-00-00','M','4245616581','4245616581','','','V-168042767-cedula.jpg','2016-06-01 09:29:32','2016-08-18 17:24:58',NULL,NULL),
(261,261,'LUIS','','MERINO','','V','11879806','0000-00-00','M','04145095502','4145095502','','','V-11879806-cedula.jpg','2016-06-01 09:29:32','2016-07-21 07:58:29','BARQUISIMETO','LARA'),
(262,262,'OSWALDO JOSE','','MARTINEZ','','V','V-189223443','0000-00-00','M','4267590039','4267590039','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','TOCUYO','LARA'),
(263,263,'JOAN','MANUEL','TIMAURE','','V','J-405519720','0000-00-00','M','4163540669','4163540669','','','','2016-06-01 09:29:32','2016-08-15 09:16:01','BARQUISIMETO','LARA'),
(264,264,'ALBERTO','','LOPEZ','','V','19590560','0000-00-00','M','4245776684','4245776684','','','','2016-06-01 09:29:32','2016-08-15 00:30:42','BARQUISIMETO','LARA'),
(265,265,'WILMER','','LEÓN','','V','13644139','0000-00-00','M','4245163642','4245163642','','','V-13644139-cedula.jpg','2016-06-01 09:29:32','2016-08-15 23:04:35','BARQUISIMETO','LARA'),
(266,266,'LUIS','','GONZALEZ','','V','V-15817277','0000-00-00','M','4145151994','4145151994','','','V-15817277-cedula.jpg','2016-06-01 09:29:32','2016-07-20 07:03:45','BARQUISIMETO','LARA'),
(267,267,'LUIS','','GONZALEZ','','V','V-20500294','0000-00-00','M','4245384442','4245384442','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(268,268,'GIBSON','','GARCIA','','V','7412271','0000-00-00','M','4145090868','4145090868','','','V-7412271-cedula.jpg','2016-06-01 09:29:32','2016-07-20 07:28:54','BARQUISIMETO','LARA'),
(269,269,'JOSE','','FERNANDEZ','','V','12452628','0000-00-00','M','04145229962','4145229962','','','J-401384331-cedula.jpg','2016-06-01 09:29:32','2016-07-20 10:23:50',NULL,NULL),
(270,270,'JOSICH','','ENSINOZA','','V','V-16089098','0000-00-00','M','4149734120','4149734120','','','V-16089098-cedula.jpg','2016-06-01 09:29:32','2016-07-20 09:01:55',NULL,NULL),
(271,271,'CARLOS','','CORDERO','','V','V-19106169','0000-00-00','M','4145303257','4145303257','V-19106169.jpg','','V-19106169-cedula.jpg','2016-06-01 09:29:32','2016-08-15 00:59:44','BARQUISIMETO','LARA'),
(272,272,'ELISAUL','','ARRIECHE','','V','V-9614853','0000-00-00','M','4145015002','4145015002','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(273,273,'ENDERSON','','ARRIECHE','','V','V-19106412','0000-00-00','M','4245533906','4245533906','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(276,276,'ELISANDRO','','ARRIECHE','','V','V-16277442','0000-00-00','M','04140579686','4140579586','','','V-16277442-cedula.jpg','2016-06-01 09:29:32','2016-07-20 11:23:56','BARQUISIMETO','LARA'),
(277,277,'FREDDY','','MENDOZA','','V','V-198835095','0000-00-00','M','4145069448','4145069448','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(278,278,'HERMES','','GIL','','V','13266879','0000-00-00','M','04145202990','4145202990','','','V-132668791-cedula.jpg','2016-06-01 09:29:32','2016-07-24 07:54:18','NIRGUA','YARACUY'),
(279,279,'DARWIN','','MOLINA','','V','14749624','0000-00-00','M','4149539152','4149539152','','','V-147496245-cedula.jpg','2016-06-01 09:29:32','2016-08-15 02:51:46','BARQUISIMETO','LARA'),
(280,280,'SAMUEL','','MEDINA','','V','J-401491529','0000-00-00','M','4166565318','4166565318','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(281,281,'JESUS','','RUIZ','','V','V-11308010','0000-00-00','M','4149543202','4149543202','','','V-11308010-cedula.jpg','2016-06-01 09:29:32','2016-08-15 02:59:21','BARQUISIMETO','LARA'),
(284,284,'OLI','','VIELMA','','V','J-316521338','0000-00-00','M','04147450040','4147450040','','','','2016-06-01 09:29:32','2016-07-26 10:46:23','MERIDA','MERIDA'),
(285,285,'HENRY','','VIELMA','','V','15922587','0000-00-00','M','04265739429','4265739429','','','V-15922587-cedula.jpg','2016-06-01 09:29:32','2016-09-06 07:59:18','MERIDA','MERIDA'),
(286,286,'LANDER','','SALSEDO','','V','14438384','0000-00-00','M','4265127211','4265127211','','','V-14438384-cedula.jpg','2016-06-01 09:29:32','2016-07-26 08:25:36','CARACCIOLO PARRA OLMEDO','MERIDA'),
(287,287,'LEONARDO','','RONDON','','V','V-8086180','0000-00-00','M','4247741348','4247741348','','','V-8086180-cedula.jpg','2016-06-01 09:29:32','2016-09-06 07:43:35','MERIDA','MERIDA'),
(288,288,'LUIS','','RIVAS','','V','22657431','0000-00-00','M','04160101066','4160101066','','','V-22657431-cedula.jpg','2016-06-01 09:29:32','2016-07-26 10:26:36',NULL,NULL),
(289,289,'JONDY','','RIVAS','','V','V-90317012','0000-00-00','M','4247171782','4247171782','','','V-90317012-cedula.jpg','2016-06-01 09:29:32','2016-09-09 11:10:10','MERIDA','MERIDA'),
(290,290,'LEONARDO','','RIVAS','','V','V-145883705','0000-00-00','M','4264263200','4264263200','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(291,291,'JOSE','','PARRA','','V','12355030','0000-00-00','M','04147121580','4147121580','','','V-12355030-cedula.jpg','2016-06-01 09:29:32','2016-07-26 09:20:38',NULL,NULL),
(292,292,'JUAN','','PARRA','','V','V-123462790','0000-00-00','M','4129799032','4129799032','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(293,293,'RAFAEL','','PARRA','','V','V-15594482','0000-00-00','M','04149798262','4149798262','','','V-15594482-cedula.jpg','2016-06-01 09:29:32','2016-07-26 11:15:24',NULL,NULL),
(294,294,'NIXON','','OSUNA','','V','V-16741681','0000-00-00','M','04147129516','4147129516','','','V-16741681-cedula.jpg','2016-06-01 09:29:32','2016-07-26 07:48:20','OBISPO RAMOS DE LORA','MERIDA'),
(295,295,'MAURICIO','','MOLINA','','V','14287940','0000-00-00','M','04143750128','4143750128','','','V-14287940-cedula.jpg','2016-06-01 09:29:32','2016-07-26 11:57:25',NULL,NULL),
(296,296,'RICHARD','','MENDEZ','','V','10691505','0000-00-00','M','4247207550','4247207550','','','V-10691505-cedula.jpg','2016-06-01 09:29:32','2016-08-25 08:23:44','MERIDA','MERIDA'),
(297,297,'JOSE LUIS','','MANTILLA','','V','9103253','0000-00-00','M','04144293602','4144293602','','','V-9103253-cedula.jpg','2016-06-01 09:29:32','2016-07-26 09:15:40',NULL,NULL),
(298,298,'OSWALDO','','LINARES','','V','8036926','0000-00-00','M','4165754476','4165754476','','','V-80295886-cedula.jpg','2016-06-01 09:29:32','2017-02-04 10:40:17','MERIDA','MERIDA'),
(299,299,'DAVID','','GUILLEN','','V','V-150323343','0000-00-00','M','4147482181','4147482181','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(300,300,'JAIME','','GUERERE','','V','V-130645107','0000-00-00','M','4147304813','4147304813','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(301,301,'JAVIER','','GARCIA','','V','V-16742818','0000-00-00','M','04248682330','4248682330','','','V-16742818-cedula.jpg','2016-06-01 09:29:32','2016-07-26 10:18:08',NULL,NULL),
(302,302,'RENE','','ESPINOZA','','V','V-166559311','0000-00-00','M','04168770072','4168770072','','','','2016-06-01 09:29:32','2016-09-06 07:53:24','MERIDA','MERIDA'),
(303,303,'JOSE','','DUGARTE','','V','12779610','0000-00-00','M','04269750902','4269750902','','','V-12779610-cedula.jpg','2016-06-01 09:29:32','2016-07-26 11:21:00',NULL,NULL),
(304,304,'LEONEL','','DIAZ','','V','V-119527003','0000-00-00','M','4160774854','4160774854','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(305,305,'NIXON','','DEVIA','','E','81480353','0000-00-00','M','4247117713','4247117713','','','','2016-06-01 09:29:32','2016-08-14 01:18:33','MERIDA','MERIDA'),
(307,307,'EVEN','','ALVAREZ','','V','V-156212535','0000-00-00','M','4247100206','4247100206','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MERIDA','MERIDA'),
(308,308,'GERARDO','','ALMEIDA','','V','V-16680944','0000-00-00','M','04247238351','4247238351','','','V-16680944-cedula.jpg','2016-06-01 09:29:32','2016-09-06 08:09:04','MERIDA','MERIDA'),
(309,309,'JONATHAN','','ALMEIDA','','V','V-22989387','0000-00-00','M','4164722471','4164722471','','','V-22989387-cedula.jpg','2016-06-01 09:29:32','2016-08-08 03:32:33','MERDA','MERIDA'),
(310,310,'PEDRO','','ALBARRAN','','V','17239848','0000-00-00','M','4247067888','4247067888','','','V-17239848-cedula.jpg','2016-06-01 09:29:32','2016-07-26 08:54:29','MERIDA','MERIDA'),
(311,311,'HECTOR','EDINSON','ARELLANO','RAMIREZ','V','11070883','0000-00-00','M','04141817375','4141817375','','','V-11070883-cedula.jpg','2016-06-01 09:29:32','2016-09-06 08:39:03','MERIDA','MERIDA'),
(312,312,'LENIN','','ZERPA','','V','V-80318207','0000-00-00','M','04147446144','4147446144','','','V-80318207-cedula.jpg','2016-06-01 09:29:32','2016-07-26 08:11:26',NULL,NULL),
(313,313,'YORMAN','','RIVAS','','V','17129041','0000-00-00','M','4166729296','4166729296','','','V-17129041-cedula.jpg','2016-06-01 09:29:32','2016-07-26 09:54:47','MERIDA','MERIDA'),
(314,314,'ELIDE','','QUINTERO','','V','8000633','0000-00-00','M','04163703397','4166749955','V-80006337.jpg','','V-8000633-cedula.jpg','2016-06-01 09:29:32','2016-11-04 21:27:30','EJIDO','MERIDA'),
(315,315,'JAIRO','','RIVAS','','V','9470217','0000-00-00','M','04247005063','4247005063','','','V-9470217-cedula.jpg','2016-06-01 09:29:32','2016-07-26 09:28:18','EJIDO','MERIDA'),
(316,316,'LUIS','','NATERA','','V','V-16597643','0000-00-00','M','04147550915','4147550915','','','V-16597643-cedula.jpg','2016-06-01 09:29:32','2016-07-26 11:33:11','VUELTA DE LOLA','MERIDA'),
(318,318,'FERNANDO','','ZERPA','','V','V-10528846','0000-00-00','M','4168248524','4168248524','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(319,319,'DENNYS','Reynaldo','YUNCOZA','fernandez','V','J-317398548','0000-00-00','M','4143780956','4143780956','','','J-317398548-cedula.jpg','2016-06-01 09:29:32','2016-10-20 09:12:35','CARACAS','DISTRITO CAPITAL'),
(320,320,'SIMON','','TETLOSKI','','V','V-125630126','0000-00-00','M','4141057929','4141057929','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(321,321,'RAUL','','SEGOVIA','','V','14438052','0000-00-00','M','4241293885','4241293885','','','V-14438052-cedula.jpg','2016-06-01 09:29:32','2016-10-05 09:51:47','CAUCAGUA','MIRANDA'),
(322,322,'JOSÉ','','SAVEDRA','','V','J-405432420','0000-00-00','M','4263198562','4263198562','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUATIRE','MIRANDA'),
(324,324,'FRANK','','PERNIAS','','V','14892319','0000-00-00','M','4143159366','4143159366','','','V-148923198-cedula.jpg','2016-06-01 09:29:32','2016-09-02 23:25:15','CARACAS','MIRANDA'),
(325,325,'GABRIEL','','PEREZ','','V','V-19378370','0000-00-00','M','4125619795','4125619795','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(326,326,'ARMANDO','','PERDOMO','','V','V-117367947','0000-00-00','M','4125483512','4125483512','','','V-117367947-cedula.jpg','2016-06-01 09:29:32','2016-10-11 14:47:13','CARACAS','MIRANDA'),
(327,327,'WILLIAM','','CARRANZA','','V','V-86758055','0000-00-00','M','4143172222','4143172222','','','V-86758055-cedula.jpg','2016-06-01 09:29:32','2016-10-24 19:24:16','GUARENAS','MIRANDA'),
(328,328,'KEYVIN','','MORA','','V','V-146881021','0000-00-00','M','4163114177','4163114177','','','V-146881021-cedula.jpg','2016-06-01 09:29:32','2016-09-30 23:49:21','GUATIRE','MIRANDA'),
(329,329,'JORGE','','MELENDEZ','','V','V-86847317','0000-00-00','M','4142987599','4142987599','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','PARACOTO','MIRANDA'),
(330,330,'RICARDO','','MEJIA','','V','V-6504487','0000-00-00','M','4125431242','4125431242','','','V-6504487-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:25:02','CARACAS','MIRANDA'),
(331,331,'JESUS','','MARTINEZ','','V','V-87554348','0000-00-00','M','4242551536','4242551536','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(332,332,'WILLIAM','','MARTINEZ','','V','V-155893679','0000-00-00','M','4142581729','4142581729','','','V-155893679-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:20:38',NULL,NULL),
(333,333,'RONALD','','MACHADO','','V','J-405603410','0000-00-00','M','4141731124','4141731124','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(334,334,'JOSE','','LUCENA','','V','V12832272','0000-00-00','M','4242156669','4242156669','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(335,335,'CLEMENTE','','LOPEZ','','V','V-6994603','0000-00-00','M','4141721089','4141721089','','','V-6994603-cedula.jpg','2016-06-01 09:29:32','2016-09-15 10:19:00','CARACAS','MIRANDA'),
(336,336,'EDUAR','','LAINO','','V','V-191545024','0000-00-00','M','4142845519','4142845519','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(337,337,'JONATAN','','HIDALGO','','V','J-295883820','0000-00-00','M','4166841110','4166841110','','','J-295883820-cedula.jpg','2016-06-01 09:29:32','2016-10-18 17:44:21','CARACAS','DISTRITO CAPITAL'),
(338,338,'JUAN','','HERNANDEZ','','V','J-299546445','0000-00-00','M','4265585303','4265585303','','','J-299546445-cedula.jpg','2016-06-01 09:29:32','2016-12-19 14:54:27','CARACAS','MIRANDA'),
(339,339,'JOALVER','','HERNANDEZ','','V','V-144808416','0000-00-00','M','4142561612','4142561612','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(340,340,'NESTOR','','GUILLEN','','V','V-105318274','0000-00-00','M','4142719886','4142719886','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(341,341,'PAULO','','GOMES','','V','J-317060415','0000-00-00','M','4142985149','4142985149','','','','2016-06-01 09:29:32','2016-06-02 02:50:11','GUAPO','MIRANDA'),
(342,342,'OMAR','','GIMON','','V','J-401303285','0000-00-00','M','4241968121','4241968121','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(343,343,'JORGE','','GARCIA','','V','J-406560294','0000-00-00','M','4143659090','4143659090','','','J-406560294-cedula.jpg','2016-06-01 09:29:32','2016-10-21 14:31:20','GUARENAS','MIRANDA'),
(344,344,'WILBERTO','','FLORES','','V','V-138458780','0000-00-00','M','4169304441','4169304441','','','V-138458780-cedula.jpg','2016-06-01 09:29:32','2016-11-15 14:39:36','GUATIRE','MIRANDA'),
(345,345,'JEAN CARLOS','','FIGUEROA','','V','V-132476388','0000-00-00','M','4149166757','4149166757','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(346,346,'JUAN','','FERNANDEZ','','V','V-6519079','0000-00-00','M','4149176370','4149176370','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(347,347,'ISAAC','','FERNANDEZ','','V','J-314677764','0000-00-00','M','4143236557','4143236557','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(348,348,'IVAN','','FERNANDEZ','','V','J-297527869','0000-00-00','M','4143178804','4143178804','','','J-297527869-cedula.jpg','2016-06-01 09:29:32','2016-09-15 10:41:37',NULL,NULL),
(349,349,'RAMON','','FARIAS','','V','J-401647588','0000-00-00','M','4245010381','4245010381','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(350,350,'CARLOS','','DOMINGO','','V','J-296764611','0000-00-00','M','4143197755','4143197755','','','J-296764611-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:58:49','CARACAS','DISTRITO CAPITAL'),
(351,351,'FERMIN','','DIAZ','','V','J-296695091','0000-00-00','M','4141117772','4141117772','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(352,352,'JUAN','','DEFFIT','','V','V-100927175','0000-00-00','M','4241927117','4241927117','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(353,353,'LUIS','','DA SILVA','','V','16924395','0000-00-00','M','4149289320','4149289320','','','V-169243952-cedula.jpg','2016-06-01 09:29:32','2016-08-25 17:40:47','LOS TEQUES','MIRANDA'),
(354,354,'JOSE','','SEQUERA','','V','V-17651617','0000-00-00','M','4241827400','4241827400','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUATIRE','MIRANDA'),
(355,355,'JUNIOR','','CASTILLO','','V','V-19200916','0000-00-00','M','4241911926','4241911926','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(356,356,'KELVIN','','CASTILLO','','V','V-24088465','0000-00-00','M','4141266908','4141266908','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(357,357,'JUAN','','BOYER','','V','J-298321865','0000-00-00','M','4241283428','4241283428','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(358,358,'JUVENCIO','','BARRIOS','leal','V','V-15150151','0000-00-00','M','04166158436','04242658241','V-15150151.jpg','','V-15150151-cedula.jpg','2016-06-01 09:29:32','2016-08-17 16:45:02',NULL,NULL),
(359,359,'MARCOS','','BARRETO','','V','10516007','0000-00-00','M','04142638691','4242193577','','','V-68444213-cedula.jpg','2016-06-01 09:29:32','2016-10-25 11:06:19','CARACAS','DISTRITO CAPITAL'),
(360,360,'ROBIN','','ALVAREZ','','V','V-63220252','0000-00-00','M','4241630705','4241630705','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(361,361,'FELIX','','ALVARADO','','V','J-301657152','0000-00-00','M','4143661089','4143661089','','','J-301657152-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:18:05','GUARENAS','MIRANDA'),
(362,362,'JOSE','','FERNANDEZ','','V','V-22046668','0000-00-00','M','4168358580','4168358580','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(363,363,'ENGLIS','','MATA','','V','13123680','0000-00-00','M','4143368726','4143368727','','','V-13123680-cedula.jpg','2016-06-01 09:29:32','2016-09-20 03:51:39','CARACAS','MIRANDA'),
(364,364,'FERNAN','','FIGUERA','','V','V-120644153','0000-00-00','M','4141354681','4141354681','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(365,365,'ERNESTO','','GONZALEZ','','V','V-11561395','0000-00-00','M','4241901331','4241901331','','','V-11561395-cedula.jpg','2016-06-01 09:29:32','2016-09-15 07:47:49','BARLOVENTO','MIRANDA'),
(366,366,'JESÚS','','MACHADO','','V','V-223516838','0000-00-00','M','4242812323','4242812323','','','V-223516838-cedula.jpg','2016-06-01 09:29:32','2016-10-11 16:35:15',NULL,NULL),
(367,367,'JOSE','quintiliano','HERNANDEZ','rojo','V','V-140605669','0000-00-00','M','4242371077','4242371077','V-140605669.jpg','','V-140605669-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:12:36','LOS TEQUES','MIRANDA'),
(368,368,'ALVARO','','CARRASCAL','','V','V-117390272','0000-00-00','M','4144666007','4144666007','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(369,369,'ENZO','','SALAMANCA','','V','V-15813782','0000-00-00','M','4148921841','4148921841','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(370,370,'MIGUEL','SANTIAGO','RONDON','','V','V-18556247','0000-00-00','M','4140219262','4121038021','V-18556247.jpg','','','2016-06-01 09:29:32','2016-06-02 04:24:46','MATURIN','MONAGAS'),
(371,371,'JESÚS','','PIPPE','','V','V-175576254','0000-00-00','M','4121175318','4121175318','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(372,372,'JESUS','','MEDINA','','V','J-315163527','0000-00-00','M','4162978007','4162978007','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(373,373,'VERUSKA','','HIRARRAZA','','V','J-400065844','0000-00-00','M','4141988729','4141988729','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(374,374,'FRANCISCO','','GROSO','','V','J-295870779','0000-00-00','M','4126975587','4126975587','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(375,375,'CRISTIAN','','GONZALEZ','','V','V-182745061','0000-00-00','M','4249684455','4249684455','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(376,376,'JUAN','','FARIÑAS','','V','V-86515012','0000-00-00','M','4147652368','4147652368','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(377,377,'JORGE','','CHACON','','V','J-402137729','0000-00-00','M','4147656659','4147656659','','','J-402137729-cedula.jpg','2016-06-01 09:29:32','2016-12-05 12:46:32','MATURIN','MONAGAS'),
(378,378,'CARLOS','','CAÑA','','V','J-407269542','0000-00-00','M','4247367040','4247367040','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(379,379,'TEUDYS','','PENOTH','','V','17419302','0000-00-00','M','4123531856','4123531856','','','V-17419302-cedula.jpg','2016-06-01 09:29:32','2016-09-25 04:34:17','MARAGARITA','NUEVA ESPARTA'),
(380,380,'CARLOS','','RODRIGUEZ','','V','V-163372793','0000-00-00','M','4125309410','4125309410','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARAGARITA','NUEVA ESPARTA'),
(381,381,'JORGE','','MARCANO','','V','16545815','0000-00-00','M','4162909868','4162909868','','','V-16545815-cedula.jpg','2016-06-01 09:29:32','2016-09-12 06:12:18',NULL,NULL),
(383,383,'CRISTOFER','','SALAZAR','','V','V-181149180','0000-00-00','M','4267372673','4267372673','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARGARITA','NUEVA ESPARTA'),
(384,384,'EDMUNDO','','VILLARROEL','','V','14840619','0000-00-00','M','4143957318','4143957318','','','V-14840619-cedula.jpg','2016-06-01 09:29:32','2016-09-12 06:34:33','MARGARITA','NUEVA ESPARTA'),
(385,385,'GRUAS ','','STA BARBARA C.A','','V','J-310877629','0000-00-00','M','4248729224','4248729224','','','','2016-06-01 09:29:32','2016-09-12 01:20:17','MARAGARITA','NUEVA ESPARTA'),
(386,386,'JOSE','','MARTINEZ','','V','V-163376837','0000-00-00','M','4248101901','4248101901','','','V-163376837-cedula.jpg','2016-06-01 09:29:32','2016-11-08 10:24:10','MARGARITA','NUEVA ESPARTA'),
(387,387,'EMILIO','','ROJAS','','V','J-95669561','0000-00-00','M','4245139142','4245139142','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUANARE','PORTUGUESA'),
(388,388,'VICENTE','','LOVERA','','V','J-402511728','0000-00-00','M','4141198832','4141198832','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUANARE','PORTUGUESA'),
(389,389,'GREGORIO','','SIVIRA','','V','V-10638194','0000-00-00','M','4145618301','4145618301','','','V-10638194-cedula.jpg','2016-06-01 09:29:32','2016-08-19 17:44:58','PIRITU','PORTUGUESA'),
(390,390,'ENDYS','','CASTRO','','V','J-407614029','0000-00-00','M','4246647720','4246647720','','','J-407614029-cedula.jpg','2016-06-01 09:29:32','2016-08-24 20:17:12',NULL,NULL),
(391,391,'DANIEL','','PERALES','','V','16795300','0000-00-00','M','4145214367','4145214367','','','V-16795300-cedula.jpg','2016-06-01 09:29:32','2016-09-16 18:28:55','BARINAS','BARINAS'),
(392,392,'NELSON','','GUERRERO','','V','6451623','0000-00-00','M','4142548852','4142548852','','','V-6451623-cedula.jpg','2016-06-01 09:29:32','2016-09-09 18:57:01','CUMANA','SUCRE'),
(393,393,'JESUS','','GONZALEZ','','V','J-315955490','0000-00-00','M','4128580220','4128580220','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(394,394,'EDGAR','','ZAMBRANO','','V','5685925','0000-00-00','M','04247197800','4247197800','','','V-5685925-cedula.jpg','2016-06-01 09:29:32','2016-08-02 07:15:07','SAN CRISTOBAL ','TACHIRA'),
(395,395,'GABRIEL','','VIVAS','','V','V-15988990','0000-00-00','M','4147068737','4147068737','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(396,396,'DENIS','','VILCHEZ','','V','V-12631511','0000-00-00','M','4247622119','4247622119','','','V-12631511-cedula.jpg','2016-06-01 09:29:32','2016-08-02 08:16:12','SAN CRISTOBAL ','TACHIRA'),
(397,397,'JESUS','','VELAZCO','','V','211798838','0000-00-00','M','4147136258','4147136258','','','V-211798832-cedula.jpg','2016-06-01 09:29:32','2016-10-14 12:23:39','SAN CRISTOBAL','TACHIRA'),
(398,398,'HENRRY','','ROMERO','','V','12234950','0000-00-00','M','4147028017','4147028017','','','V-122349507-cedula.jpg','2016-06-01 09:29:32','2016-08-26 01:05:22','SAN CRISTOBAL ','TACHIRA'),
(399,399,'LUIS','','RODRIGUEZ','','V','V-133043523','0000-00-00','M','4247233374','4247233374','','','V-133043523-cedula.jpg','2016-06-01 09:29:32','2016-09-09 02:52:03','SAN CRISTOBAL','TACHIRA'),
(400,400,'LUIS','','PICADA','','V','16123964','0000-00-00','M','4247301485','4247301485','','','V-16123964-cedula.jpg','2016-06-01 09:29:32','2016-08-02 08:27:25','SAN CRISTOBAL','TACHIRA'),
(401,401,'JESSICA','','OCHOA','','V','V-101733315','0000-00-00','M','4247793802','4247793802','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(402,402,'JAVIER','','NIÑO','','V','V-165407020','0000-00-00','M','4247255445','4247255445','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(403,403,'JOSE','','MORENO','','V','V-161259752','0000-00-00','M','4149702667','4149702667','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(404,404,'LUIS','','MARCIANI','','V','10172413','0000-00-00','M','4147021813','4147021813','','','V-10172413-cedula.jpg','2016-06-01 09:29:32','2016-08-02 07:47:06',NULL,NULL),
(405,405,'MIGUEL','','MALDONADO','','V','V-20999408','0000-00-00','M','4141791070','4141791070','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(406,406,'HEBER','','LEAL','','V','V-12814562','0000-00-00','M','4247542332','4247542332','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(407,407,'TONY','','GUERRERO','','V','V11498286','0000-00-00','M','04147080766','4147080766','','','V-11498286-cedula.jpg','2016-06-01 09:29:32','2016-08-02 08:12:13',NULL,NULL),
(408,408,'JOSE','','GONZALEZ','','V','9238723','0000-00-00','M','4247030044','4247030044','','','V-92387239-cedula.jpg','2016-06-01 09:29:32','2016-08-26 02:01:27','SAN CRISTOBAL','TACHIRA'),
(409,409,'ANTONIO','','COLMENARES','','V','V-178128554','0000-00-00','M','4149774654','4149774654','','','V-178128554-cedula.jpg','2016-06-01 09:29:32','2016-09-06 09:57:18','SAN CRISTOBAL','TACHIRA'),
(410,410,'JOSE GRE','','CARRERO','','V','6317248','0000-00-00','M','4247157392','4247157392','','','V-6317248-cedula.jpg','2016-06-01 09:29:32','2016-08-02 07:58:42','SAN CRISTOBAL ','TACHIRA'),
(411,411,'ANGEL','','CARDENAS','','V','V-16410121','0000-00-00','M','4164702652','4164702652','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL','TACHIRA'),
(412,412,'GERARDO','','BARRETO','','V','14941307','0000-00-00','M','4263286798','4263286798','','','V-14941307-cedula.jpg','2016-06-01 09:29:32','2016-08-02 07:22:49',NULL,NULL),
(413,413,'ENDER','','BARAJAS','','V','9234773','0000-00-00','M','4141774262','4141774262','','','V-9234773-cedula.jpg','2016-06-01 09:29:32','2016-08-02 10:28:16','SAN CRISTOBAL','TACHIRA'),
(414,414,'SERGIO','','BALDUZ','','V','10145177','0000-00-00','M','04147084876','4147084876','','','V-10145177-cedula.jpg','2016-06-01 09:29:32','2016-08-02 08:06:39',NULL,NULL),
(415,415,'NICOLAS','','BALAN','','V','17503094','0000-00-00','M','4166764492','4166764492','','','V-17503094-cedula.jpg','2016-06-01 09:29:32','2016-09-01 01:03:07','SAN CRISTOVAL','TACHIRA'),
(417,417,'JOSE','','ATUCHA','','V','V-101532093','0000-00-00','M','4147064516','4147064516','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN CRISTOBAL ','TACHIRA'),
(418,418,'ROSMEL','','ARAUJO','','V','V-12970435','0000-00-00','M','4147055111','4147055111','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(419,419,'GERARDO','','CARRERO','','V','V-129704353','0000-00-00','M','4147044054','4147044054','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(420,420,'LISANDRO','','VALERA','','V','V-102646203','0000-00-00','M','4147024064','4147024064','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(421,421,'ALBERTO','','SILVA','','V','19231638','0000-00-00','M','4144178052','4144178052','','','J-406161519-cedula.jpg','2016-06-01 09:29:32','2016-07-12 05:26:46','VALENCIA','CARABOBO'),
(422,422,'VICTOR','','VARELLA','','V','V-167241871','0000-00-00','M','4168117005','4168117005','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA GUAIRA','VARGAS'),
(423,423,'WILLIAM','','ROA','','V','V-11973051','0000-00-00','M','4141197409','4141197409','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA GUAIRA','VARGAS'),
(424,424,'JOHAN','','GUADARAMA','','V','V-17920780','0000-00-00','M','04245443203','4245443203','','','V-17920780-cedula.jpg','2016-06-01 09:29:32','2016-07-20 09:36:31','SAN FELIPE','YARACUY'),
(425,425,'ANDER','','BAUSTE','','V','V-178444790','0000-00-00','M','4143584594','4143584594','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN FELIPE','YARACUY'),
(426,426,'LENNY','','AGÜERO','','V','V-14210216','0000-00-00','M','4145146400','4145146400','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','SAN FELIPE','YARACUY'),
(427,427,'JUAN','','AGÜERO','','V','V-14607191','0000-00-00','M','4245704769','4245704769','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','NIRGUA','YARACUY'),
(428,428,'ROQUE','','SEGUNDO','','V','J-297126422','0000-00-00','M','4149600685','4149600685','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(429,429,'CIRO','Miguel','SALAZAR','Pirela','V','20275259','0000-00-00','M','4146015890','4146015890','','','J-403837465-cedula.jpg','2016-06-01 09:29:32','2016-08-30 19:27:05','MARACAIBO','ZULIA'),
(431,431,'LUIS','','ROLDA','','V','16149195','0000-00-00','M','4149605051','4149605051','','','V-16149195-cedula.jpg','2016-06-01 09:29:32','2016-09-05 22:12:01','MARACAIBO','ZULIA'),
(432,432,'WILLIAM','','REYES','','V','J-296083231','0000-00-00','M','4146692100','4146692100','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','EL VENADO','ZULIA'),
(433,433,'JEAN CARLOS','','RAMIREZ','','V','V-15720018','0000-00-00','M','4140642931','4140642931','','','V-15720018-cedula.jpg','2016-06-01 09:29:32','2016-09-07 09:18:55','MARACAIBO','ZULIA'),
(434,434,'ALEXANDER','','PEROZO','','V','V-16837189','0000-00-00','M','4246085064','4246085064','','','V-16837189-cedula.jpg','2016-06-01 09:29:32','2016-08-26 19:50:26','MARACAIBO','ZULIA'),
(435,435,'JHON','','PEREIRA','','V','V-16186594','0000-00-00','M','4140674475','4140674475','','','V-16186594-cedula.jpg','2016-06-01 09:29:32','2016-08-26 20:09:45','MARACAIBO','ZULIA'),
(436,436,'EFRAIN','','PEÑALOZA','','V','J-404975993','0000-00-00','M','04141671341','4141671341','','','J-404975993-cedula.jpg','2016-06-01 09:29:32','2016-09-07 07:46:29','MARACAIBO','ZULIA'),
(437,437,'IVAN','','NUÑEZ','','V','J-296503605','0000-00-00','M','4146793373','4146793373','','','J-296503605-cedula.jpg','2016-06-01 09:29:32','2016-09-07 08:01:30',NULL,NULL),
(438,438,'HANDY','','MORALES','','V','V-17088027','0000-00-00','M','4146491088','4146491088','','','V-17088027-cedula.jpg','2016-06-01 09:29:32','2016-08-26 22:11:39','MARACAIBO','ZULIA'),
(439,439,'JOSE','','MENDEZ','','V','J-314926365','0000-00-00','M','4146410552','4146410552','','','J-314926365-cedula.jpg','2016-06-01 09:29:32','2016-08-29 16:36:45','MARACAIBO','ZULIA'),
(440,440,'UNALDO','','MARTINEZ','','V','V-133019341','0000-00-00','M','4246311561','4246311561','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(441,441,'RICARDO','','MARTINEZ','','V','13300508','0000-00-00','M','4143612049','4143612049','','','J-316358151-cedula.jpg','2016-06-01 09:29:32','2016-08-29 17:26:51','MARACAIBO','ZULIA'),
(442,442,'NELSON','JESUS','MARTINEZ','MARQUEZ','V','J-406758280','0000-00-00','M','4265178488','4246008889','','','','2016-06-01 09:29:32','2016-06-06 05:53:06','MARACAIBO','ZULIA'),
(443,443,'SIR JOSE','','LUNA','','V','16121047','0000-00-00','M','4125492162','4125492162','','','V-161210478-cedula.jpg','2016-06-01 09:29:32','2016-09-05 17:51:22','MARACAIBO','ZULIA'),
(444,444,'ALEXANDER','','LOPEZ','','V','V-7620622','0000-00-00','M','4143619503','4143619503','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(445,445,'JORGE','','HENRY','','V','V-222500261','0000-00-00','M','4246207684','4246207684','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(446,446,'DILMER','','DOMADOR','','V','V-17684805','0000-00-00','M','4246952273','4246952273','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(447,447,'JOHAN','','CORONA','','V','14682348','0000-00-00','M','4143630069','4143630069','','','V-14682348-cedula.jpg','2016-06-01 09:29:32','2016-09-07 09:22:26','MARACAIBO','ZULIA'),
(448,448,'KELVIS','','CHACON','','V','V-167831750','0000-00-00','M','4246209611','4246209611','','','V-167831750-cedula.jpg','2016-06-01 09:29:32','2016-08-31 02:04:17','MARACAIBO','ZULIA'),
(449,449,'ARISTOTELES','','CHACIN','','V','J-296099120','0000-00-00','M','4149614154','4149614154','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(450,450,'ENDRY','','CASERES','','V','16492283','0000-00-00','M','4143670909','4143670909','','','V-16492283-cedula.jpg','2016-06-01 09:29:32','2016-09-07 08:25:40','MARACAIBO','ZULIA'),
(451,451,'JUAN','','CASANOVA','','V','V-142366300','0000-00-00','M','4165036225','4165036225','','','V-142366300-cedula.jpg','2016-06-01 09:29:32','2016-09-09 14:19:18','MARACAIBO','ZULIA'),
(452,452,'MERVIN','ALEXANDER','BRACHO','MORENO','V','14279171','0000-00-00','M','4246536573','04246649533','V-142791710.jpg','','V-142791710-cedula.jpg','2016-06-01 09:29:32','2016-08-28 02:22:20','MARACAIBO','ZULIA'),
(453,453,'ANMEL','','BOSCAN','','V','V-19007041','0000-00-00','M','4246217339','4246217339','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(454,454,'EDUARDO','','BALLESTERO','','V','V-17096155','0000-00-00','M','4146665646','4146665646','','','V-17096155-cedula.jpg','2016-06-01 09:29:32','2016-09-07 08:29:51','MARACAIBO','ZULIA'),
(455,455,'CESAR','','BAEZ','','V','J-406503100','0000-00-00','M','4143646917','4143646917','','','J-406503100-cedula.jpg','2016-06-01 09:29:32','2016-09-05 20:31:49','MARACAIBO','ZULIA'),
(456,456,'RAFAEL','','ANDRADE','','V','J-406191124','0000-00-00','M','4167792443','4167792443','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(457,457,'BETSY','','REDONDO','','V','7726697','0000-00-00','M','4242757099','4242757099','','','','2016-06-01 09:29:32','2016-09-07 08:44:31','MARACAIBO','ZULIA'),
(458,458,'TONY','','PULGAR','','V','V-168912028','0000-00-00','M','4241628120','4241628120','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(459,459,'WILSON','','GAMBOA','','V','V-143780135','0000-00-00','M','4264714017','4264714017','','','V-143780135-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:29:23','BARINAS','BARINAS'),
(460,460,'BORIS','','TUÑON','','E','81692140','0000-00-00','M','4143779580','4143779580','','','E-81692140-cedula.jpg','2016-06-01 09:29:32','2016-09-20 17:31:50','ZAMORA','MIRANDA'),
(461,461,'JONNATHAN','ALEXANDER','OCHOA','ROBERTIS','V','20120702','0000-00-00','M','04247354794','04163768709','','','V-20120702-cedula.jpg','2016-06-01 09:29:32','2016-08-02 07:38:24','SAN CRISTOBAL','TACHIRA'),
(463,463,'JOSE','','ORTIZ','','V','15729794','0000-00-00','M','4245275681','4265530585','','','J-311860061-cedula.jpg','2016-06-01 09:29:32','2016-12-08 14:46:22','BARQUISIMETO','LARA'),
(464,464,'MAICKOL','YEICKSON','HERRERA','ARANGUREN','V','V-20605675','0000-00-00','M','4242742335','4242742335','','','V-20605675-cedula.jpg','2016-06-01 09:29:32','2016-09-15 08:11:29','CARACAS','MIRANDA'),
(465,465,'PEDRO','','VICENS','','V','J-401178634','0000-00-00','M','4129548160','4129548160','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA GUAIRA','VARGAS'),
(466,466,'JOSE LUIS','','GIL','','V','V-65066862','0000-00-00','M','4142523287','4142523287','','','V-65066862-cedula.jpg','2016-06-01 09:29:32','2016-10-22 16:07:47','CARACAS','MIRANDA'),
(468,468,'ENCRIS','','MORA','','V','V-236115182','0000-00-00','M','4242192350','4242192350','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(469,469,'ANDRES','','BERTELLONI','','V','J-406045580','0000-00-00','M','4122870681','02124188307','','','','2016-06-01 09:29:32','2016-10-05 11:04:16','LOS TEQUES','MIRANDA'),
(470,470,'CALIXTO','','RIVAS','','V','V-162884952','0000-00-00','M','4143309670','4143309670','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','MIRANDA'),
(471,471,'JONATHAN','','MORILLO','','V','V-128325588','0000-00-00','M','4142752186','4142752186','','','V-128325588-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:37:20','CARACAS','MIRANDA'),
(472,472,'WITTMAN','','RONDON','','V','V-141962554','0000-00-00','M','4141739720','4141739720','','','V-141962554-cedula.jpg','2016-06-01 09:29:32','2016-10-04 18:41:31','',''),
(473,473,'EVER JESUS','','RONDON','','V','V-14196254','0000-00-00','M','4165186472','4165186472','','','V-14196254-cedula.jpg','2016-06-01 09:29:32','2016-10-06 16:18:29','GUATIRE','MIRANDA'),
(474,474,'GERMAN','','SORONDO','','V','J-309057219','0000-00-00','M','4142775954','4142775954','','','J-309057219-cedula.jpg','2016-06-01 09:29:32','2016-09-15 11:47:43','CARACAS','MIRANDA'),
(475,475,'LUIS','','RAMIREZ','','V','J-403416664','0000-00-00','M','4147725893','4147725893','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MATURIN','MONAGAS'),
(477,477,'MIGUELON','','RONDON','','V','J-313787744','0000-00-00','M','4142130724','4142130724','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(478,478,'CESAR','ANTONIO','GIRON','','V','V-8871641','0000-00-00','M','4148236194','4148236194','','','V-8871641-cedula.jpg','2016-06-01 09:29:32','2016-09-11 17:50:10',NULL,NULL),
(479,479,'DENYS','ANTONITO','RODRIGUEZ','','V','V-17956519','0000-00-00','M','4140861712','4140861712','','','V-17956519-cedula.jpg','2016-06-01 09:29:32','2016-09-11 17:58:28',NULL,NULL),
(480,480,'WALDO','','GUARIMATA','','V','V-8263824','0000-00-00','M','4248486576','4248486576','','','V-8263824-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:05:58','PUERTO LA CRUZ','ANZOATEGUI'),
(481,481,'MARIO','','LUNA','','V','V-10290638','0000-00-00','M','4248555605','4248555605','','','V-10290638-cedula.jpg','2016-06-01 09:29:32','2016-08-30 07:08:17',NULL,NULL),
(482,482,'ERICO','','LUNA','','V','V-20359600','0000-00-00','M','4248190450','4248190450','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(483,483,'RAMON','','RONDON','','V','V-15874831','0000-00-00','M','4248113916','4248113916','','','V-15874831-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:13:44',NULL,NULL),
(484,484,'JUAN','JOSE','BAPTISTA','NIÑO','V','12616886','0000-00-00','M','4248297734','4248297734','','','J-405097540-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:20:42',NULL,NULL),
(485,485,'JOSE','NATIVIDAD','ZAPATA','SALAZAR','V','V-5491343','0000-00-00','M','4148022753','4148022753','','','V-5491343-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:33:03',NULL,NULL),
(486,486,'JOSE','GREGORIO','CASTRO','FARIAS','V','V-6353270','0000-00-00','M','4248424942','4248424942','','','V-6353270-cedula.jpg','2016-06-01 09:29:32','2016-09-11 18:37:33',NULL,NULL),
(487,487,'JAVIER','','MARGUE','','V','J-405880797','0000-00-00','M','4148162617','4148162617','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(488,488,'DOMENICO','','BARLAFANTE','','V','8033545','0000-00-00','M','4148107692','4148107692','','','V-803354564-cedula.jpg','2016-06-01 09:29:32','2016-09-23 18:03:25',NULL,NULL),
(489,489,'RONALD','JOSE','PARAQUEIMO','','V','13766027','0000-00-00','M','4147895854','4147895854','','','V-137660276-cedula.jpg','2016-06-01 09:29:32','2016-09-17 20:22:25',NULL,NULL),
(490,490,'VICENTE','','MUJICA','','V','V-122899264','0000-00-00','M','4248767298','4248767298','','','V-122899264-cedula.jpg','2016-06-01 09:29:32','2016-08-30 07:20:05',NULL,NULL),
(491,491,'SALVADOR','','VEGAS','','V','V-34427654','0000-00-00','M','04163841063','4163841063','','','V-34427654-cedula.jpg','2016-06-01 09:29:32','2016-09-12 01:09:43',NULL,NULL),
(492,492,'PEDRO','','MATA','','V','J-404237879','0000-00-00','M','4148156144','4148156144','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(493,493,'FRANCISCO','MIGUEL','OTERO','CASTILLO','V','17344792','0000-00-00','M','4264738429','4264738429','','','V-173447929-cedula.jpg','2016-06-01 09:29:32','2016-09-23 17:57:02',NULL,NULL),
(494,494,'CARLOS','MANUEL','MARTINEZ','','V','8251428','0000-00-00','M','4160339355','4160339355','','','V-82514283-cedula.jpg','2016-06-01 09:29:32','2016-09-12 16:04:44',NULL,NULL),
(495,495,'OMAR','JESUS','LOZADA','CORDERO','V','V-5863658','0000-00-00','M','04248137811','04120819868','','','','2016-06-01 09:29:32','2016-06-02 22:50:53',NULL,NULL),
(496,496,'FRANKLIN','','MEDINA','','V','V-117655527','0000-00-00','M','4249261436','4249261436','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','PUERTO LA CRUZ','ANZOATEGUI'),
(497,497,'MIGUEL','JOSE','MARQUEZ','MADRID','V','V-82632544','0000-00-00','M','4141995011','4141995011','','','V-82632544-cedula.jpg','2016-06-01 09:29:32','2016-09-23 17:39:33',NULL,NULL),
(498,498,'','','','','V','J-315952505','0000-00-00','M','2869713573','2869713573','','','','2016-06-01 09:29:32','2016-06-01 09:29:32',NULL,NULL),
(499,499,'ENGELBERTH','Oscar','GUTIERREZ','','V','19227678','0000-00-00','M','04241150296','04141284106','J-315969645.jpeg','','J-315969645-cedula.jpg','2016-06-01 09:29:32','2016-08-28 02:15:27','CARACAS','DISTRITO CAPITAL'),
(500,500,'OSCAR','','GUTIERREZ','','V','J-315969645','0000-00-00','M','04241150296','04241150296','','','J-315969645-cedula.jpg','2016-06-01 09:29:32','2016-08-17 19:33:53',NULL,NULL),
(501,501,'RAFAEL','','CANACHE','','V','V-20610368','0000-00-00','M','4146408533','4146408533','','','V-20610368-cedula.jpg','2016-06-01 09:29:32','2016-09-05 18:13:44','PUERTO LA CRUZ','ANZOATEGUI'),
(502,502,'EDWARD','','CHACON','','V','V-200974979','0000-00-00','M','4242452203','4242452203','','','V-200974979-cedula.jpg','2016-06-01 09:29:32','2016-09-15 07:51:44','CARACAS','DISTRITO CAPITAL'),
(503,503,'OWY','JOSE','LINARES','','V','V-13575135','0000-00-00','M','4146282933','261-7553428','','','V-13575135-cedula.jpg','2016-06-01 09:29:32','2016-09-07 08:50:10','MARACAIBO','ZULIA'),
(504,504,'ALFONSO','','ROSENDO','','V','20015210','0000-00-00','M','04143556462','4143556462','','','V-20015210-cedula.jpg','2016-06-01 09:29:32','2016-08-06 23:38:38','BARQUISIMETO','LARA'),
(505,505,'WILLIAM','','RAMIREZ','','V','V-78190929','0000-00-00','M','4246505248','4246505248','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','MARACAIBO','ZULIA'),
(506,506,'CESAR','','DIAZ','','V','J-298903457','0000-00-00','M','4143018766','4143018766','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CARACAS','DISTRITO CAPITAL'),
(507,507,'VLADIMIR','','VILLALOBOS','','V','10408385','0000-00-00','M','4146025841','4146025841','','','V-104083855-cedula.jpg','2016-06-01 09:29:32','2016-09-07 08:55:01','MARACAIBO','ZULIA'),
(508,508,'JOHN','','CORTEZ','','V','V-159283271','0000-00-00','M','4241536448','4241536448','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','GUARENAS','MIRANDA'),
(509,509,'GUEDEZ','','JONAS','','V','V-195725582','0000-00-00','M','4245241802','4245241802','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(510,510,'ZENON','ANTONIO','ROMERO','OSTOS','V','V-101549034','0000-00-00','M','4145670846','4145670846','','','V-101549034-cedula.jpg','2016-06-01 09:29:32','2016-08-27 08:15:32','BARINAS','BARINAS'),
(511,511,'JUNIOR','','RODRIGUEZ','','V','V-122426471','0000-00-00','M','4145245646','4145245646','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','BARQUISIMETO','LARA'),
(512,512,'JORGE','','FARIAS','','V','23501716','0000-00-00','M','4249740320','4249740320','','','','2016-06-01 09:29:32','2017-01-12 07:56:43','CIUDAD GUAYANA ','BOLIVAR'),
(513,513,'YOVANI','','SIERRA','','V','V-177420987','0000-00-00','M','4242048477','4242048477','','','V-177420987-cedula.jpg','2016-06-01 09:29:32','2016-10-03 18:32:07','SAN ANTONIO DE LOS ALTOS','MIRANDA'),
(514,514,'CARLOS','','DELGADO','','V','V-161460857','0000-00-00','M','4125694521','4125694521','','','V-161460857-cedula.jpg','2016-06-01 09:29:32','2016-10-03 19:07:10','SAN ANTONIO DE LOS ALTOS','MIRANDA'),
(515,515,'JOSE','','MUJICA','','V','V-6662595','0000-00-00','M','4120354282','4120354282','','','V-6662595-cedula.jpg','2016-06-01 09:29:32','2016-09-23 17:36:47',NULL,NULL),
(516,516,'FRANCISCO','JAVIER','ARAQUE','ESCALONA','V','V-17239815','0000-00-00','M','4247134560','04268981967','','','','2016-06-01 09:29:32','2016-06-02 18:20:42','EJIDO','MERIDA'),
(517,517,'EDWIN','','MORA','','V','15517350','0000-00-00','M','04247585577','4247585577','','','V-15517350-cedula.jpg','2016-06-01 09:29:32','2016-07-26 07:22:45','LAGUNILLAS','MERIDA'),
(518,518,'RICHARD','','FREIRES','','V','V-13156301','0000-00-00','M','4148589530','4148589530','','','V-13156301-cedula.jpg','2016-06-01 09:29:32','2016-11-21 13:26:52','CIUDAD BOLIVAR','BOLIVAR'),
(519,519,'LEVIS','','PEREZ','','V','V-10570828','0000-00-00','M','4163895347','4163895347','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','LA MINA','BOLIVAR'),
(520,520,'MIGUEL','','PAEZ','','V','V-19130208','0000-00-00','M','4160939798','4160939798','','','','2016-06-01 09:29:32','2016-06-01 09:29:32','CIUDAD BOLIVAR','BOLIVAR'),
(521,521,'MIRKO','','SAMPAOLI','','V','11351254','0000-00-00','M','4244325716','4244325716','','','V-21214415-cedula.jpg','2016-06-01 09:29:32','2016-07-12 07:16:45','VALENCIA','CARABOBO'),
(523,523,'KENWIS','','ESTRADA','','V','V-18822612','0000-00-00','M','4242668705','4242668705','','','V-18822612-cedula.jpg','2016-06-01 09:29:32','2016-10-03 17:37:32','CARACAS','MIRANDA'),
(524,524,'CARLOS','','ECHEVERRIA','','V','20704086','2016-09-05','M','04148572157','','','','','2016-09-06 03:01:03','2016-09-06 03:01:03',NULL,NULL),
(525,525,'ALEJANDRO','','ECHEVERRIA','','V','123','0000-00-00','M','04148572157','','','','','2016-06-01 18:16:15','2016-06-01 18:16:15',NULL,NULL),
(526,526,'CARLOS','','HEINZE','','V','14','0000-00-00','M','04148572157','','','','','2016-06-01 18:27:00','2016-06-01 18:27:00',NULL,NULL),
(529,529,'Oscar','Ramón ','Gutierrez','Torres','V','7920106',NULL,'M','04241150296',NULL,'','','V-7920106-cedula.','2016-06-01 23:35:22','2016-06-01 23:35:22','CARACAS','DISTRITO CAPITAL'),
(530,530,'PEDRO','ANTONIO','VICENS','GAMBOA','V','10666870',NULL,'M','04129548165',NULL,'','','V-10666870-cedula.jpg','2016-06-01 23:39:24','2016-06-01 23:39:24','LA GUAIRA','VARGAS'),
(532,532,'anibal','aquiles','marcano','lopez','V','11144314',NULL,'M','04249227716',NULL,'','','','2016-06-02 00:30:29','2016-06-02 00:30:29',NULL,NULL),
(535,535,'MARCOS','','DE ANDRADE','','V','18020594','1986-03-24','M','04268141850','','','','','2016-09-11 05:57:19','2016-09-11 05:57:19',NULL,NULL),
(536,536,'yhitzander','segundo','sequera','yanez','V','13990540',NULL,'M','04168533664',NULL,'','','V-13990540-cedula.jpg','2016-06-02 12:07:49','2016-07-20 11:00:49',NULL,NULL),
(539,539,'LUIS','ALBERTO','RAMIREZ','DURAN','V','11447003',NULL,'M','04148567633',NULL,'','','V-11447003-cedula.one','2016-06-02 14:25:20','2016-06-02 14:25:20','MATURIN','MONAGAS'),
(545,545,'LUIS','ANGEL','BASABE','BELLAIS','V','15942602',NULL,'M','04143799632',NULL,'','','V-15942602-cedula.jpg','2016-06-02 18:58:29','2016-06-02 18:58:29',NULL,NULL),
(546,546,'Reykar','Oswaldo','Rodriguez','Sanchez','V','16521460',NULL,'M','04124053188',NULL,'','','V-16521460-cedula.zip','2016-06-02 19:47:59','2016-06-02 19:47:59',NULL,NULL),
(547,547,'even','eduardo','alvarez','castillo','V','15621253',NULL,'M','04247100206',NULL,'','','V-15621253-cedula.jpg','2016-06-02 20:42:19','2016-06-02 20:42:19','MERIDA','MERIDA'),
(549,549,'Jesus','Argenis ','Contreras','Avendaño','V','23542301',NULL,'M','04247131569',NULL,'','','V-23542301-cedula.jpg','2016-06-02 22:20:37','2016-06-02 22:20:37','SAN CRISTOBAL','TACHIRA'),
(553,553,'OSCAR','DONATO','MELIDEO','AGUILAR','V','16795675',NULL,'M','04245090747',NULL,'','','V-16795675-cedula.jpg','2016-06-03 02:39:53','2016-06-03 02:39:53','CABUDARE','LARA'),
(554,554,'RAFAEL','ANTONIO','ANDRADE','DIAZ','V','17857690',NULL,'M','04167792443',NULL,'','','V-17857690-cedula.jpg','2016-06-03 15:05:50','2016-06-03 15:05:50','MARACAIBO','ZULIA'),
(556,556,'UNALDO','JOSE','MAETINEZ','ZAMBRANO','V','13301934',NULL,'M','04246311561',NULL,'','','V-13301934-cedula.','2016-06-03 18:07:56','2016-06-03 18:07:56','MARACAIBO','ZULIA'),
(559,559,'CESAR ','','DIAZ','','V','10182692',NULL,'M','04143018766',NULL,'','','V-10182692-cedula.jpg','2016-06-04 02:30:32','2016-06-04 02:30:32','CARACAS','DISTRITO CAPITAL'),
(561,561,'Antonio','Jose','Parica','','V','14431404',NULL,'M','04142153573',NULL,'','','V-14431404-cedula.jpg','2016-06-05 01:56:15','2016-06-05 01:56:15','CARACAS','DISTRITO CAPITAL'),
(562,562,'WILMER','ORLANDO','HUNG','LOMBANO','V','15377463',NULL,'M','04142325229',NULL,'','','V-15377463-cedula.jpg','2016-06-05 03:35:15','2016-06-05 03:35:15','CARACAS','DISTRITO CAPITAL'),
(565,565,'Angel ','Javier','Herrera','Sierra','V','12834908',NULL,'M','04265199753',NULL,'','','V-12834908-cedula.jpg','2016-06-07 17:40:26','2016-06-07 17:40:26','CARACAS','DISTRITO CAPITAL'),
(566,566,'ANDRES','','BERTELLONI','RODRIGUEZ','V','17514290',NULL,'M','02124188304',NULL,'','','V-17514290-cedula.jpg','2016-06-08 23:13:57','2016-06-08 23:13:57','LOS TEQUES','MIRANDA'),
(567,567,'JONATHAN','JOSE','RAMIREZ','VILLARREAL','V','16444030',NULL,'M','04262060165',NULL,'','','V-16444030-cedula.jpg','2016-06-09 18:47:39','2016-07-26 12:20:26','MERIDA','MERIDA'),
(568,568,'FRANKLIN','ALEXANDER','RIVERO','UZCATEGUI','V','21367502',NULL,'M','04160891244',NULL,'','','V-21367502-cedula.jpg','2016-06-09 19:07:14','2016-07-26 12:10:56','MERIDA','MERIDA'),
(569,569,'ERASMO','','GUTIERREZ','PEREIRA','V','11952041',NULL,'M','04266706279',NULL,'','','V-11952041-cedula.jpg','2016-06-09 19:13:37','2016-06-09 19:13:37','MERIDA','MERIDA'),
(570,570,'Carlos','','Germani','','V','11667450','0000-00-00','M','04145128625','','','','V-11667450-cedula.jpg','2016-06-10 03:02:43','2016-07-20 09:33:06',NULL,NULL),
(571,571,'Juan','','Panto','','V','6504830','0000-00-00','M','4142131304','4164016045','','','J-6504830-cedula.jpg','2016-06-10 03:02:43','2016-10-23 09:45:05','',''),
(572,572,'Johan','','Pirela','','V','J-403473641','0000-00-00','M','4140372108','2617653423','','','','2016-06-10 03:02:43','2016-06-10 03:02:43','MARACAIBO','ZULIA'),
(573,573,'Giovanni','','Saavedra','','V','11463414','0000-00-00','M','04265735821','4147452792','','','V-11463414-cedula.jpg','2016-06-10 03:02:43','2016-07-26 08:20:26','MERIDA','MERIDA'),
(574,574,'Orlando','Neptali','Torres','Marques','V','17755400','0000-00-00','M','04145071175','04125231175','','','V-177554002-cedula.jpg','2016-06-10 03:02:43','2016-07-20 09:43:58','BARQUISIMETO','LARA'),
(575,575,'Harrison','','Justo','','V','V-177176326','0000-00-00','M','4243134084','4124098548','','','V-177176326-cedula.jpg','2016-06-10 03:02:43','2016-08-30 23:31:20','LA VICTORIA','ARAGUA'),
(577,577,'Miguel','','Guillen','','V','J-313976261','0000-00-00','M','4247266571','4265122421','','','','2016-06-10 03:02:43','2016-06-10 03:02:43','MERIDA','MERIDA'),
(578,578,'Moises','','Donaires','','V','J-401282814','0000-00-00','M','4241850188','4265122421','','','','2016-06-10 03:02:43','2016-06-10 03:02:43','GUARENAS','MIRANDA'),
(579,585,'OSCAR ','DARIO','JIMENEZ','LUJANO','V','22314537',NULL,'M','04145464267',NULL,'','','V-22314537-cedula.jpg','2016-06-11 16:51:47','2016-06-11 16:51:47','YARITAGUA','YARACUY'),
(580,586,'CARLOS','','ECHEVERRIA','','V','18020591',NULL,'M','04145464267','','V-20704086.jpg','','','2016-06-11 16:51:47','2016-06-29 00:51:05','',''),
(582,589,'Oscar','','Perez','','V','11584093',NULL,'M','04141263619',NULL,'','','V-11584093-cedula.pdf','2016-06-15 15:53:39','2016-06-15 15:53:39','CARACAS','DISTRITO CAPITAL'),
(584,591,'MIGUEL','','HERRERA','','V','V-17960866','0000-00-00','M','4127230418','','','','V-17960866-cedula.jpg','2016-06-18 18:38:48','2016-09-10 20:30:17',NULL,NULL),
(585,592,'MARCELO','HERNAN','ARENALES','CASTRO','V','12630975','0000-00-00','M','04147215222','04168761582','V-126309755.jpg','','V-12630975-cedula.jpg','2016-06-18 18:38:48','2016-08-02 09:08:23','SAN CRISTOBAL ','TACHIRA'),
(586,593,'SAUL','','SEPULVEDA','','V','V-14046570','0000-00-00','M','04125629527','','','','V-14046570-cedula.jpg','2016-06-18 18:38:48','2016-12-16 19:13:36','CARACAS','DISTRITO CAPITAL'),
(587,594,'SANDIS','DANIEL','SANDIS','','V','V-11077085','0000-00-00','M','4245552768','04245502291','','','V-11077085-cedula.pptx','2016-06-18 18:38:48','2016-07-25 17:42:24','ACARIGUA','PORTUGUESA'),
(588,595,'JEAN','','AVILA','','V','V-16923468','0000-00-00','M','4129961201','4141010815','','','V-16923468-cedula.jpg','2016-06-18 18:38:48','2016-10-03 14:38:28','SAN ANTONIO DE LOS ALTOS','MIRANDA'),
(589,596,'JHIN','','GARCIA','','V','V-112633656','0000-00-00','M','4247073024','2763960276','','','','2016-06-18 18:38:48','2016-06-18 18:38:48','CORDERO','TACHIRA'),
(590,597,'GERMAN','','GUZMAN','','V','V-11163866','0000-00-00','M','4140898568','','','','','2016-06-18 18:38:48','2016-06-18 18:38:48','ANACO','ANZOATEGUI'),
(591,598,'MARCO','','CONTRERAS','','V','24151130','0000-00-00','M','04167960613','','','','V-241511304-cedula.jpg','2016-06-18 18:38:48','2016-07-26 07:52:53',NULL,NULL),
(592,599,'MANUEL','','ZOLLO','','V','V-17276293','0000-00-00','M','4145418660','','','','','2016-06-18 18:38:48','2016-06-18 18:38:48','ACARIGUA','PORTUGUESA'),
(593,600,'ANDRES','Antonio','CAMERON','Gutiérrez','V','V-208597996','0000-00-00','M','4149665423','04146847603','V-208597996.jpg','','','2016-06-18 18:38:48','2016-06-26 02:53:48','BACHAQUEROS','ZULIA'),
(594,601,'DAVID','','ANTICA','','V','17860283','0000-00-00','M','4145346581','','','','V-178602833-cedula.jpg','2016-06-18 18:38:48','2016-08-15 03:15:33','BARQUISIMETO','LARA'),
(599,606,'ALEJANDRO','JOSE','CONTRERAS','','V','16983295',NULL,'M','04247461011',NULL,'','','V-16983295-cedula.jpg','2016-06-20 16:30:51','2016-08-02 09:16:14','SAN CRISTOBAL ','TACHIRA'),
(600,607,'FREDDY','','UZCATEGUI','','V','11200507',NULL,'M','04241613823',NULL,'','','V-11200507-cedula.jpg','2016-06-20 17:09:51','2016-08-02 09:10:23','SAN CRISTOBAL ','TACHIRA'),
(602,609,'ronald','rafael','machado','hernandez','V','17060670',NULL,'M','04141731124',NULL,'','','V-17060670-cedula.jpg','2016-06-23 18:33:59','2016-06-23 18:33:59','CARACAS','MIRANDA'),
(603,610,'Andres','Antonio','Cameron','Gutiérrez','V','20859799',NULL,'M','04149665423','04246339823','V-20859799.jpeg','','V-20859799-cedula.jpg','2016-06-25 22:47:17','2016-06-26 03:04:21','BACHAQUEROS','ZULIA'),
(606,613,'Lino','Antonio','Cameron','Gutiérrez','V','26387942',NULL,'M','04146847603',NULL,'','','V-26387942-cedula.jpg','2016-06-26 15:28:49','2016-06-26 15:28:49','BACHAQUEROS','ZULIA'),
(607,614,'MARCOS','','DE ANDRADE','','V','18020590',NULL,'M','04268141850',NULL,'','','V-18020590-cedula.png','2016-06-26 16:58:17','2016-07-17 20:11:06',NULL,NULL),
(608,615,'Jhin ','Carlyn ','Garcia ','Contreras ','V','12633656',NULL,'M','04247073024',NULL,'','','V-12633656-cedula.jpg','2016-06-27 12:05:00','2016-06-27 12:05:00','CORDERO','TACHIRA'),
(610,617,'Jose','Alejandro','Garcia','Rodriguez','V','25123456',NULL,'M','04248889999',NULL,'','','V-25123456-cedula.jpeg','2016-06-28 15:40:01','2016-06-28 15:40:01','',''),
(641,626,'JONATHAN',NULL,'CONTRERAS',NULL,'V','J-299300616',NULL,'M','4128139321','4128139321','','','','2016-06-30 06:05:49','2016-06-30 06:05:49',NULL,NULL),
(642,620,'JESUS',NULL,'CARAVALLO',NULL,'V','J-400807638',NULL,'M','4148098379','4148098379','','','J-400807638-cedula.jpg','2016-06-30 06:05:49','2016-10-04 10:11:37','CUMANA','SUCRE'),
(643,624,'ALBERT',NULL,'GUERREO',NULL,'V','18579072',NULL,'M','4120337997','4120337997','','','J-403845042-cedula.jpg','2016-06-30 06:05:49','2016-07-12 07:21:21','VALENCIA','CARABOBO'),
(644,627,'ROYSIRI','','HERNADEZ','','V','J-405317809',NULL,'M','4242071516','4242071516','','','J-405317809-cedula.jpg','2016-06-30 06:05:49','2016-10-10 14:56:16','','DISTRITO CAPITAL'),
(645,625,'AUGUSTO',NULL,'GONZALES',NULL,'V','J-405934620',NULL,'M','4148833394','4148833394','','','','2016-06-30 06:05:49','2016-06-30 06:05:49','TUCUPITA','DELTA AMACURO'),
(646,618,'MOISES',NULL,'MALVACIA',NULL,'V','V-12019003',NULL,'M','4145290629','4145290629','','','','2016-06-30 06:05:49','2016-06-30 06:05:49',NULL,NULL),
(647,623,'FRANKLIN',NULL,'ROSARIO',NULL,'V','V-13591974',NULL,'M','4145724596','4145724596','','','V-13591974-cedula.jpg','2016-06-30 06:05:49','2016-08-27 08:51:35','BARINAS','BARINAS'),
(648,621,'MARCELINO',NULL,'GUDIÑO',NULL,'V','V-15589528',NULL,'M','4146386295','4146386295','','','','2016-06-30 06:05:49','2016-06-30 06:05:49',NULL,NULL),
(649,619,'ALEJANDRO',NULL,'MOLERO',NULL,'V','V-18396187',NULL,'M','4146110173','4146110173','','','','2016-06-30 06:05:49','2016-06-30 06:05:49','MARACAIBO','ZULIA'),
(650,628,'Jose','Alejandro','Garcia','Rodriguez','V','22345678',NULL,'M','04249998989',NULL,'','','V-22345678-cedula.jpeg','2016-07-06 13:05:37','2016-07-06 13:05:37','',''),
(657,635,'OMAR','','GARCIA','','V','18740123',NULL,'M','04124023632',NULL,'','','V-18740123-cedula.jpg','2016-07-10 23:27:50','2016-07-10 23:27:50','VALENCIA','CARABOBO'),
(660,638,'EMILIO','DE LA CRUZ ','ESCALANTE','RODRIGUEZ','V','7093046',NULL,'M','04144421400',NULL,'','','V-7093046-cedula.jpg','2016-07-11 00:01:22','2016-07-11 00:01:22','VALENCIA','CARABOBO'),
(668,646,'MICHELLE','ALEJANDRO','SAMPAOLI','SERRANO','V','21214415',NULL,'M','4244416850',NULL,'','','V-21214415-cedula.jpg','2016-07-11 06:36:31','2016-07-11 06:36:31','VALENCIA','CARABOBO'),
(669,647,'CONRRAD','THOMAS','GONZALES','RODRIGUEZ','V','12924984',NULL,'M','4244402701','02412053117','V-12924984.jpg','','V-12924984-cedula.jpg','2016-07-11 07:46:07','2016-07-22 05:47:48','VALENCIA','CARABOBO'),
(670,648,'GREGORY','MAURO','RODRIGUEZ','VALLES','V','19524469',NULL,'M','4124128987',NULL,'','','V-19524469-cedula.jpg','2016-07-11 17:12:02','2016-07-11 17:12:02',NULL,NULL),
(671,649,'CESAR','GUSTAVO','URBINA','GUZMAN','V','13716708',NULL,'M','04145949518',NULL,'','','V-13716708-cedula.jpg','2016-07-11 18:41:41','2016-07-11 18:41:41','VALENCIA','CARABOBO'),
(672,650,'ALIRIO','JOSE','RIVAS','PAREDES','V','9394180',NULL,'M','4161431160',NULL,'','','V-9394180-cedula.jpg','2016-07-11 20:18:45','2016-07-11 20:18:45','VALENCIA','CARABOBO'),
(673,651,'AMOS','ALEXANDER','AVILA','VALLES','V','20513088',NULL,'M','4244954715',NULL,'','','V-20513088-cedula.jpg','2016-07-11 20:50:54','2016-07-11 20:50:54',NULL,NULL),
(674,652,'JORGE','','TORRES','','V','7121729',NULL,'M','4162949387',NULL,'','','V-7121729-cedula.jpg','2016-07-11 21:23:16','2016-07-11 21:23:16',NULL,NULL),
(675,653,'CARLOS','','MORENO','','V','20193302',NULL,'M','4244547465',NULL,'','','V-20193302-cedula.jpg','2016-07-11 21:27:06','2016-07-11 21:27:06',NULL,NULL),
(676,654,'JORGE','','TORRES','','V','71217290',NULL,'M','4162949387',NULL,'','','V-71217290-cedula.jpg','2016-07-11 21:30:36','2016-07-11 21:30:36',NULL,NULL),
(677,656,'MULTISERVICIOS','','LAOR, C.A.','','V','J-401484484','0000-00-00','M','4244170783','4244170783','','','','2016-07-13 17:53:43','2016-07-13 17:53:43','VALENCIA','CARABOBO'),
(678,657,'LOS','','CRIS, C.A.','','V','J-406867829','0000-00-00','M','4149585911','4149585911','','','','2016-07-13 17:53:43','2016-07-13 17:53:43',NULL,NULL),
(679,658,'JUAN','','PALOMO','','V','V-12604030','0000-00-00','M','4244619960','4244619960','','','V-12604030-cedula.jpg','2016-07-13 17:53:43','2016-08-25 07:12:00','VALENCIA','CARABOBO'),
(680,659,'JORGE','','LUGO','','V','V-12983332','0000-00-00','M','4244328868','4244328868','','','V-12983332-cedula.jpg','2016-07-13 17:53:43','2016-07-15 04:49:08','VALENCIA','CARABOBO'),
(681,660,'NANDER','','DUQUE','','V','V-13068844','0000-00-00','M','4144819364','4144819364','','','V-13068844-cedula.jpg','2016-07-13 17:53:43','2016-07-15 10:58:17',NULL,NULL),
(682,661,'YUVER','','AMAYA','','V','V-13362065','0000-00-00','M','4262476470','4262476470','','','V-13362065-cedula.jpg','2016-07-13 17:53:43','2016-07-15 08:58:58',NULL,NULL),
(683,662,'JOHAN','','MORENO','','V','V-14755001','0000-00-00','M','4142221938','4142221938','','','V-14755001-cedula.jpg','2016-07-13 17:53:43','2016-07-15 09:02:38',NULL,NULL),
(684,663,'YORBIS','','GONZALES','','V','V-15026778','0000-00-00','M','4244631815','4244631815','','','V-15026778-cedula.jpg','2016-07-13 17:53:43','2016-07-15 09:39:07',NULL,NULL),
(685,664,'JOSE','','OCHOA','','V','V-16242068','0000-00-00','M','4143403559','4143403559','','','','2016-07-13 17:53:43','2016-07-13 17:53:43',NULL,NULL),
(686,665,'HARRINSON','','GUILLEN','','V','V-16445385','0000-00-00','M','4244644945','4244644945','','','V-16445385-cedula.jpg','2016-07-13 17:53:43','2016-07-15 10:54:18',NULL,NULL),
(687,666,'ANDERSON','','RANGEL','','V','V-16895395','0000-00-00','M','4127448114','4127448114','','','V-16895395-cedula.jpg','2016-07-13 17:53:43','2016-07-15 10:04:32',NULL,NULL),
(688,667,'LENNIN','','HERREÑO','','V','V-17282723','0000-00-00','M','04244502531','4120493912','','','V-17282723-cedula.jpg','2016-07-13 17:53:43','2016-11-21 13:32:58','VALENCIA','CARABOBO'),
(689,668,'JOSE','ANTONIO','GARCIA','FLORES','V','V-18671867','0000-00-00','M','4165029725','4165029725','','','V-18671867-cedula.jpg','2016-07-13 17:53:43','2016-09-29 20:36:40','GUANARE','PORTUGUESA'),
(690,669,'KENNYTH','','HERNANDEZ','','V','V-188679052','0000-00-00','M','4244607033','4244607033','','','V-188679052-cedula.jpg','2016-07-13 17:53:43','2016-07-15 08:54:59','VALENCIA','CARABOBO'),
(691,670,'VIRGILIO','','CORTEZ hijo','','V','18997236','0000-00-00','M','04123419481','4123419481','','','','2016-07-13 17:53:43','2016-07-22 17:40:43','VALENCIA','CARABOBO'),
(692,671,'ANDI','','NARVAEZ','','V','V-19108582','0000-00-00','M','4162969404','4162969404','','','','2016-07-13 17:53:43','2016-07-13 17:53:43','MARGARITA','NUEVA ESPARTA'),
(693,673,'MARTIN  ','','TAGLIAFERRO','','V','V-19641247','0000-00-00','M','4244901711','4244901711','','','V-19641247-cedula.jpg','2016-07-13 17:53:43','2016-07-15 09:46:50',NULL,NULL),
(694,674,'LUIS','','MARQUEZ','','V','V-22514947','0000-00-00','M','4144352566','4144352566','','','V-22514947-cedula.jpg','2016-07-13 17:53:43','2016-07-15 09:51:05',NULL,NULL),
(695,676,'DANIEL','','BELLO','','V','8682944','0000-00-00','M','04143491977','4143491977','','','V-8682844-cedula.jpg','2016-07-13 17:53:43','2016-11-03 10:27:29','VALENCIA','CARABOBO'),
(708,686,'VIRGILIO ','','CORTEZ padre','','V','9117707',NULL,'M','04145081551','','','','V-9117707-cedula.jpg','2016-07-15 01:01:05','2016-07-22 17:38:49','VALENCIA','CARABOBO'),
(709,687,'DEIVYS','','RODELO','','V','14991108',NULL,'M','04244170783',NULL,'','','V-14991108-cedula.jpg','2016-07-15 01:22:01','2016-07-15 01:22:01',NULL,NULL),
(711,689,'JACSON','JOSE','TORREALBA','VILLALBA','V','16784902',NULL,'M','04144286260',NULL,'','','V-16784902-cedula.jpg','2016-07-15 05:16:06','2016-07-15 05:16:06',NULL,NULL),
(712,690,'JIMMY','','LOPEZ','','V','13349928',NULL,'M','04149585911',NULL,'','','V-13349928-cedula.jpg','2016-07-15 05:25:50','2016-07-15 05:25:50',NULL,NULL),
(713,691,'ANDERSON','','LOPEZ','','V','14041731',NULL,'M','04144045795',NULL,'','','V-14041731-cedula.jpg','2016-07-15 05:27:34','2016-07-15 05:27:34',NULL,NULL),
(714,692,'FREDDY','','BENAVIDES','','V','13898753',NULL,'M','04120411920',NULL,'','','V-13898753-cedula.jpg','2016-07-15 06:00:11','2016-07-15 06:00:11',NULL,NULL),
(715,693,'JAVIER','ALEXANDER','FIGUEROA','BELLO','V','24648002',NULL,'M','04140433317',NULL,'','','V-24648002-cedula.jpg','2016-07-15 06:15:28','2016-07-15 06:15:28','VALENCIA','CARABOBO'),
(716,694,'Marcos','prueba','De PRUEBA','','V','1802',NULL,'M','45454545454',NULL,'','','V-1802-cedula.jpg','2016-07-17 16:13:13','2016-07-17 16:13:13',NULL,NULL),
(717,695,'LUIS','','TERAN','','V','7426864',NULL,'M','04263550145',NULL,'','','V-7426864-cedula.jpg','2016-07-20 04:07:58','2016-07-20 04:07:58','BARQUISIMETO','LARA'),
(718,696,'JAVIER','','VASQUEZ','','V','20016413',NULL,'M','04245064224',NULL,'','','V-20016413-cedula.jpg','2016-07-20 04:30:18','2016-07-20 04:30:18',NULL,NULL),
(719,697,'JESUS ','MANUEL ','CARUCI ','CARRASCO','V','15817552',NULL,'M','04245152389',NULL,'','','V-15817552-cedula.jpg','2016-07-20 04:46:28','2016-07-20 04:46:28','BARQUISIMETO','LARA'),
(720,698,'RAMON','SALVADOR','ENCINOZA','MORALES','V','4342518',NULL,'M','04145281345',NULL,'','','V-4342518-cedula.jpg','2016-07-20 05:10:01','2016-07-20 05:10:01',NULL,NULL),
(721,699,'GREIBERG','JESUS','GARRIDO','RODRIGUEZ','V','18431746',NULL,'M','04145081450',NULL,'','','V-18431746-cedula.jpg','2016-07-20 05:14:53','2016-07-20 05:14:53',NULL,NULL),
(722,700,'YILSON ','DAVID','COLMENAREZ','LOPEZ','V','20470070',NULL,'M','04145354353',NULL,'','','V-20470070-cedula.jpg','2016-07-20 06:22:35','2016-07-20 06:22:35',NULL,NULL),
(723,701,'NOÉ','GERARDO','PEREZ','MOLINA','V','25541675',NULL,'M','04161211576',NULL,'','','V-25541675-cedula.jpg','2016-07-20 06:49:54','2016-07-20 06:49:54','BARQUISIMETO','LARA'),
(724,702,'ELISAUL','JOSE','ARRIECHE','PEÑA','V','9614853',NULL,'M','04145015002',NULL,'','','V-9614853-cedula.jpg','2016-07-20 07:41:02','2016-07-20 07:41:02','BARQUISIMETO','LARA'),
(725,703,'WLADIMIR','JOSE','ROJAS','VASQUEZ','V','17574288',NULL,'M','04245702787',NULL,'','','V-17574288-cedula.jpg','2016-07-20 07:48:06','2016-07-20 07:48:06','BARQUISIMETO','LARA'),
(726,704,'EDILSON','JAVIER','GIL','MENDOZA','V','18103635',NULL,'M','04245621188',NULL,'','','V-18103635-cedula.jpg','2016-07-20 08:20:35','2016-07-20 08:20:35','NIRGUA','YARACUY'),
(727,705,'Boris','Alfonso','Bautista','Roa','V','9462673',NULL,'M','04143782167','','','','','2016-07-21 02:10:11','2016-11-06 20:00:59','SAN CRISTOBAL','TACHIRA'),
(728,706,'SAMUEL','IGNACIO','MEDINA','RODRIGUEZ','V','16750054',NULL,'M','04166565318',NULL,'','','V-16750054-cedula.jpg','2016-07-21 04:18:43','2016-07-21 04:18:43','BARQUISIMETO','LARA'),
(729,707,'SAMUEL','IGNACIO','MEDINA','RODRIGUEZ','V','16750055',NULL,'M','04145820975',NULL,'','','V-16750055-cedula.jpg','2016-07-21 04:22:51','2016-07-21 04:22:51','BARQUISIMETO','LARA'),
(730,708,'ELAUTERIO','ANTONIO','RODRIGUEZ','OROPEZA','V','16957296',NULL,'M','04145765165',NULL,'','','V-16957296-cedula.jpg','2016-07-24 04:39:03','2016-07-24 04:39:03','BARQUISIMETO','LARA'),
(731,709,'NIXON','OSFALDO','OSUNA','PEÑA','V','167416817',NULL,'M','04147129516',NULL,'','','V-16741681-cedula.jpg','2016-07-26 03:44:48','2016-07-26 07:46:53','OBISPO RAMOS DE LORA','MERIDA'),
(732,710,'LENIN','RUBEN','ZERPA','QUINTERO','V','8031820',NULL,'M','04147446144',NULL,'','','V-8031820-cedula.jpg','2016-07-26 04:04:53','2016-07-26 04:04:53',NULL,NULL),
(733,711,'RUBIA','ELENA','NAVA','PUENTES','V','17523932',NULL,'F','04147446144',NULL,'','','V-17523932-cedula.jpg','2016-07-26 04:10:25','2016-07-26 04:10:25',NULL,NULL),
(734,712,'CARLOS','MANUEL','SERRANO','PERNIA','V','23721832',NULL,'M','04265788559',NULL,'','','V-23721832-cedula.jpg','2016-07-26 04:42:13','2016-07-26 04:42:13','MERIDA','MERIDA'),
(735,713,'HECTOR','JOSE','DIAZ','BUENAÑO','V','20217833',NULL,'M','04247502440',NULL,'','','V-20217833-cedula.jpg','2016-07-26 05:39:03','2016-07-26 05:39:03','TOVAR','MERIDA'),
(736,714,'JAVIER','ALBERTO','GARCIA','RAMIREZ','V','167428181',NULL,'M','04248682330',NULL,'','','V-16742818-cedula.jpg','2016-07-26 06:20:38','2016-07-26 10:21:06',NULL,NULL),
(737,715,'JESUS','LEANDRO','ZERPA','VIELMA','V','15754429',NULL,'M','04147450040',NULL,'','','V-15754429-cedula.jpg','2016-07-26 06:51:09','2016-07-26 11:07:13','MERIDA','MERIDA'),
(738,716,'JOSE ','REINALDO','DIAZ','','V','16933248',NULL,'M','04247394571',NULL,'','','V-16933248-cedula.jpg','2016-07-26 06:53:31','2016-07-26 06:53:31','MERIDA','MERIDA'),
(739,717,'JORGE','LEONEL','ZERPA','VIELMA','V','15920850',NULL,'M','04143741985',NULL,'','','V-15920850-cedula.jpg','2016-07-26 07:00:12','2016-07-26 07:00:12','MERIDA','MERIDA'),
(740,718,'RODOLFO','EDUARDO','PAREDES','','V','16445185',NULL,'M','04247739958',NULL,'','','V-16445185-cedula.jpg','2016-07-26 07:02:00','2016-07-26 07:02:00','MERIDA','MERIDA'),
(741,719,'JOSE ','FRANCISCO','PEREZ','ALBORNOZ','V','16912004',NULL,'M','04147418175',NULL,'','','V-16912004-cedula.jpg','2016-07-26 07:06:21','2016-07-26 07:06:21','MERIDA','MERIDA'),
(742,720,'FREDDY','JOSE','SALAS','RODRIGUEZ','V','107107572',NULL,'M','04166027164',NULL,'','','V-10710757-cedula.jpg','2016-07-26 08:08:12','2016-07-26 12:08:37','MERIDA','MERIDA'),
(743,721,'FRANKLIN','ALEXANDER','RIVERO','UZCATEGUI','V','213675020',NULL,'M','04160891244',NULL,'','','V-25000000-cedula.jpg','2016-07-26 08:15:12','2016-07-26 12:15:28','MERIDA','MERIDA'),
(744,722,'JONATHAN','JOSE','RAMIREZ','VILLAREAL','V','164440300',NULL,'M','04262060165',NULL,'','','V-25000000-cedula.jpg','2016-07-26 08:17:55','2016-07-26 12:18:26','MERIDA','MERIDA'),
(746,724,'HAROLD','','TERAN','','V','15170724',NULL,'M','04145053569',NULL,'','','V-15170724-cedula.htm','2016-07-26 16:32:32','2016-07-26 16:32:32','BARQUISIMETO','LARA'),
(748,726,'ELVIS','VICENTE','MORA','MONTES','V','13229158',NULL,'M','04126673284',NULL,'','','V-13229158-cedula.jpg','2016-07-30 06:06:19','2016-07-30 06:06:19','LAGUNILLAS','MERIDA'),
(749,727,'Richard','Orlando','Uribe','Álvarez','V','15156014',NULL,'M','04164752999','','','','V-15156014-cedula.jpg','2016-07-31 16:25:31','2016-10-01 19:02:30','SAN CRISTOBAL','TACHIRA'),
(750,728,'HECTOR',NULL,'VEGAS',NULL,'V','J-307991194',NULL,'M','04120911165',NULL,'','','','2016-08-01 07:56:47','2016-08-01 07:56:49','MATURIN','MONAGAS'),
(751,729,'JOSEFINA',NULL,'SILVA',NULL,'V','73890060',NULL,'F','04125212206',NULL,'','','V-073890060-cedula.jpg','2016-08-01 07:56:51','2016-11-04 15:15:33','BARQUISIMETO','LARA'),
(752,730,'OSWALDO',NULL,'RANGEL',NULL,'V','V-14000420',NULL,'M','04145544719',NULL,'','','','2016-08-01 07:56:54','2016-08-01 07:56:55','ACARIGUA ','PORTUGUESA'),
(753,731,'ANGEL',NULL,'TAVERA',NULL,'V','V-2397279',NULL,'M','04144619908',NULL,'','','','2016-08-01 07:56:57','2016-08-01 07:56:58','CHAGUARAMA ','GUARICO'),
(755,734,'EDGAR','ENRIQUE','ZAMBRANO','DELGADO','V','56859256',NULL,'M','04247197800',NULL,'','','V-56859256-cedula.jpg','2016-08-02 03:18:22','2016-08-02 03:18:22','SAN CRISTOBAL ','TACHIRA'),
(756,735,'WILMER','ALEJANDRO','COLMENARES','','V','17502082',NULL,'M','04263286798',NULL,'','','V-17502082-cedula.jpg','2016-08-02 03:24:46','2016-08-02 03:24:46',NULL,NULL),
(757,736,'JUNIOR','ORLANDO','AVENDAÑO','GAMEZ','V','25169942',NULL,'M','04149727107',NULL,'','','V-25169942-cedula.jpg','2016-08-02 04:58:31','2016-08-02 04:58:31','SAN CRISTOBAL ','TACHIRA'),
(758,737,'LUIS','FERNEY','GAVIRIA','PELAEZ','V','23130308',NULL,'M','04247519851',NULL,'','','V-23130308-cedula.jpg','2016-08-02 05:13:06','2016-08-02 05:13:06','SAN CRISTOBAL ','TACHIRA'),
(759,738,'WUILSON','','MARIÑO','SAYAGO','V','17369618',NULL,'M','04149719472',NULL,'','','V-17369618-cedula.jpg','2016-08-02 05:34:09','2016-08-02 05:34:09',NULL,NULL),
(760,739,'JOHANY','ALBERTO','RUIZ','PROMEDA','V','19135145',NULL,'M','04149719939',NULL,'','','V-19135145-cedula.jpg','2016-08-02 05:36:12','2016-08-02 05:36:12',NULL,NULL),
(761,740,'JOEL','','SOTO','MORA','V','11370751',NULL,'M','04262711507',NULL,'','','V-11370751-cedula.jpg','2016-08-02 05:41:38','2016-08-02 05:41:38',NULL,NULL),
(762,741,'ORLANDO','JOSE','JIMENEZ','ZAMBRANO','V','18976965',NULL,'M','04164718198',NULL,'','','V-18976965-cedula.jpg','2016-08-02 05:46:24','2016-08-02 05:46:24',NULL,NULL),
(763,742,'JON','HERMOGENES','RAMIREZ','BALAGUERA','V','19977440',NULL,'M','04121713538',NULL,'','','V-19977440-cedula.jpg','2016-08-02 05:51:51','2016-08-02 05:51:51',NULL,NULL),
(764,743,'SOLIN','ALBERTO','BUENO','MARIN','V','13587412',NULL,'M','04163294777',NULL,'','','V-13587412-cedula.jpg','2016-08-02 05:55:48','2016-08-02 05:55:48',NULL,NULL),
(765,744,'ENDER','ANTONIO','SAN MARTIN','MOLINA','V','9465591',NULL,'M','04268731226',NULL,'','','V-9465591-cedula.jpg','2016-08-02 05:57:52','2016-08-02 05:57:52',NULL,NULL),
(766,745,'RONNY','LORETO','MOLINA','HERNANDEZ','V','24349094',NULL,'M','04267299279',NULL,'','','V-24349094-cedula.jpg','2016-08-02 06:00:08','2016-08-02 06:00:08',NULL,NULL),
(767,746,'DELIO','ERNESTO','MEDINA','CEPEDA','V','10160044',NULL,'M','04141772353',NULL,'','','V-10160044-cedula.jpg','2016-08-02 06:33:23','2016-08-02 06:33:23','SAN CRISTOBAL','TACHIRA'),
(768,747,'ENDER','RICARDO','BARAJAS','JAIMES','V','26352275',NULL,'M','04141772324',NULL,'','','V-26352275-cedula.jpg','2016-08-02 06:40:03','2016-08-02 06:40:03','SAN CRISTOBAL','TACHIRA'),
(769,748,'DANIEL','ALEJANDRO','BARAJAS','JAIMES','V','22676944',NULL,'M','04141774282','','V-22676944.jpg','','V-22676944-cedula.jpg','2016-08-02 06:42:47','2016-08-31 21:06:48','SAN CRISTOBAL','TACHIRA'),
(771,750,'ENDERSON','DARIO','ARRIECHE','GIL ','V','19106412',NULL,'M','04245533906',NULL,'','','V-19106412-cedula.jpg','2016-08-06 21:19:04','2016-08-06 21:19:04','BARQUISIMETO','LARA'),
(772,751,'ADRIANO','','ALBARRAN','BALSA','V','8001876',NULL,'M','4161154533-',NULL,'','','V-8001876-cedula.jpg','2016-08-06 22:31:03','2016-08-06 22:31:03','MERIDA','MERIDA'),
(774,753,'ARCILIO','COROMOTO','PEREZ','TORREALBA','V','4544455',NULL,'M','04145594508',NULL,'','','V-4544455-cedula.jpg','2016-08-09 22:33:18','2016-08-09 22:33:18','BARQUISIMETO','LARA'),
(775,754,'LEONARDO','ANTONIO ','CARRASCO ','Chuello ','V','12432297',NULL,'M','4120503002','4125107707','V-12432297.jpg','','V-12432297-cedula.jpg','2016-08-13 21:04:54','2016-09-27 23:31:26','BARQUISIMETO','LARA'),
(776,755,'MIGUEL','ANGEL','GONZALES ','HERNANDEZ ','V','18484089',NULL,'M','04245618763',NULL,'','','V-18484089-cedula.jpg','2016-08-13 21:27:15','2016-08-13 21:27:15','BARQUISIMETO','LARA'),
(777,756,'JOSE','BERNARDO','HEREDIA','ACOSTA','V','16643796',NULL,'M','04245800913',NULL,'','','V-16643796-cedula.jpg','2016-08-14 20:47:25','2016-08-14 20:47:25','BARQUISIMETO','LARA'),
(778,757,'RONAL','JOSE','GIMENEZ','ALVAREZ','V','19887206',NULL,'M','04163540669',NULL,'','','V-19887206-cedula.jpg','2016-08-15 04:59:37','2016-08-15 04:59:37','BARQUISIMETO','LARA'),
(779,758,'JOAN','MANUEL','TIMAURE','','V','14879928',NULL,'M','04163540669',NULL,'','','V-14879928-cedula.jpg','2016-08-15 05:13:29','2016-08-15 05:13:29','BARQUISIMETO','LARA'),
(780,759,'ALLAN ','ANTONIO ','CASTELLANO','CABRERA','V','9604610',NULL,'M','04145253179',NULL,'','','V-9604610-cedula.jpg','2016-08-16 14:59:18','2016-08-16 14:59:18','BARQUISIMETO','LARA'),
(781,760,'XAVIER','ORANGEL','HENRIQUEZ','GARCES','V','151086019',NULL,'M','4245789286',NULL,'','','V-V-151086-cedula.jpg','2016-08-17 15:28:22','2016-08-17 19:29:39',NULL,NULL),
(782,761,'JHONATHAN','MIGUEL','DIAZ','PEÑA','V','14417889',NULL,'M','4124669217',NULL,'','','V-14417889-cedula.jpg','2016-08-18 18:21:40','2016-08-18 18:21:40','PUERTO CABELLO','CARABOBO'),
(783,762,'JESS','DE JESUS','AVILA','MEDINA','V','10405331',NULL,'M','4146240651',NULL,'','','V-10405331-cedula.jpg','2016-08-21 09:01:44','2016-08-21 09:01:44',NULL,NULL),
(784,763,'YOLANDA','','PRIETO','','V','13208437',NULL,'F','4149614154',NULL,'','','V-13208437-cedula.jpg','2016-08-21 09:14:02','2016-08-21 09:14:02',NULL,NULL),
(785,764,'LUIS','MARIO','CHACIN','','V','29758228',NULL,'M','4149614154',NULL,'','','V-29758228-cedula.jpg','2016-08-21 09:17:51','2016-08-21 09:17:51',NULL,NULL),
(786,765,'YOSELIN','','MORALES','','V','14682124',NULL,'F','4146358330',NULL,'','','V-14682124-cedula.jpg','2016-08-21 09:27:11','2016-08-21 09:27:11','MARACAIBO','ZULIA'),
(787,766,'REINALDO','','MARTINEZ','','V','26638009',NULL,'M','4126815797',NULL,'','','V-26638009-cedula.jpg','2016-08-21 09:38:40','2016-08-21 09:38:40','MARACAIBO','ZULIA'),
(789,768,'NESTOR','ALI','ARCILA','SOTO','V','20465795',NULL,'M','04126706181',NULL,'','','V-20465795-cedula.jpg','2016-08-25 03:50:30','2016-08-25 03:50:30','BARQUISIMETO','LARA'),
(790,769,'RODRIGO','','ORTIZ','','V','10557448',NULL,'M','4145029274','04160584826','','','V-10557448-cedula.jpg','2016-08-26 14:35:58','2016-08-29 06:36:34',NULL,NULL),
(791,770,'ANGEL','EDUARDO ','GARCIA','DIAZ ','V','3230066',NULL,'M','04145306975',NULL,'','','V-3230066-cedula.jpg','2016-08-26 22:03:17','2016-08-26 22:03:17','CABUDARE','LARA'),
(792,771,'LEONARDO ','ANGEL ','GARCIA','GRISALES ','V','14062752',NULL,'M','4263526999',NULL,'','','V-14062752-cedula.jpg','2016-08-26 22:07:31','2016-08-26 22:07:31','CABUDARE','LARA'),
(793,772,'RICHARD ','ENRIQUE','ENCINOZA ','TORREALBA','V','16748987',NULL,'M','04145116927',NULL,'','','V-16748987-cedula.jpg','2016-08-26 22:28:29','2016-08-26 22:28:29',NULL,NULL),
(794,773,'ROSMER','ROSENDO','NAVAS','QUINTERO','V','13971247',NULL,'M','02582515959',NULL,'','','','2016-08-27 00:49:42','2016-08-27 00:49:42',NULL,NULL),
(795,774,'JOSE ','GREGORIO','SIVIRO','JIMENEZ','V','19376884',NULL,'M','4245191569',NULL,'','','V-19376884-cedula.jpg','2016-08-28 08:34:16','2016-09-16 19:23:17','PIRITU','PORTUGUESA'),
(796,775,'RONALD','GABRIEL','MENDEZ','GONZALEZ','V','22657749',NULL,'M','4126823257',NULL,'','','V-22657749-cedula.jpg','2016-08-28 08:53:55','2016-08-28 08:53:55','MERIDA','MERIDA'),
(797,776,'PEDRO','ANTONIO','MOTA','GARCIA','V','13163425',NULL,'M','4148156155',NULL,'','','V-13163425-cedula.jpg','2016-08-30 03:30:33','2016-08-30 03:30:33',NULL,NULL),
(798,777,'ORLANDO','','FLORES','LEON','V','11420633',NULL,'M','4248318307',NULL,'','','V-11420633-cedula.jpg','2016-08-30 03:32:22','2016-08-30 03:32:22',NULL,NULL),
(799,778,'MICHAEL ','DANIEL','LA CRUZ','LA CRUZ','V','17566190',NULL,'M','04168952431',NULL,'','','V-17566190-cedula.jpg','2016-08-30 16:43:08','2016-08-30 16:43:08','MARACAIBO','ZULIA'),
(927,779,'SERVICIO DE GRUAS TIO POCHO CA','','SERVICIO DE GRUAS TIO POCHO CA','','V','J-078190929','0000-00-00','M','04246505248','4246505248','','','','2016-08-31 17:45:43','2016-09-05 07:17:09',NULL,NULL),
(928,780,'FRANK','','GUILLEN','','V','J-090032975','0000-00-00','M','4147172333','4147172333','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','LIBERTADOR','MERIDA'),
(929,781,'Joel Jose','','Salas Gonzalez','','V','J-117901277','0000-00-00','M','04141581716','4141581716','','','J-117901277-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:29:51','BARQUISIMETO','LARA'),
(930,782,'Favio','','Favio','','V','J-146980976','0000-00-00','M','4146891697','4146891697','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','PUNTO FIJO','FALCON'),
(931,783,'SERVIGRUAS CHACON C.A','','SERVIGRUAS CHACON C.A','','V','J-147073611','0000-00-00','M','4247151037','4247151037','','','J-147073611-cedula.jpg','2016-08-31 17:45:43','2016-09-03 14:45:03','PALMIRA','TACHIRA'),
(932,784,'TRANSPORTE JYR13','','TRANSPORTE JYR13','','V','J-296209073','0000-00-00','M','04267018658','4267018658','','','','2016-08-31 17:45:43','2016-09-05 06:29:16','PERIJA','ZULIA'),
(933,785,'GRUAS BJ CA','','GRUAS BJ CA','','V','J-296979014','0000-00-00','M','04246221481','4246221481','','','J-296979014-cedula.jpg','2016-08-31 17:45:43','2016-09-05 06:37:12','EL VENADO','ZULIA'),
(934,787,'TRANSPORTE ITAMEL','','TRANSPORTE ITAMEL','','V','J-299580767','0000-00-00','M','4247805407','4247805407','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','LA PEDREGOZA','MERIDA'),
(935,788,'SOCIEDAD LINEA DE TAXIS SANTISIMA TRINIDAD','','SOCIEDAD LINEA DE TAXIS SANTISIMA TRINIDAD','','V','J-306047662','0000-00-00','M','04147554091','4147554091','','','J-306047662-cedula.jpg','2016-08-31 17:45:43','2016-09-29 22:40:58','MERIDA','MERIDA'),
(936,789,'MULTISERVICIO AUTOMTRIZ RIVI C.A','','MULTISERVICIO AUTOMTRIZ RIVI C.A','','V','J-401058868','0000-00-00','M','4164752999','4164752999','','','J-401058868-cedula.jpg','2016-08-31 17:45:43','2016-09-03 14:31:21','TARIBA ','TACHIRA'),
(937,790,'SERVICIO DE TRANSPORTE Y GRUAS YARACAL C.A.','','SERVICIO DE TRANSPORTE Y GRUAS YARACAL C.A.','','V','J-403995613','0000-00-00','M','4121430615','4121430615','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','CORO','FALCON'),
(938,791,'SERVIGRUAS S&B C.A.','','SERVIGRUAS S&B C.A.','','V','J-406267465','0000-00-00','M','04245506582','4245506582','','','','2016-08-31 17:45:43','2016-09-05 07:55:26','MERIDA','MERIDA'),
(939,792,'SERVICIOS JORGE ','','SERVICIOS JORGE ','','V','V-041110984','0000-00-00','M','4147101972','4147101972','','','V-041110984-cedula.jpg','2016-08-31 17:45:43','2016-09-03 10:54:25',NULL,NULL),
(940,793,'GRUAS EL PELON','','GRUAS EL PELON','','V','V-059355836','0000-00-00','M','4248060644','4248060644','','','V-059355836-cedula.jpg','2016-08-31 17:45:43','2016-09-04 10:05:59',NULL,NULL),
(941,794,'SERVIGRUA LOS AMIGOS','','SERVIGRUA LOS AMIGOS','','V','V-070843257','0000-00-00','M','4147183123','4147183123','','','','2016-08-31 17:45:43','2016-08-31 17:45:43',NULL,NULL),
(942,795,'ORLANDO','','ZERPA','','V','8024178','0000-00-00','M','4140362751','4140362751','','','V-080241786-cedula.jpg','2016-08-31 17:45:43','2016-09-06 06:50:03','LIBERTADOR','MERIDA'),
(943,796,'MULTISERVICIOS LA CURVA','','MULTISERVICIOS LA CURVA','','V','V-092073455','0000-00-00','M','4141766267','4141766267','','','V-092073455-cedula.jpg','2016-08-31 17:45:43','2016-09-03 14:15:57',NULL,NULL),
(944,797,'WILLIAM DE JESUS','','BARRIOS RIVERA','','V','V-10109134','0000-00-00','M','4269737231','4269737231','','','V-10109134-cedula.jpg','2016-08-31 17:45:43','2016-09-06 07:04:03','MERIDA','MERIDA'),
(945,798,'MIGUEL ANGEL','','GUILLEN PEREZ','','V','V-10109808','0000-00-00','M','4247266571','4247266571','','','V-10109808-cedula.jpg','2016-08-31 17:45:43','2017-01-16 11:39:49','','MERIDA'),
(946,799,'JOSE','GREGORIO','RODRIGUEZ','','V','V-10146995','0000-00-00','M','4147047677','4160766073','','','V-10146995-cedula.jpg','2016-08-31 17:45:43','2016-10-06 13:40:49','SAN CRISTOBAL ','TACHIRA'),
(947,800,'SERVI GRUAS SAN CRISTOBAL ','','SERVI GRUAS SAN CRISTOBAL ','','V','V-10147237','0000-00-00','M','4147153476','4147153476','','','V-10147237-cedula.jpg','2016-08-31 17:45:43','2016-09-03 13:34:09',NULL,NULL),
(948,801,'GERSON','','COLMENARES','','V','V-101685868','0000-00-00','M','4160702098','4160702098','','','V-101685868-cedula.jpg','2016-08-31 17:45:43','2016-09-03 14:02:50','SAN CRISTOBAL','TACHIRA'),
(949,803,'AQUILES','','ESCALANTE','','V','V-11717161','0000-00-00','M','04245071279','4245071279','','','V-11717161-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:38:38','BARINITAS','BARINAS'),
(950,804,'MIGUEL PIÑERO','','MIGUEL PIÑERO','','V','V-11769640','0000-00-00','M','4126537805','4126537805','','','V-11769640-cedula.jpg','2016-08-31 17:45:43','2016-09-07 10:14:29','PUNTO FIJO','FALCON'),
(951,805,'ARTURO ','','GONZALEZ ','','V','V-122054744','0000-00-00','M','04141001508','4141001508','','','','2016-08-31 17:45:43','2016-09-05 09:19:08','BARINAS','BARINAS'),
(952,806,'JUAN CARLOS','','ZAMBRANO','','V','V-12352142','0000-00-00','M','4147448814','4147448814','','','V-12352142-cedula.jpg','2016-08-31 17:45:43','2016-09-06 07:25:21','MERIDA','MERIDA'),
(953,807,'Servi Traslados A.M','','Servi Traslados A.M','','V','V-12790216','0000-00-00','M','4162661453','4162661453','','','V-12790216-cedula.jpg','2016-08-31 17:45:43','2016-09-07 09:48:28','CORO','FALCON'),
(954,808,'SERVICIO DE GRUAS EL GATO','','SERVICIO DE GRUAS EL GATO','','V','V-128001545','0000-00-00','M','4265746123','4265746123','','','V-128001545-cedula.jpg','2016-08-31 17:45:43','2016-09-04 11:38:02','LIBERTADOR','MERIDA'),
(955,809,'EDGAR','','GIMENEZ','','V','V-12933771','0000-00-00','M','04145230342','4145230342','','','V-12933771-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:21:21',NULL,NULL),
(956,810,'INVERSIONES EL ARANGEL  PH FP','','INVERSIONES EL ARANGEL  PH FP','','V','V-130418380','0000-00-00','M','04245346073','4245346073','','','','2016-08-31 17:45:43','2016-09-05 10:06:43','BARINAS','BARINAS'),
(957,811,'MULTISERVICIOS Y GRUAS LEAN','','MULTISERVICIOS Y GRUAS LEAN','','V','V-131482392','0000-00-00','M','4247542332','4247542332','','','V-131482392-cedula.jpg','2016-08-31 17:45:43','2016-09-03 07:31:30',NULL,NULL),
(958,812,'EDICSON','','GAMBOA','','V','V-13304059','0000-00-00','M','4269587138','4269587138','','','V-13304059-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:51:37',NULL,NULL),
(959,813,'WILMER','','LEON','','V','V-136441392','0000-00-00','M','4245163642','4245163642','','','','2016-08-31 17:45:43','2016-08-31 17:45:43',NULL,NULL),
(960,814,'Carlos','','MENDEZ','','V','V-13803418','0000-00-00','M','4167750203','4167750203','','','V-13803418-cedula.jpg','2016-08-31 17:45:43','2016-09-05 06:35:19','MERIDA','MERIDA'),
(961,815,'JEAN','','CONTRERAS','','V','V-13803503','0000-00-00','M','4143747190','4143747190','','','V-13803503-cedula.jpg','2016-08-31 17:45:43','2016-09-04 10:55:37','MERIDA','MERIDA'),
(962,816,'SERGIO','','DAVILA','','V','V-13804687','0000-00-00','M','4147509750','4147509750','','','V-13804687-cedula.jpg','2016-08-31 17:45:43','2016-09-04 11:03:49','EJIDO','MERIDA'),
(963,817,'LUIS ALBERTO','','SANCHEZ ESCALONA','','V','V-13824867','0000-00-00','M','4247686986','4247686986','','','V-13824867-cedula.jpg','2016-08-31 17:45:43','2016-09-06 06:59:24','MERIDA','MERIDA'),
(964,818,'MICHELL.CARS (JEAN CARLOS MORENO)','','MICHELL.CARS (JEAN CARLOS MORENO)','','V','V-140233532','0000-00-00','M','4247674648','4247674648','','','V-140233532-cedula.jpg','2016-08-31 17:45:43','2016-09-03 13:38:26','SAN CRISTOBAL','TACHIRA'),
(965,819,'ISLANDER','','SOLORZANO','','V','V-14172361','0000-00-00','M','4266705891','4266705891','','','V-14172361-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:11:20','BARINAS','BARINAS'),
(966,820,'CLERIS','','CONTRETRAS','','V','V-14268154','0000-00-00','M','4147480577','4147480577','','','V-14268154-cedula.jpg','2016-08-31 17:45:43','2016-09-04 10:59:32',NULL,NULL),
(967,821,'PEDRO','','AMARO','','V','V-14292101','0000-00-00','M','4245751961','4245751961','','','V-14292101-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:07:06',NULL,NULL),
(968,822,'SERVI GRUAS ROSIANO ARANA ','','SERVI GRUAS ROSIANO ARANA ','','V','V-14361524','0000-00-00','M','4247631852','4247631852','','','V-14361524-cedula.jpg','2016-08-31 17:45:43','2016-09-03 10:33:00','LA FRIA ','TACHIRA'),
(969,823,'URLEY','','ZARRA','','V','V-147000207','0000-00-00','M','4161343916','4161343916','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','MERIDA','MERIDA'),
(970,824,'Rogger','','Gimenez','','V','V-14979684','0000-00-00','M','04141584812','4141584812','','','V-14979684-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:37:04','BARQUISIMETO','LARA'),
(971,825,'MULTISERVICIOS MUNDIAL','','MULTISERVICIOS MUNDIAL','','V','V-155359681','0000-00-00','M','4143737523','4143737523','','','','2016-08-31 17:45:43','2016-08-31 17:45:43','BARINAS','BARINAS'),
(972,826,'OSCAR','','SALAS','','V','V-15672544','0000-00-00','M','04145781138','4145781138','','','V-15672544-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:46:42',NULL,NULL),
(973,827,'ROYERS','','TORRES','','V','V-15729387','0000-00-00','M','04268092754','4268092754','','','V-15729387-cedula.jpg','2016-08-31 17:45:43','2016-09-05 07:37:01',NULL,NULL),
(974,828,'Naudy','','Molina','','V','15778873','0000-00-00','M','04245306910','4245306910','','','V-15778873-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:57:37',NULL,NULL),
(975,830,'Carlos','','Chacon','','V','V-164386143','0000-00-00','M','4246823375','4246823375','','','V-164386143-cedula.jpg','2016-08-31 17:45:43','2016-09-07 10:01:18','PUNTO FIJO','FALCON'),
(976,831,'SERVICIO DE GRUAS BETIN','','SERVICIO DE GRUAS BETIN','','V','16678159','0000-00-00','M','4247394690','4247394690','','','V-16678159-cedula.jpg','2016-08-31 17:45:43','2016-09-06 07:28:04','EL VIGIA','MERIDA'),
(977,832,'ARGENIS','','ROSENDO','','V','V-17034977','0000-00-00','M','04245507021','4245507021','','','V-17034977-cedula.jpg','2016-08-31 17:45:43','2016-09-05 07:53:41',NULL,NULL),
(978,833,'EFRAIN','','PADRON','','V','V-17469479','0000-00-00','M','4245465872','4245465872','','','V-17469479-cedula.jpg','2016-08-31 17:45:43','2016-09-05 07:41:54','YARITAGUA','YARACUY'),
(979,834,'GRUAS BALZA','','GRUAS BALZA','','V','V-17522084','0000-00-00','M','4247412984','4247412984','','','V-17522084-cedula.jpg','2016-08-31 17:45:43','2016-09-06 07:21:29','MERIDA','MERIDA'),
(980,835,'LEONARD','','NARIÑO','','V','V-17678831','0000-00-00','M','4147050169','4147050169','','','V-17678831-cedula.jpg','2016-08-31 17:45:43','2016-09-03 07:40:58','COLON','TACHIRA'),
(981,836,'Wilfredo','','Melendez','','V','V-17699424','0000-00-00','M','04145586544','4145586544','','','V-17699424-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:32:05',NULL,NULL),
(982,837,'GREGORY','','SANCHEZ','','V','V-17810494','0000-00-00','M','4247105057','4247105057','','','V-17810494-cedula.jpg','2016-08-31 17:45:43','2016-09-04 11:32:04','MERIDA','MERIDA'),
(983,838,'CHARLY','','AMARO','','V','V-17853807','0000-00-00','M','04145563398','4145563398','','','V-17853807-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:15:37',NULL,NULL),
(984,839,'OSCAR','','COGOLLO','','V','V-17862920','0000-00-00','M','4166714365','4166714365','','','V-17862920-cedula.jpg','2016-08-31 17:45:43','2016-09-03 00:22:09',NULL,NULL),
(985,840,'Robert','','Castillo','','V','V-18156895','0000-00-00','M','4146946392','4146946392','','','V-18156895-cedula.jpg','2016-08-31 17:45:43','2016-09-07 09:55:20','PUNTO FIJO','FALCON'),
(986,841,'Multiservicios y Gruas Yonathan','','Multiservicios y Gruas Yonathan','','V','V-18182911484','0000-00-00','M','04268709723','4268709723','','','V-18182911484-cedula.jpg','2016-08-31 17:45:43','2016-09-06 09:28:54','GUASDGUALITO','APURE'),
(987,842,'JULIO','','HERNANDEZ','','V','V-182070250','0000-00-00','M','4247039330','4247039330','','','V-182070250-cedula.jpg','2016-08-31 17:45:43','2016-09-04 14:38:38','MERIDA','MERIDA'),
(988,843,'JOAN','','CARREÑO','','V','V-182876833','0000-00-00','M','4248165390','4248165390','','','V-182876833-cedula.jpg','2016-08-31 17:45:43','2016-09-04 09:10:44',NULL,NULL),
(989,844,'RONALD','','OSUNA','','V','V-18498057','0000-00-00','M','4247255882','4247255882','','','V-18498057-cedula.jpg','2016-08-31 17:45:43','2016-09-05 07:43:33','EL VIGIA','MERIDA'),
(990,845,'JESUS','','Perez','','V','V-18772811','0000-00-00','M','4140710057','4140710057','','','','2016-08-31 17:45:43','2016-08-31 17:45:43',NULL,NULL),
(991,846,'Carlos','','ANDARA','','V','V-19515681','0000-00-00','M','4145324759','4145324759','','','V-19515681-cedula.jpg','2016-08-31 17:45:43','2016-09-05 12:34:58','EL VIGIA','MERIDA'),
(992,847,'Edwin','','Gonzalez','','V','V-19727121','0000-00-00','M','04245880743','4245880743','','','V-19727121-cedula.jpg','2016-08-31 17:45:43','2016-09-05 08:43:22','BARQUISIMETO','LARA'),
(993,848,'LUIS','','CEBALLOS','','V','V-20101371','0000-00-00','M','4263724386','4263724386','','','V-20101371-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:43:07',NULL,NULL),
(994,849,'ERICKO','','LUNA','','V','V-20369600','0000-00-00','M','4248190450','4248190450','','','V-20369600-cedula.jpg','2016-08-31 17:45:43','2016-09-04 08:55:22',NULL,NULL),
(995,851,'Miguel','','Meza','','V','V-21502570','0000-00-00','M','4126594815','4126594815','','','V-21502570-cedula.jpg','2016-08-31 17:45:43','2016-09-07 09:58:07','PUNTO FIJO','FALCON'),
(996,852,'JOSE JAVIER','','ARAUJO','','V','V-221117430','0000-00-00','M','4262076832','4262076832','','','V-221117430-cedula.jpg','2016-08-31 17:45:43','2016-09-07 10:34:12','BARINAS','BARINAS'),
(997,853,'MULTISERVICIOS Y ELECTROAUTO RUBENCHO','','MULTISERVICIOS Y ELECTROAUTO RUBENCHO','','V','V-234201600','0000-00-00','M','4147585454','4147585454','','','V-234201600-cedula.jpg','2016-08-31 17:45:43','2016-09-03 13:54:19','SAN CRISTOBAL','TACHIRA'),
(998,854,'SERVI GRUAS PERIBECA ','','SERVI GRUAS PERIBECA ','','V','V-5026390','0000-00-00','M','4168530758','4168530758','','','V-5026390-cedula.jpg','2016-08-31 17:45:43','2016-09-03 10:46:45','SAN CRISTOBAL ','TACHIRA'),
(999,855,'MANUEL','','RODRIGUEZ','','V','V-5199291','0000-00-00','M','4163790534','4163790534','','','V-5199291-cedula.jpg','2016-08-31 17:45:43','2016-09-04 14:29:18','MERIDA','MERIDA'),
(1000,856,'VALERIO','','SILVA','','V','V-5463388','0000-00-00','M','4265806455','4265806455','','','V-5463388-cedula.jpg','2016-08-31 17:45:43','2016-09-04 09:32:30',NULL,NULL),
(1001,857,'VICTOR','','UZCATEGUI','','V','V-8046183','0000-00-00','M','4167743405','4167774340','','','V-8046183-cedula.jpg','2016-08-31 17:45:43','2016-10-21 20:29:26','MERIDA','MERIDA'),
(1002,859,'Jose Raul','','Perez','','V','V-9028506','0000-00-00','M','4145925172','4145925172','','','V-9028506-cedula.jpg','2016-08-31 17:45:43','2016-09-04 10:35:55','SANTA ELENA DE ARENALES','MERIDA'),
(1003,860,'ALVARO','','TARAZONA','','V','V-9240891','0000-00-00','M','4266299512','4266299512','','','V-9240891-cedula.jpg','2016-08-31 17:45:43','2016-09-05 09:55:52',NULL,NULL),
(1004,861,'JOSE','','SANABRIA','','V','V-9390805','0000-00-00','M','04145261754','4145261754','','','V-9390805-cedula.jpg','2016-08-31 17:45:43','2016-09-05 07:48:53',NULL,NULL),
(1054,906,'LUIS','JOSE','MONSALVE ','VARELA ','V','V-205714',NULL,'M','04149765014',NULL,'','','V-V-205714-cedula.jpg','2016-08-31 21:00:23','2016-08-31 21:00:23','SAN CRISTOVAL','TACHIRA'),
(1055,907,'CARLOS','JAVIER','BARRETO','COLMENARES','V','19135093',NULL,'M','4247171523',NULL,'','','V-19135093-cedula.jpg','2016-09-03 09:18:12','2016-09-03 09:18:12',NULL,NULL),
(1056,908,'RANCES','ALFONSO','LOPEZ','CARDENAS ','V','5651989',NULL,'M','4143769845',NULL,'','','V-5651989-cedula.jpg','2016-09-03 09:22:00','2016-09-03 09:22:00',NULL,NULL),
(1057,909,'JON','ALEXIS','ROMERO','CEPEDA','V','16779836',NULL,'M','4120673008',NULL,'','','V-16779836-cedula.jpg','2016-09-03 09:28:30','2016-09-03 09:28:30',NULL,NULL),
(1058,910,'RICHARD','ORLANDO','URIBE','ALVAREZ','V','1515601',NULL,'M','4164752999',NULL,'','','V-1515601-cedula.jpg','2016-09-03 10:33:59','2016-09-03 10:33:59','TARIBA ','TACHIRA'),
(1059,911,'RUBEN','DARIO','CHACON','','V','5652366',NULL,'M','4147123103',NULL,'','','V-5652366-cedula.jpg','2016-09-03 10:49:48','2016-09-03 10:49:48','PALMIRA','TACHIRA'),
(1060,912,'JOSE','GUILLERMO','CORREA','','E','81372421',NULL,'M','04161329811',NULL,'','','V-81372421-cedula.jpg','2016-09-03 11:05:17','2016-09-06 09:28:56','GUASDGUALITO','APURE'),
(1061,913,'RAFAEL','GUILLERMO','CORREA','ACERO','V','18291148',NULL,'M','04268709723',NULL,'','','V-18291148-cedula.jpg','2016-09-03 11:07:53','2016-09-06 09:29:00','GUASDGUALITO','APURE'),
(1062,914,'CARLOS','MIGUEL','OTERO','PIRE','V','20075521',NULL,'M','4248544775',NULL,'','','V-20075521-cedula.jpg','2016-09-04 05:56:43','2016-09-04 05:56:43',NULL,NULL),
(1063,915,'JUAN','CARLOS','OTERO','PIRE','V','16491105',NULL,'M','4149951036',NULL,'','','V-16491105-cedula.jpg','2016-09-04 05:59:26','2016-09-04 05:59:26',NULL,NULL),
(1064,916,'REIVEN','ALEXANDER','SABINO','FEBRES','V','24391428',NULL,'M','4248154490',NULL,'','','V-24391428-cedula.jpg','2016-09-04 06:01:30','2016-09-04 06:01:30',NULL,NULL),
(1065,917,'EDWARD','RAMON','FEBRES','PEREZ','V','24391443',NULL,'M','4163210079',NULL,'','','V-24391443-cedula.jpg','2016-09-04 06:04:02','2016-09-04 06:04:02',NULL,NULL),
(1066,918,'JOEL','SAMIR','QUINTERO','LARES','V','22655605',NULL,'M','4169785656',NULL,'','','V-22655605-cedula.jpg','2016-09-04 06:43:44','2016-09-04 06:43:44','MERIDA','MERIDA'),
(1067,919,'EDGAR','ELOY','AVENDAÑO','SANCHEZ','V','8032475',NULL,'M','4247805407',NULL,'','','V-8032475-cedula.jpg','2016-09-04 06:51:07','2016-09-04 06:51:07','LA PEDREGOZA','MERIDA'),
(1068,920,'NESTOR','JOSE','LOPEZ','VAZQUEZ','V','18523614',NULL,'M','04267018658',NULL,'','','V-18523614-cedula.jpg','2016-09-05 02:23:09','2016-09-05 02:23:09','PERIJA','ZULIA'),
(1069,921,'LUIS','ALBERTO','MONTILLA','CAMEJO','V','11720879',NULL,'M','04143631268',NULL,'','','V-11720879-cedula.jpg','2016-09-05 02:28:44','2016-09-05 02:28:44','PERIJA','ZULIA'),
(1070,922,'GIOVANNI','DE JESUS','BARRIOS','PARRA','V','15031943',NULL,'M','4161343916','','','','V-15031943-cedula.jpg','2016-09-05 02:32:25','2016-09-09 17:03:01','MERIDA','MERIDA'),
(1071,923,'ABRAHAM','DE JESUS','CAMARGO','GARCES','V','6777752',NULL,'M','04246221481',NULL,'','','V-6777752-cedula.jpg','2016-09-05 02:35:59','2016-09-05 02:35:59','EL VENADO','ZULIA'),
(1072,924,'WILLIAMQ','ENRIQUE','RAMIREZ','','V','14278637',NULL,'M','04246505248',NULL,'','','V-14278637-cedula.jpg','2016-09-05 03:29:45','2016-09-05 03:29:45',NULL,NULL),
(1073,925,'DANI','PAUL','OSUNA','PEÑA','V','18498058',NULL,'M','4247460939',NULL,'','','V-18498058-cedula.jpg','2016-09-05 03:47:29','2016-09-05 03:47:29','EL VIGIA','MERIDA'),
(1074,926,'ESPERANZA','','ARRIECHE','','V','17728467',NULL,'F','04245506582',NULL,'','','V-17728467-cedula.jpg','2016-09-05 04:01:08','2016-09-05 04:01:08',NULL,NULL),
(1075,927,'HERNAN','JOSE','MOGOLLÓN','PINEDA','V','15961789',NULL,'M','04245815440',NULL,'','','V-15961789-cedula.jpg','2016-09-05 04:14:13','2016-09-05 04:14:13',NULL,NULL),
(1076,928,'NAUDY','JOHAN','MOLINA','','V','157788732',NULL,'M','04245306910',NULL,'','','V-15778873-cedula.jpg','2016-09-05 04:57:16','2016-09-05 08:57:41',NULL,NULL),
(1077,929,'JORGE','RAFAEL','FUENTES','MONTILLAS','V','20962094',NULL,'M','04145715870',NULL,'','','V-20962094-cedula.jpg','2016-09-05 05:23:51','2016-09-05 05:23:51','BARINAS','BARINAS'),
(1078,930,'AQUILES','JOSE','ESCALANTE','GRATEROL','V','20961971',NULL,'M','04161183291',NULL,'','','V-20961971-cedula.jpg','2016-09-05 05:34:51','2016-09-05 05:34:51','BARINITAS','BARINAS'),
(1079,931,'PABLO','JOSE','GONZALEZ','GARCIA','V','13041838',NULL,'M','04245346073',NULL,'','','V-13041838-cedula.jpg','2016-09-05 06:00:55','2016-09-05 06:00:55','BARINAS','BARINAS'),
(1080,932,'PABLO','JOSE','GONZALEZ','ALDANA','V','27350766',NULL,'M','04160568751',NULL,'','','V-27350766-cedula.jpg','2016-09-05 06:03:50','2016-09-05 06:03:50','BARINAS','BARINAS'),
(1081,933,'WILMER','ENRIQUE','PARRA','TORO','V','24195065',NULL,'M','4147291484',NULL,'','','V-24195065-cedula.jpg','2016-09-05 08:14:44','2016-09-05 08:14:44','LIBERTADOR','MERIDA'),
(1082,934,'NICOLAS','AUGUSTO','SANCHEZ','VELAZQUEZ','V','17130435',NULL,'M','4247360996',NULL,'','','V-17130435-cedula.jpg','2016-09-05 08:19:44','2016-09-05 08:19:44','LIBERTADOR','MERIDA'),
(1083,935,'MANUEL','ANGULO ','TORO','','V','18619657',NULL,'M','4247596789',NULL,'','','V-18619657-cedula.jpg','2016-09-05 08:27:15','2016-09-05 08:27:15','LIBERTADOR','MERIDA'),
(1084,936,'JOSE','FRANCISCO','PEREZ','','V','16912004',NULL,'M','4147418175','','','','V-19752675-cedula.jpg','2016-09-06 03:09:57','2017-01-16 13:32:08','','MERIDA'),
(1085,937,'MIGUEL','ANGEL','GUILLEN','PEREZ','J','313976261',NULL,'M','04247266571',NULL,'','','V-31397626-cedula.jpg','2016-09-06 03:12:43','2016-09-06 07:13:02','','MERIDA'),
(1086,938,'TONY','JOSE','COLMENARES','VIVAS','V','11462060',NULL,'M','04147554091',NULL,'','','V-11462060-cedula.jpg','2016-09-06 03:33:46','2016-09-06 03:33:46','MERIDA','MERIDA'),
(1087,939,'NELXON','ALBERTO','CARRERO','GUTIERES','V','9201606',NULL,'M','04247216927',NULL,'','','V-9201606-cedula.jpg','2016-09-06 04:30:17','2016-09-06 04:30:17','MERIDA','MERIDA'),
(1088,940,'YORBIS','','RODRIGUES','','V','17028360',NULL,'M','04247466066',NULL,'','','V-17028360-cedula.jpg','2016-09-06 04:32:06','2016-09-06 04:32:06','MERIDA','MERIDA'),
(1089,941,'GREGORI','','SANCHEZ','','V','17810494',NULL,'M','04247105057',NULL,'','','V-17810494-cedula.jpg','2016-09-06 04:33:15','2016-09-06 04:33:15','MERIDA','MERIDA'),
(1090,942,'IVAN ','','CIRTT','','V','14946037',NULL,'M','04247528102',NULL,'','','V-14946037-cedula.jpg','2016-09-06 04:34:27','2016-09-06 04:34:27','MERIDA','MERIDA'),
(1091,943,'JOSE','','CONDE','','V','18498257',NULL,'M','04147287967',NULL,'','','V-18498257-cedula.jpg','2016-09-06 04:35:21','2016-09-06 04:35:21','MERIDA','MERIDA'),
(1092,944,'DIEGO','','CHACON','','V','20572832',NULL,'M','04247392485',NULL,'','','V-20572832-cedula.jpg','2016-09-06 04:36:12','2016-09-06 04:36:12','MERIDA','MERIDA'),
(1093,945,'JOSE','OLIVO','PEÑA','','V','16305728',NULL,'M','04147370659',NULL,'','','V-16305728-cedula.jpg','2016-09-06 04:37:13','2016-09-06 04:37:13','MERIDA','MERIDA'),
(1094,946,'LUIS','FRANCISCO ','GARCIA','CAMACHO','V','9207345',NULL,'M','04141766267',NULL,'','','V-9207345-cedula.jpg','2016-09-06 05:24:40','2016-09-06 05:24:40',NULL,NULL),
(1095,947,'EUDY','JOSE','BRINES','RUIZ','V','17232201',NULL,'M','04246096670',NULL,'','','V-17232201-cedula.jpg','2016-09-07 04:06:30','2016-09-07 04:06:30','MARACAIBO','ZULIA'),
(1096,948,'DANIEL','ERRIQUE','CABRERA','NAVAS','V','18624297',NULL,'M','04246702954',NULL,'','','V-18624297-cedula.jpg','2016-09-07 04:52:02','2016-09-07 04:52:02','MARACAIBO','ZULIA'),
(1097,949,'JULIO','ERRIQUE','VILLALOBOS','VILLALOBOS','V','22362827',NULL,'M','04146234501',NULL,'','','V-22362827-cedula.jpg','2016-09-07 04:57:46','2016-09-07 04:57:46','MARACAIBO','ZULIA'),
(1098,950,'OSWALDO','ARCANGEL','SANCHEZ','BRAVO','V','14794766',NULL,'M','04121430615',NULL,'','','V-14794766-cedula.jpg','2016-09-07 06:09:42','2016-09-07 06:09:42','CORO','FALCON'),
(1099,951,'FAVIO','RAMON','VILLALOBOS','','V','14698097',NULL,'M','04146891697',NULL,'','','V-14698097-cedula.jpg','2016-09-07 06:21:08','2016-09-07 06:21:08','PUNTO FIJO','FALCON'),
(1100,952,'FRANKLIN','JOSE','FLORES','ANGULO','V','15535968',NULL,'M','04143737523',NULL,'','','V-15535968-cedula.jpg','2016-09-07 06:29:23','2016-09-07 06:29:23','BARINAS','BARINAS'),
(1101,953,'GIOVANNY','','RIVAS','DIAZ','V','9031701',NULL,'M','4165838488',NULL,'','','V-9031701-cedula.jpg','2016-09-09 07:12:59','2016-09-09 07:12:59','MERIDA','MERIDA'),
(1102,954,'ROMER','JOSE','HERNANDEZ','MEJIA','V','18114712',NULL,'M','04163289317',NULL,'','','V-18114712-cedula.jpg','2016-09-12 02:15:16','2016-09-12 02:15:16',NULL,NULL),
(1103,955,'EDMUNDO','EMILIO','VILLARROEL','GUILARTE','V','14840619',NULL,'M','04143957318',NULL,'','','V-14840619-cedula.jpg','2016-09-12 02:23:10','2016-09-12 02:23:10','MARGARITA','NUEVA ESPARTA'),
(1104,956,'EDMUNDO','EMILIO','VILLARROEL','GUILARTE','V','148406193',NULL,'M','04143957318',NULL,'','','V-1484061-cedula.jpg','2016-09-12 02:25:56','2016-09-12 06:26:11','MARGARITA','NUEVA ESPARTA'),
(1105,957,'DIOGENES','CESAR','VILLARROEL','MARCANO','V','3823764',NULL,'M','04147892585',NULL,'','','V-3823764-cedula.jpg','2016-09-12 02:28:43','2016-09-12 02:28:43','MARGARITA','NUEVA ESPARTA'),
(1106,958,'DIOGENES','CESAR','VILLARROEL','MARCANO','V','38237640',NULL,'M','04147892585',NULL,'','','V-38237640-cedula.jpg','2016-09-12 02:32:36','2016-09-12 02:32:36','MARGARITA','NUEVA ESPARTA'),
(1107,959,'MOISES','ALBERTO','FERRER','VERA','V','19806233',NULL,'M','04248360072','','','','V-19806233-cedula.jpg','2016-09-12 02:44:05','2016-10-31 16:59:56','VALENCIA','CARABOBO'),
(1108,960,'EDWIN','JOSE','MARCANO','MUJICA','V','13192143',NULL,'M','4248729224',NULL,'','','V-13192143-cedula.jpg','2016-09-12 02:47:04','2016-09-12 02:47:04','MARAGARITA','NUEVA ESPARTA'),
(1109,961,'EDWIN','JOSE','MARCANO','MUJICA','V','1319214300',NULL,'M','04248729224',NULL,'','','V-2-cedula.jpg','2016-09-12 02:48:51','2016-09-12 06:49:05','MARAGARITA','NUEVA ESPARTA'),
(1110,962,'EDWIN','JOSE','MARCANO','MUJICA','V','131921430',NULL,'M','04248729224',NULL,'','','V-3-cedula.jpg','2016-09-12 02:50:48','2016-09-12 06:51:03','MARAGARITA','NUEVA ESPARTA'),
(1111,963,'CESAR ','AUGUSTO','VALENTE','FERNANDEZ','V','4975107',NULL,'M','4142453988',NULL,'','','V-4975107-cedula.jpg','2016-09-15 06:28:33','2016-09-15 06:28:33','CARACAS','DISTRITO CAPITAL'),
(1112,964,'RUBI','ANTONIO','PACHECO','QUINTERO','V','29589413',NULL,'M','4141531018',NULL,'','','V-29589413-cedula.jpg','2016-09-15 06:30:37','2016-09-15 06:30:37','CARACAS','DISTRITO CAPITAL'),
(1113,965,'ARNOLDO','JOSE','GOMEZ','CHACON','V','16224996',NULL,'M','4142222902',NULL,'','','V-16224996-cedula.jpg','2016-09-15 06:32:24','2016-09-15 06:32:24','CARACAS','DISTRITO CAPITAL'),
(1114,966,'JHONNY','SAMUEL','FRANCO','DIAZ','V','19497041',NULL,'M','4140105425',NULL,'','','V-19497041-cedula.jpg','2016-09-15 06:43:39','2016-09-15 06:43:39',NULL,NULL),
(1115,967,'FERMIN','JOSE ','MARTINEZ','CASTILLO','V','18711081',NULL,'M','4122244444',NULL,'','','V-18711081-cedula.jpg','2016-09-15 07:29:06','2016-09-15 07:29:06','CARACAS','DISTRITO CAPITAL'),
(1116,968,'JORGE','','FARIÑA','','V','17983830',NULL,'M','4241720848',NULL,'','','V-17983830-cedula.jpg','2016-09-15 07:38:36','2016-09-15 07:38:36','CARACAS','MIRANDA'),
(1117,969,'LIEZER ','','CARABALLO','','V','17752667',NULL,'M','4142475432',NULL,'','','V-17752667-cedula.jpg','2016-09-15 07:39:50','2016-09-15 07:39:50','CARACAS','MIRANDA'),
(1118,970,'JOSE ','CARLOS','PRIETO','TORRES','V','21016218',NULL,'M','4241813269',NULL,'','','V-21016218-cedula.jpg','2016-09-15 08:00:38','2016-09-15 08:00:38','CARACAS','DISTRITO CAPITAL'),
(1119,971,'MULTISERVICIOS RGL','','MULTISERVICIOS RGL','','V','J-293686318','0000-00-00','M','4147900627','4147900627','','','J-293686318-cedula.jpg','2016-09-19 05:14:14','2016-09-20 11:04:23','MARGARITA','NUEVA ESPARTA'),
(1120,972,'LUIS','EDUARDO','MOGOLLON','CORDERO','V','13652069','0000-00-00','M','4248389089','4248389089','','','V-13652069-cedula.jpg','2016-09-19 05:14:14','2016-09-23 17:18:22','EL TIGRE','ANZOATEGUI'),
(1121,973,'ERICK','','SUAREZ','','V','J-405323043','0000-00-00','M','4246304171','4246304171','','','J-405323043-cedula.jpg','2016-09-19 05:14:14','2016-09-25 04:44:41','MARACAIBO','ZULIA'),
(1122,974,'RANDOLPH','','RODRIGUEZ','','V','V-10118179','0000-00-00','M','4123564622','4123564622','','','V-10118179-cedula.jpg','2016-09-19 05:14:14','2016-09-20 11:28:28',NULL,NULL),
(1123,975,'ALFONSO','','PEREZ','','V','V-110268331','0000-00-00','M','4125872005','4125872005','','','','2016-09-19 05:14:14','2016-09-19 05:14:14','HIGUEROTE','MIRANDA'),
(1124,976,'WILLIAM','','RIVAVULLA','','V','V-13424947','0000-00-00','M','4147887941','4147887941','','','V-13424947-cedula.jpg','2016-09-19 05:14:14','2016-09-20 10:11:04','MARGARITA','NUEVA ESPARTA'),
(1125,977,'JUAN','','SUAREZ','','V','V-14777378','0000-00-00','M','4160199926','4160199926','','','V-14777378-cedula.jpg','2016-09-19 05:14:14','2016-09-25 04:42:16','CIUDAD OJEDA','ZULIA'),
(1126,978,'ALEXANDER','','LEAL','','V','V-14784543','0000-00-00','M','4149750013','4149750013','','','V-14784543-cedula.jpg','2016-09-19 05:14:14','2016-09-25 04:51:11','SAN CRISTOBAL','TACHIRA'),
(1127,979,'WILKER','','FLORES','','V','V-16910346','0000-00-00','M','4143341104','4143341104','','','V-16910346-cedula.jpg','2016-09-19 05:14:14','2016-10-22 14:57:53','BARLOVENTO','MIRANDA'),
(1128,980,'ANGEL','','GONZALEZ','','V','V-16930078','0000-00-00','M','4262982370','4262982370','','','V-16930078-cedula.jpg','2016-09-19 05:14:14','2016-09-20 10:18:22','MARGARITA','NUEVA ESPARTA'),
(1129,981,'JONATHAN','','PEREIRA','','V','V-17564663','0000-00-00','M','4146915596','4146915596','','','V-17564663-cedula.jpg','2016-09-19 05:14:14','2016-09-25 04:39:42','MARACAIBO','ZULIA'),
(1130,982,'ALBERTO','','TINEO','','V','V-17653214','0000-00-00','M','4263889393','4263889393','','','V-17653214-cedula.jpg','2016-09-19 05:14:14','2016-09-20 11:23:30',NULL,NULL),
(1131,983,'EDWAR','','CABRERA','','V','V-18525119','0000-00-00','M','4269357989','4269357989','','','V-18525119-cedula.jpg','2016-09-19 05:14:14','2016-11-10 14:55:28','BARQUISIMETO','LARA'),
(1132,984,'DANIEL','','CHAVEZ','','V','V-20112888','0000-00-00','M','4248222881','4248222881','','','V-20112888-cedula.jpg','2016-09-19 05:14:14','2016-09-20 11:17:17','MARGARITA','NUEVA ESPARTA'),
(1134,986,'DHERWING','ANTONIO','LUGO','MEDINA','V','11474606',NULL,'M','4165971428',NULL,'','','V-11474606-cedula.jpg','2016-09-20 06:20:44','2016-09-20 06:20:44','MARGARITA','NUEVA ESPARTA'),
(1135,987,'REINALDO','ROBERTO','BAEZ','ROSA','V','16932255',NULL,'M','4265866485',NULL,'','','V-16932255-cedula.jpg','2016-09-20 07:05:57','2016-09-20 07:05:57','MARGARITA','NUEVA ESPARTA'),
(1136,988,'ALEXANDER','','AGUIRRE','CASTRILLON','V','14686355',NULL,'M','4265868539',NULL,'','','V-14686355-cedula.jpg','2016-09-20 07:07:21','2016-09-20 07:07:21','MARGARITA','NUEVA ESPARTA'),
(1137,989,'YONNY','RAFAEL','CASTILLO','RODRIGUEZ','V','11702621',NULL,'M','4148441789',NULL,'','','V-11702621-cedula.jpg','2016-09-22 17:30:56','2016-09-22 17:30:56',NULL,NULL),
(1138,990,'PABLO','ENRIQUE','ARTIGA','VALERA','V','19137120',NULL,'M','4141564054',NULL,'','','V-19137120-cedula.jpg','2016-09-23 13:58:13','2016-09-23 13:58:13',NULL,NULL),
(1139,991,'JESUS ','RAFAEL','BARLAFANTE','MARQUEZ','V','20635932',NULL,'M','4248976257',NULL,'','','V-20635932-cedula.jpg','2016-09-23 14:05:04','2016-09-23 14:05:04',NULL,NULL),
(1140,992,'CARLOS ','ALBERTO','OROZCO','LOPEZ','V','17906073',NULL,'M','4147975334',NULL,'','','V-17906073-cedula.jpg','2016-09-23 14:19:28','2016-09-23 14:19:28',NULL,NULL),
(1141,993,'RICARDO','','AREAS','','V','24423545',NULL,'M','04145973434',NULL,'','','V-24423545-cedula.jpg','2016-09-27 16:01:45','2016-09-27 16:01:45','NAGUANAGUA','CARABOBO'),
(1142,994,'SERVIGRUAS LA CENTRAL CA',NULL,'SERVIGRUAS LA CENTRAL CA',NULL,'V','J-306372660',NULL,'M','4147739287','4147739287','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANA','SUCRE'),
(1143,995,'GRUAS LANDAETA',NULL,'GRUAS LANDAETA',NULL,'V','J-309465112',NULL,'M','4147753215','4147753215','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANA','SUCRE'),
(1144,996,'RICARDO',NULL,'BRICEÑO',NULL,'V','J-400966639',NULL,'M','4247055552','4247055552','','','J-400966639-cedula.jpg','2016-09-28 05:45:29','2016-09-28 22:35:53','TRUJILLO','TRUJILLO'),
(1145,997,'SERVIGRUAS ALEXANDRA',NULL,'SERVIGRUAS ALEXANDRA',NULL,'V','J-407669168',NULL,'M','4248718300','4248718300','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANA','SUCRE'),
(1146,998,'LUIS',NULL,'NAVARRO',NULL,'V','V- 15874983',NULL,'M','4140831088','4140831088','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','PUERTO LA CRUZ','ANZOATEGUI'),
(1147,999,'OSWALDO',NULL,'ORTIZ',NULL,'V','V-104605156',NULL,'M','4248201944','4248201944','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANA','SUCRE'),
(1148,1000,'LUIS',NULL,'SISO',NULL,'V','V-12014502',NULL,'M','4148441403','4148441403','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','EL TIGRE','ANZOATEGUI'),
(1149,1001,'FELIX',NULL,'PINTO',NULL,'V','V-12678754',NULL,'M','4248048279','4248048279','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','EL TIGRE','ANZOATEGUI'),
(1150,1002,'RAFAEL','ANGEL','RUIZ','','V','V-12812752',NULL,'M','4262802188','4262802188','','','V-12812752-cedula.jpg','2016-09-28 05:45:29','2016-10-25 09:36:01','EL TIGRE','ANZOATEGUI'),
(1151,1003,'LUIS ',NULL,'SEQUEDA ',NULL,'V','V-13962550',NULL,'M','4244454039','4244454039','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','PUERTO LA CRUZ','ANZOATEGUI'),
(1152,1004,'JUSTO',NULL,'RODRIGUEZ',NULL,'V','V-18227764',NULL,'M','4147699805','4147699805','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','EL TIGRE','ANZOATEGUI'),
(1153,1005,'CARLOS ',NULL,'MARTINEZ ',NULL,'V','V-22858585',NULL,'M','4148180560','4148180560','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','EL TIGRITO','ANZOATEGUI'),
(1154,1006,'ANTONIO',NULL,'SALAZAR',NULL,'V','V-49169961',NULL,'M','4148379990','4148379990','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','PUERTO LA CRUZ','ANZOATEGUI'),
(1155,1007,'TRANSPORTE LEO CA',NULL,'TRANSPORTE LEO CA',NULL,'V','V-6549992',NULL,'M','4148405248','4148405248','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANA','SUCRE'),
(1156,1008,'JULIO',NULL,'RODRIGUEZ',NULL,'V','V-8250257',NULL,'M','4148078245','4148078245','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','PUERTO LA CRUZ ','ANZOATEGUI'),
(1157,1009,'GRUAS EL CABITO',NULL,'GRUAS EL CABITO',NULL,'V','V-8443422',NULL,'M','4148409634','4148409634','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','CUMANACOA','SUCRE'),
(1158,1010,'JOSE ',NULL,'FERNANDEZ ',NULL,'V','V-9782622',NULL,'M','4246313884','4246313884','','','','2016-09-28 05:45:29','2016-09-28 05:45:29','MARACAIBO','ZULIA'),
(1173,1025,'NETTALI','','MONTE','','V','18630833',NULL,'M','04165636656',NULL,'','','V-18630833-cedula.jpg','2016-09-28 15:06:32','2016-09-28 15:06:32','CORO','FALCON'),
(1174,1026,'RENNY','JOSE','COLINAS','CHIRINO','V','13956541',NULL,'M','04246916091',NULL,'','','V-13956541-cedula.jpg','2016-09-28 15:11:38','2016-09-28 15:11:38','CORO','FALCON'),
(1175,1027,'WILMER','','ACUÑE','','V','13998948',NULL,'M','04147625513','','','','V-13998948-cedula.jpg','2016-09-29 08:11:09','2016-10-15 10:32:59','MATURIN','MONAGAS'),
(1176,1028,'JEAN','','AVILA','','V','169234686',NULL,'M','4129961201',NULL,'','','V-16923468-cedula.jpg','2016-10-03 14:41:11','2016-10-03 14:41:35','SAN ANTONIO DE LOS ALTOS','MIRANDA'),
(1177,1029,'JOSE',NULL,'ORTIZ FERRANO',NULL,'V','J-293666651',NULL,'M','4143818007','4143818007','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','EL TIGRE','ANZOATEGUI'),
(1178,1030,'JOSE',NULL,'RAMIREZ',NULL,'V','J-29711596',NULL,'M','4249120002','4249120002','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MATURIN','MONAGAS'),
(1179,1031,'JUAN',NULL,'PAZ',NULL,'V','J-311344926',NULL,'M','4143462047','4143462047','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CALABOZO','GUARICO'),
(1180,1032,'JOSE',NULL,'MORALES',NULL,'V','J-315661284',NULL,'M','4143158366','4143158366','','','J-315661284-cedula.jpg','2016-10-05 08:31:34','2016-10-09 15:36:19','GUARENAS','MIRANDA'),
(1181,1033,'ANTONIO',NULL,'SALAZAR',NULL,'V','J-400549361',NULL,'M','4148379990','4148379990','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','ANACO','ANZOATEGUI'),
(1182,1034,'GLETO',NULL,'GALINDEZ',NULL,'V','J-402614543',NULL,'M','4148062396','4148062396','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','PUERTO LA CRUZ','ANZOATEGUI'),
(1183,1035,'JESUS',NULL,'PRINCE',NULL,'V','J-403529809',NULL,'M','4241109464','4241109464','','','J-403529809-cedula.jpg','2016-10-05 08:31:34','2016-10-05 21:02:11','GUATIRE','MIRANDA'),
(1184,1036,'OREIMA',NULL,'BRACHO',NULL,'V','J-403646708',NULL,'M','4166742282','4166742282','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MERIDA','MERIDA'),
(1185,1037,'JUAN',NULL,'BAPTISTA',NULL,'V','J-405097540',NULL,'M','4248297734','4248297734','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','PUERTO LA CRUZ','ANZOATEGUI'),
(1186,1038,'LUIS',NULL,'RAMIREZ',NULL,'V','J-40514044-5',NULL,'M','4147770979','4147770979','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CUMANA','SUCRE'),
(1187,1039,'LUIS',NULL,'SALAZAR BONTE',NULL,'V','J-406760072',NULL,'M','4268769800','4268769800','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MERIDA','MERIDA'),
(1188,1040,'LUIS',NULL,'ROJAS',NULL,'V','J-80295886',NULL,'M','4165770058','4165770058','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MERIDA','MERIDA'),
(1189,1041,'ANGEL',NULL,'TAVERA',NULL,'V','V-023972790',NULL,'M','4144619908','4144619908','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CHAGUARAMA','GUARICO'),
(1190,1042,'JULIO',NULL,'HERNANDEZ',NULL,'V','V-080831800',NULL,'M','4127867101','4127867101','','','V-080831800-cedula.jpg','2016-10-05 08:31:34','2016-12-19 15:41:01','TOVAR','MERIDA'),
(1191,1043,'JOSEPH',NULL,'SAAVERDRA',NULL,'V','V-11463415',NULL,'M','4147452792','4147452792','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MERIDA','MERIDA'),
(1192,1044,'CESAR',NULL,'SARAVIA',NULL,'V','V-11565242',NULL,'M','4162112127','4162112127','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','GUARENAS','MIRANDA'),
(1193,1045,'CORNELIO',NULL,'GARCIA',NULL,'V','11567867',NULL,'M','4141635784','4141635784','','','V-11567867-cedula.jpg','2016-10-05 08:31:34','2016-12-19 12:05:04','CARACAS','MIRANDA'),
(1194,1046,'FERNANDO',NULL,'MARQUEZ',NULL,'V','V-116835815',NULL,'M','4128195565','4128195565','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','PARACOTOS','MIRANDA'),
(1195,1047,'FRANCISCO',NULL,'ZERPA',NULL,'V','V-11780034',NULL,'M','4147658211','4147658211','','','V-11780034-cedula.jpg','2016-10-05 08:31:34','2016-11-02 08:33:25','MATURIN','MONAGAS'),
(1196,1048,'JOSE MIGUEL',NULL,'PEREZ MIRANDA',NULL,'V','V-12152566',NULL,'M','4249375671','4249375671','','','V-12152566-cedula.jpg','2016-10-05 08:31:34','2016-11-26 10:49:18','MATURIN','MONAGAS'),
(1197,1049,'JOSE',NULL,'RONDON',NULL,'V','V-12659237',NULL,'M','4147697846','4147697846','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CUMANA','SUCRE'),
(1198,1050,'LUIS',NULL,'RUIZ',NULL,'V','V-128127514',NULL,'M','4124498386','4124498386','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','GUARICO','GUARICO'),
(1199,1051,'JOSE',NULL,'TERAN',NULL,'V','V-12851926',NULL,'M','4120563753','4120563753','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BARQUISIMETO','LARA'),
(1200,1052,'ARMANDO',NULL,'RODRIGUEZ',NULL,'V','V-13257859',NULL,'M','4149991766','4149991766','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','EL TIGRE','ANZOATEGUI'),
(1201,1053,'JARRY',NULL,'MORENO',NULL,'V','V-136866750',NULL,'M','4127106593','4127106593','','','V-136866750-cedula.jpg','2016-10-05 08:31:34','2016-10-05 20:55:13','GUARENAS','MIRANDA'),
(1202,1054,'DANIEL',NULL,'AVARIANO',NULL,'V','V-136928615',NULL,'M','4166368280','4166368280','','','V-136928615-cedula.jpg','2016-10-05 08:31:34','2016-10-10 14:26:42','GUARENAS','MIRANDA'),
(1203,1055,'ARGIMIRO',NULL,'RUJANO',NULL,'V','V-13965935',NULL,'M','4142518824','4142518824','','','V-13965935-cedula.jpg','2016-10-05 08:31:34','2016-10-27 08:31:21','CARACAS',''),
(1204,1056,'STARLING',NULL,'ROMERO',NULL,'V','V-143010399',NULL,'M','4167085325','4167085325','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CARACAS','MIRANDA'),
(1205,1057,'JOSE',NULL,'CHACON',NULL,'V','V-15616709',NULL,'M','4142054468','4142054468','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CARACAS','MIRANDA'),
(1206,1058,'JONATHAN',NULL,'MOLINA',NULL,'V','V-15778874',NULL,'M','4145273837','4145273837','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BARQUISIMETO','LARA'),
(1207,1059,'LUIS',NULL,'BASABE',NULL,'V','V-159426021',NULL,'M','4143799632','4143799632','','','V-159426021-cedula.jpg','2016-10-05 08:31:34','2016-10-24 16:00:16','MARACAIBO','ZULIA'),
(1208,1060,'RICARDO',NULL,'GONZALES',NULL,'V','V-16329995',NULL,'M','4264358258','4264358258','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BOCONO','TRUJILLO'),
(1209,1061,'RAFAEL',NULL,'MOLINA',NULL,'V','V-16662062',NULL,'M','4242592212','4242592212','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CARACAS','MIRANDA'),
(1210,1062,'VICTOR',NULL,'AGUILAR',NULL,'V','17227355',NULL,'M','4245306172','4245306172','','','','2016-10-05 08:31:34','2017-01-05 20:24:55','BARQUISIMETO','LARA'),
(1211,1063,'GERARDO',NULL,'ROSALES',NULL,'V','V-172679168',NULL,'M','4145203131','4145203131','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BARQUISIMETO','LARA'),
(1212,1064,'ROZE',NULL,'NOLBERT VIVAS',NULL,'V','V-173036260',NULL,'M','4165350866','4165350866','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CHARALLAVE','MIRANDA'),
(1213,1065,'ANGEL',NULL,'PERLAEZ',NULL,'V','V-17782991',NULL,'M','4145665841','4145665841','','','V-17782991-cedula.jpg','2016-10-05 08:31:34','2016-11-04 14:06:55','BARQUISIMETO','LARA'),
(1214,1066,'ABRAHAM',NULL,'CALDERA',NULL,'V','V-18067972',NULL,'M','4248866523','4248866523','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CLARINES','ANZOATEGUI'),
(1215,1067,'JUAN',NULL,'RODRIGUEZ',NULL,'V','V-182321385',NULL,'M','4123392425','4123392425','','','V-182321385-cedula.jpg','2016-10-05 08:31:34','2016-11-04 09:11:00','PARACOTOS','MIRANDA'),
(1216,1068,'JESUS',NULL,'VILLAFAÑA',NULL,'V','V-19456237',NULL,'M','4248900506','4248900506','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CUMANA','SUCRE'),
(1217,1069,'JOHN',NULL,'QUINTERO',NULL,'V','V-20147060',NULL,'M','4146457245','4146457245','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','MARACAIBO','ZULIA'),
(1218,1070,'YERALD',NULL,'ZAMBRANO',NULL,'V','V-20634144',NULL,'M','4123511421','4123511421','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','PUERTO LA CRUZ','ANZOATEGUI'),
(1219,1071,'ALBI',NULL,'YEPEZ',NULL,'V','V-20922735',NULL,'M','4245320119','4245320119','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BARQUISIMETO','LARA'),
(1220,1072,'YOIBER',NULL,'ESCALONA',NULL,'V','V-22196967',NULL,'M','4245667456','4245667456','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','BARQUISIMETO','LARA'),
(1221,1073,'CARLOS','ALBERTO','CISNEROS','RIVERO','V','V-6272072',NULL,'M','4142821658','4142821658','','','V-6272072-cedula.jpg','2016-10-05 08:31:34','2016-10-05 15:59:06','CARACAS','DISTRITO CAPITAL'),
(1222,1074,'LEONARDO','JOSE','CASANO','COLLS','V','V-6900725',NULL,'M','4165389534','4165389534','','','V-6900725-cedula.jpg','2016-10-05 08:31:34','2016-10-22 14:41:52','CARACAS','DISTRITO CAPITAL'),
(1223,1075,'ARGENIS',NULL,'SUAREZ',NULL,'V','V-8742049',NULL,'M','4147739287','4147739287','','','','2016-10-05 08:31:34','2016-10-05 08:31:34','CUMANA','SUCRE'),
(1240,1092,'Juan','Carlos','Pietri','','V','19993978',NULL,'M','02124188307',NULL,'','','V-19993978-cedula.JPG','2016-10-05 11:26:16','2016-10-05 11:26:16','LOS TEQUES','MIRANDA'),
(1241,1093,'Juan','Daniel','Rodriguez','','V','19379028',NULL,'M','02124188307',NULL,'','','V-19379028-cedula.JPG','2016-10-05 16:25:56','2016-10-05 16:25:56','LOS TEQUES','MIRANDA'),
(1242,1094,'RAFAEL','ALEXANDER','GARCIA','DIAZ','V','14036822',NULL,'M','02124188307',NULL,'','','V-14036822-cedula.JPG','2016-10-06 15:20:57','2016-10-06 15:20:57','LOS TEQUES','MIRANDA'),
(1243,1095,'RAUL','','RAMOS','','V','14486621',NULL,'M','04241712330',NULL,'','','V-14486621-cedula.jpg','2016-10-10 14:58:48','2016-10-10 14:58:48','','DISTRITO CAPITAL'),
(1244,1096,'LUIGI','','MEZA','','V','17258390',NULL,'M','04144321576',NULL,'','','V-17258390-cedula.jpg','2016-10-11 12:22:46','2016-11-19 18:54:05','VALENCIA','CARABOBO'),
(1245,1097,'HAROLD','JAISON','FONSECA','MARIN','V','11941803',NULL,'M','02124188307',NULL,'','','V-11941803-cedula.pdf','2016-10-13 10:51:04','2016-10-13 10:51:04','LOS TEQUES','MIRANDA'),
(1246,1098,'JEFFERSON','JOSE','MORILLO','GARCIA','V','21282483',NULL,'M','02124188307',NULL,'','','V-21282483-cedula.pdf','2016-10-13 10:56:31','2016-10-13 10:56:31','LOS TEQUES','MIRANDA'),
(1247,1099,'FRANKLIN','ALEXANDER','MONTILLA','COLLANTES','V','17510180',NULL,'M','02124188307',NULL,'','','V-17510180-cedula.pdf','2016-10-13 11:09:25','2016-10-13 11:09:25','LOS TEQUES','MIRANDA'),
(1248,1100,'MICHAEL','WILFREDDY','FRANCO','BLANCO','V','12097276',NULL,'M','02124188307',NULL,'','','V-12097276-cedula.pdf','2016-10-13 11:14:54','2016-10-13 11:14:54','LOS TEQUES','MIRANDA'),
(1249,1101,'IGNACIO','','LARREA','PEREIRA','V','6108976',NULL,'M','02124188307',NULL,'','','V-6108976-cedula.pdf','2016-10-13 11:18:11','2016-10-13 11:18:11','LOS TEQUES','MIRANDA'),
(1250,1102,'HUMBERTO','RAMON','MARCUÑES','CABRERA','V','14765215',NULL,'M','02124188307',NULL,'','','V-14765215-cedula.pdf','2016-10-13 11:28:04','2016-10-13 11:28:04','LOS TEQUES','MIRANDA'),
(1251,1103,'LUIS','ALIRIO','BARRETO','QUINTERO','V','9417621',NULL,'M','02124188307',NULL,'','','V-9417621-cedula.pdf','2016-10-13 12:48:39','2016-10-13 12:48:39','LOS TEQUES','MIRANDA'),
(1252,1104,'JORGE','RAFAEL','PALACIOS','CAMPOS','V','6335255',NULL,'M','02124188307',NULL,'','','V-6335255-cedula.pdf','2016-10-13 12:51:41','2016-10-13 12:51:41','LOS TEQUES','MIRANDA'),
(1253,1105,'DANNY','GABRIEL','CONTRERAS','DE LA CRUZ','V','21133484',NULL,'M','02124188307',NULL,'','','V-21133484-cedula.pdf','2016-10-13 12:55:56','2016-10-13 12:55:56','LOS TEQUES','MIRANDA'),
(1254,1106,'JONATHAN','HIDALGO','RODRIGUEZ','RODRIGUES','V','11312430',NULL,'M','04166841110',NULL,'','','V-11312430-cedula.jpg','2016-10-18 18:40:02','2016-10-18 18:40:02','CARACAS','DISTRITO CAPITAL'),
(1255,1107,'LEONARDO','ANTONIO','RIBERO','MENDES','V','16028013',NULL,'M','04127281857',NULL,'','','V-16028013-cedula.jpg','2016-10-18 18:47:41','2016-10-18 18:47:41','CARACAS','DISTRITO CAPITAL'),
(1256,1108,'JOSE ',NULL,'VALERA',NULL,'V','J-400031397',NULL,'M','4140935614','4140935614','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1257,1109,'LUIS ',NULL,'FERRET',NULL,'V','J-405043377',NULL,'M','4142480017','4142480017','','','J-405043377-cedula.jpg','2016-10-20 08:14:01','2016-10-22 15:20:34','',''),
(1258,1110,'RICHARD ',NULL,'ROJAS',NULL,'V','V-10416230',NULL,'M','4146337350','4146337350','','','V-10416230-cedula.jpg','2016-10-20 08:14:01','2016-12-05 12:44:03','',''),
(1259,1111,'EDGAR',NULL,'GONZALEZ',NULL,'V','V-11564588',NULL,'M','4122837465','4122837465','','','','2016-10-20 08:14:01','2016-10-20 08:14:01','','DISTRITO CAPITAL'),
(1260,1112,'JOEL ',NULL,'SALAS',NULL,'V','V-11790127',NULL,'M','4141581716','4141581716','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1261,1113,'ELIEIZER ',NULL,'LOPEZ',NULL,'V','V-12169016',NULL,'M','4144433359','4144433359','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1262,1114,'JAVIER ',NULL,'CHACON',NULL,'V','V-147073611',NULL,'M','4247151037','4247151037','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1263,1115,'MARIO',NULL,'VARRERA',NULL,'V','V-16013593',NULL,'M','4243153518','4243153518','','','V-16013593-cedula.jpg','2016-10-20 08:14:01','2016-11-04 08:09:58','',''),
(1264,1116,'JHON ',NULL,' OSORIO',NULL,'V','V-16342853',NULL,'M','4144585092','4144585092','','','V-16342853-cedula.jpg','2016-10-20 08:14:01','2016-11-04 15:47:37','','DISTRITO CAPITAL'),
(1265,1117,'GIOVANNI ',NULL,'VILLAROEL',NULL,'V','V-17262370',NULL,'M','4248188010','4248188010','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1266,1118,'JOSE ',NULL,'TORRES',NULL,'V','V-17438408',NULL,'M','4124368673','4124368673','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1267,1119,'JAIME',NULL,'RUIZ',NULL,'V','V-19568176',NULL,'M','4127865517','4127865517','','','V-19568176-cedula.jpg','2016-10-20 08:14:01','2016-11-16 15:13:12','',''),
(1268,1120,'JESUS',NULL,'RAMIREZ',NULL,'V','V-41110984',NULL,'M','4147101972','4147101972','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1269,1121,'CARLOS ',NULL,'OTERO',NULL,'V','V-59355836',NULL,'M','4248060644','4248060644','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1270,1122,'JOSE ',NULL,'ROMERO',NULL,'V','V-70843257',NULL,'M','4147183123','4147183123','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1271,1123,'FRANK ',NULL,'GUILLEN',NULL,'V','V-9003297',NULL,'M','4147172333','4147172333','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1272,1124,'LUIS ',NULL,'GARCIA',NULL,'V','V-92073455',NULL,'M','4141766267','4141766267','','','','2016-10-20 08:14:01','2016-10-20 08:14:01',NULL,NULL),
(1273,1125,'GIOVANNI ',NULL,'MONTILLA ',NULL,'V','V-9668021',NULL,'M','4123334644','4123334644','','','V-9668021-cedula.jpg','2016-10-20 08:14:01','2016-10-22 11:07:15','',''),
(1287,1139,'JHON','ANDRESON','OSORIO','','V','16342853',NULL,'M','4144585092',NULL,'','','V-16342853-cedula.jpg','2016-10-22 15:25:45','2016-10-22 15:25:45','',''),
(1288,1140,'WUILIAN','anthonio',' CARRANZA','','V','8675805',NULL,'M','4143172222',NULL,'','','V-8675805-cedula.jpg','2016-10-24 19:30:51','2016-10-24 19:30:51','GUARENAS','MIRANDA'),
(1289,1141,'MIGUEL EMILIO',NULL,'CARTAVIRE',NULL,'V','V-15613829',NULL,'M','4149118931','4149118931','','','V-15613829-cedula.jpg','2016-10-24 21:38:28','2016-11-04 16:41:44','',''),
(1290,1142,'HELIDES',NULL,'MEDINA',NULL,'V','V-16981851',NULL,'M','4147134291','4147134291','','','','2016-10-24 21:38:28','2016-10-24 21:38:28',NULL,NULL),
(1291,1143,'HECTOR',NULL,'LOPEZ',NULL,'V','V-25714351',NULL,'M','4145669019','4145669019','','','','2016-10-24 21:38:28','2016-10-24 21:38:28',NULL,NULL),
(1292,1144,'EDGAR','','BARRETO','','V','68444213',NULL,'M','4242193577',NULL,'','','V-68444213-cedula.jpg','2016-10-25 11:08:19','2016-10-25 11:08:19','CARACAS','DISTRITO CAPITAL'),
(1293,1145,'GUSTAVO','MANUEL','GUANIPA','ESCALONA','V','16949028',NULL,'M','04121363707',NULL,'','','','2016-10-26 18:34:25','2016-10-26 18:34:25',NULL,NULL),
(1294,1146,'DAVID','','FLEBES','','V','16006582',NULL,'M','4141217321',NULL,'','','V-16006582-cedula.jpg','2016-10-28 13:10:48','2016-10-28 13:10:48','EL HATILLO','DISTRITO CAPITAL'),
(1295,1147,'WILSON',NULL,'MARTINEZ',NULL,'V','J-406691348',NULL,'M','4262860612','4262860612','','','','2016-11-01 08:08:07','2016-11-01 08:08:07',NULL,NULL),
(1296,1148,'ENDRY',NULL,'PINEDA',NULL,'V','V-14759432',NULL,'M','4143738420','4143738420','','','','2016-11-01 08:08:07','2016-11-01 08:08:07',NULL,NULL),
(1297,1149,'FRANKLIN',NULL,'ROMERO',NULL,'V','V-15711947',NULL,'M','4243198044','4243198044','','','V-15711947-cedula.jpg','2016-11-01 08:08:07','2016-12-05 09:38:04','','GUARICO'),
(1298,1150,'BLADIMIR',NULL,'MORENO',NULL,'V','V-23580224',NULL,'M','4263047606','4263047606','','','','2016-11-01 08:08:07','2016-11-01 08:08:07',NULL,NULL),
(1302,1154,'LUIS','','FERRER','','V','9955540',NULL,'M','04142480017',NULL,'','','V-9955540-cedula.jpg','2016-11-04 17:04:34','2016-11-04 17:04:34','','DISTRITO CAPITAL'),
(1303,1155,'RICARDO','','MEJIA','','V','65044870',NULL,'M','4125431242',NULL,'','','V-65044870-cedula.jpg','2016-11-07 16:00:49','2016-11-07 16:00:49','CARACAS','MIRANDA'),
(1304,1156,'Onella','Vaneska','Mentado','Barrios','V','19203559',NULL,'F','04242661355',NULL,'','','','2016-11-10 18:24:56','2016-11-10 18:24:56',NULL,NULL),
(1305,1157,'GRUPO DE TRANSPORTE SUVI',NULL,'',NULL,'V','J-408402823',NULL,'M','4140142336','4140142336','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1306,1158,'JESUS',NULL,'OJEADAS',NULL,'V','V-10731438',NULL,'M','4144230019','4144230019','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1307,1159,'EDELWEIS',NULL,'COLINA',NULL,'V','V-11521827',NULL,'M','4244269098','4244269098','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1308,1160,'PAUL',NULL,'SERRANO',NULL,'V','V-12632327',NULL,'M','4147183814','4147183814','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1309,1161,'FRANKLIN',NULL,'VELASQUEZ',NULL,'V','V-14035016',NULL,'M','4141876211','4141876211','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1310,1162,'JUAN CARLOS',NULL,'QUINTERO',NULL,'V','V-14244678',NULL,'M','4148691205','4148691205','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1311,1163,'DARWIN',NULL,'MEZA',NULL,'V','V-14573229',NULL,'M','4244986142','4244986142','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1312,1164,'GREGORY',NULL,'PEREZ',NULL,'V','V-15054114',NULL,'M','4128453499','4128453499','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1313,1165,'ALFREDI',NULL,'SANCHEZ',NULL,'V','V-18629771',NULL,'M','4244006029','4244007029','','','V-18629771-cedula.jpg','2016-11-11 08:23:10','2016-12-01 15:15:55','',''),
(1314,1166,'JUNIOR',NULL,'JIMENEZ',NULL,'V','V-18764584',NULL,'M','4144378651','4144378651','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1315,1167,'DIEGO',NULL,'GOMEZ',NULL,'V','V-19852034',NULL,'M','4241846140','4241846140','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1316,1168,'JOENRRY',NULL,'SILVA',NULL,'V','V-21584071',NULL,'M','4244088037','4244088037','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1317,1169,'SILVIO',NULL,'LIGA',NULL,'V','V-5266298',NULL,'M','04144361010-04126806','04144361010-04126806','','','','2016-11-11 08:23:10','2016-11-11 08:23:10',NULL,NULL),
(1320,1172,'MARIO','','BARRERA','','V','16013593',NULL,'M','4243153518',NULL,'','','V-16013593-cedula.jpg','2016-11-13 09:33:59','2016-11-13 09:33:59','',''),
(1321,1173,'RICARDO','','FREIRES','','V','25932349',NULL,'M','04165891800',NULL,'','','V-25932349-cedula.jpg','2016-11-21 13:29:43','2016-11-21 13:29:43','CIUDAD BOLIVAR','BOLIVAR'),
(1322,1174,'ERWIN',NULL,'COLINAS',NULL,'V','J-401929150',NULL,'M','4264227088','4264227088','','','','2016-11-25 14:38:57','2016-11-25 14:38:57',NULL,NULL),
(1323,1175,'FRANCISCO',NULL,'RODRIGUEZ',NULL,'V','V-13969841',NULL,'M','41420056205','41420056205','','','','2016-11-25 14:38:57','2016-11-25 14:38:57',NULL,NULL),
(1324,1176,'CARLOS',NULL,'QUIARO',NULL,'V','V-16544780',NULL,'M','4123763987','4123763987','','','','2016-11-25 14:38:57','2016-11-25 14:38:57',NULL,NULL),
(1325,1177,'LUIS',NULL,'SANCHEZ',NULL,'V','V-17875842',NULL,'M','4263296745','4263296745','','','','2016-11-25 14:38:57','2016-11-25 14:38:57',NULL,NULL),
(1326,1178,'JUAN',NULL,'HERNANDEZ',NULL,'V','v-7434681',NULL,'M','4265585303','4265585303','','','','2016-11-25 14:38:57','2016-11-25 14:38:57',NULL,NULL),
(1329,1181,'JEAN ','CARLOS','FIGUEROA','LUGO','V','13247638',NULL,'M','04149166757',NULL,'','','V-13247638-cedula.jpg','2017-01-02 11:13:41','2017-01-02 11:13:41','GUARENAS','MIRANDA'),
(1330,1182,'CARLOS','ENRIQUE','VALERA','MONTILLA','V','14591597',NULL,'M','02514185764',NULL,'','','','2017-01-19 10:21:13','2017-01-19 10:21:13',NULL,NULL),
(1331,1183,'LEWIS JOSE',NULL,'HERNANDEZ',NULL,'V','J-40498924-6',NULL,'M','4147910197','4147910197','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1332,1184,'RAFAEL',NULL,'MEDINA',NULL,'V','J-40561788-8',NULL,'M','4149776880','4149776880','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1333,1185,'MARCOS',NULL,'TRUJILLO',NULL,'V','V-10113755',NULL,'M','4241435531','4241435531','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1334,1186,'MARCOS',NULL,'JIMENEZ',NULL,'V','V-12112458',NULL,'M','04142139232-04163062','04142139232-04163062','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1335,1187,'ARQUIMIRO',NULL,'LOPEZ',NULL,'V','V-13145210-8',NULL,'M','4147104076','4147104076','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1336,1188,'GEAN CARLOS',NULL,'TORREALBA',NULL,'V','V-13383381',NULL,'M','4140383608','4140383608','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1337,1189,'ARGENIS','CLEMENTE','GONZALES','TOVAR','V','V-13727487',NULL,'M','4143202867','4143202867','','','V-13727487-cedula.jpg','2017-02-01 16:35:13','2017-02-03 14:27:22','','MIRANDA'),
(1338,1190,'ROBERTO',NULL,'MOYA',NULL,'V','V-15928308',NULL,'M','4266079571','4266079571','','','','2017-02-01 16:35:13','2017-02-01 16:35:13',NULL,NULL),
(1339,1191,'Adelino','','Fernandes','Da Silva','V','81524901',NULL,'M','04126811214',NULL,'','','','2017-03-28 02:01:11','2017-03-28 02:01:11',NULL,NULL),
(1340,1192,'ccct',NULL,'ccct',NULL,'v','1234567',NULL,'M','0414141',NULL,'1111','1111','1111','2017-08-20 11:01:19','2017-08-20 11:01:29',NULL,NULL),
(1341,1193,'Enely','','Verde',NULL,'V','98765431',NULL,'F','',NULL,'','','','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `users_hoist_company` */

DROP TABLE IF EXISTS `users_hoist_company`;

CREATE TABLE `users_hoist_company` (
  `id_user_hoist_company` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_hoist` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id_user_hoist_company`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=latin1;

/*Data for the table `users_hoist_company` */

insert  into `users_hoist_company`(`id_user_hoist_company`,`id_user`,`id_company`,`id_hoist`,`status`,`date_created`,`date_updated`) values 
(2,529,499,8,1,'2016-06-02 03:35:22','2016-06-02 04:00:19'),
(3,530,465,5,1,'2016-06-02 03:39:24','2016-06-02 03:39:24'),
(9,539,475,31,1,'0000-00-00 00:00:00','2016-06-02 18:25:59'),
(10,539,475,31,1,'2016-06-02 18:25:20','2016-06-02 18:25:59'),
(21,545,10,51,1,'0000-00-00 00:00:00','2016-06-02 22:59:07'),
(22,545,10,51,1,'2016-06-02 22:58:29','2016-06-02 22:59:07'),
(23,546,233,52,1,'0000-00-00 00:00:00','2016-06-02 23:49:45'),
(24,546,233,52,1,'2016-06-02 23:47:59','2016-06-02 23:49:45'),
(25,547,307,53,1,'0000-00-00 00:00:00','2016-09-06 08:05:22'),
(26,547,307,53,1,'2016-06-03 00:42:19','2016-09-06 08:05:22'),
(27,548,416,56,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(28,548,416,56,1,'2016-06-03 02:14:41','2016-06-03 02:14:41'),
(29,549,416,57,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(30,549,416,57,1,'2016-06-03 02:20:37','2016-06-03 02:20:37'),
(37,553,242,68,1,'0000-00-00 00:00:00','2016-06-03 06:40:45'),
(38,553,242,68,1,'2016-06-03 06:39:53','2016-06-03 06:40:45'),
(39,554,456,54,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(40,554,456,54,1,'2016-06-03 19:05:50','2016-06-03 19:05:50'),
(43,556,440,74,1,'0000-00-00 00:00:00','2016-06-03 22:10:29'),
(44,556,440,74,1,'2016-06-03 22:07:56','2016-06-03 22:10:29'),
(45,557,273,76,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(46,557,273,76,1,'2016-06-03 23:26:39','2016-06-03 23:26:39'),
(47,558,261,80,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(48,558,261,80,1,'2016-06-04 06:22:01','2016-06-04 06:22:01'),
(49,559,506,82,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(50,559,506,82,1,'2016-06-04 06:30:32','2016-06-04 06:30:32'),
(53,561,506,81,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(54,561,506,81,1,'2016-06-05 05:56:16','2016-06-05 05:56:16'),
(55,562,25,90,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(56,562,25,90,1,'2016-06-05 07:35:15','2016-06-05 07:35:15'),
(59,564,313,95,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(60,564,313,95,1,'2016-06-07 02:34:16','2016-06-07 02:34:16'),
(61,565,208,100,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(62,565,208,100,1,'2016-06-07 21:40:26','2016-06-07 21:40:26'),
(63,566,469,111,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(64,566,469,111,1,'2016-06-09 03:13:57','2016-06-09 03:13:57'),
(65,567,13,118,1,'0000-00-00 00:00:00','2016-07-26 12:20:26'),
(66,567,13,118,1,'2016-06-09 22:47:39','2016-07-26 12:20:26'),
(67,568,13,114,1,'0000-00-00 00:00:00','2016-07-26 12:10:56'),
(68,568,13,114,1,'2016-06-09 23:07:14','2016-07-26 12:10:56'),
(69,569,13,114,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(70,569,13,114,1,'2016-06-09 23:13:37','2016-06-09 23:13:37'),
(71,585,81,120,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(72,585,81,120,1,'2016-06-11 20:51:47','2016-06-11 20:51:47'),
(75,589,196,127,1,'0000-00-00 00:00:00','2016-06-15 19:55:12'),
(76,589,196,127,1,'2016-06-15 19:53:39','2016-06-15 19:55:12'),
(79,606,545,293,1,'0000-00-00 00:00:00','2016-08-02 09:16:14'),
(80,606,545,293,1,'2016-06-20 20:30:51','2016-08-02 09:16:14'),
(81,607,545,132,1,'0000-00-00 00:00:00','2016-08-02 09:10:23'),
(82,607,545,132,1,'2016-06-20 21:09:51','2016-08-02 09:10:23'),
(85,609,333,135,1,'0000-00-00 00:00:00','2016-08-21 07:10:14'),
(86,609,333,135,1,'2016-06-23 22:33:59','2016-08-21 07:10:14'),
(87,610,553,137,1,'0000-00-00 00:00:00','2016-06-26 04:01:50'),
(88,610,553,137,1,'2016-06-26 02:47:17','2016-06-26 04:01:50'),
(93,613,553,136,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(94,613,553,136,1,'2016-06-26 19:28:49','2016-06-26 19:28:49'),
(95,615,549,143,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(96,615,549,143,1,'2016-06-27 16:05:00','2016-06-27 16:05:00'),
(97,616,543,141,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(99,617,543,141,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(100,617,543,141,1,'2016-06-28 19:40:11','2016-06-28 19:40:11'),
(101,628,543,146,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(102,628,543,146,1,'2016-07-06 17:05:37','2016-07-06 17:05:37'),
(115,635,421,153,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(116,635,421,153,1,'2016-07-11 03:27:50','2016-07-11 03:27:50'),
(121,638,155,156,1,'0000-00-00 00:00:00','2016-07-12 00:09:24'),
(122,638,155,156,1,'2016-07-11 04:01:26','2016-07-12 00:09:24'),
(137,646,521,166,1,'0000-00-00 00:00:00','2016-07-12 01:02:08'),
(138,646,521,166,1,'2016-07-11 10:36:31','2016-07-12 01:02:08'),
(139,647,129,170,1,'0000-00-00 00:00:00','2016-07-11 22:36:30'),
(140,647,129,170,1,'2016-07-11 11:46:07','2016-07-11 22:36:30'),
(141,648,163,85,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(142,648,163,85,1,'2016-07-11 21:12:02','2016-07-11 21:12:02'),
(143,649,129,171,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(144,649,129,171,1,'2016-07-11 22:41:42','2016-07-11 22:41:42'),
(145,650,60,158,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(146,650,60,158,1,'2016-07-12 00:18:45','2016-07-12 00:18:45'),
(147,651,163,184,1,'0000-00-00 00:00:00','2016-07-12 00:51:10'),
(148,651,163,184,1,'2016-07-12 00:50:54','2016-07-12 00:51:10'),
(149,652,141,189,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(150,652,141,189,1,'2016-07-12 01:23:16','2016-07-12 01:23:16'),
(151,653,141,190,1,'0000-00-00 00:00:00','2016-07-12 01:28:32'),
(152,653,141,190,1,'2016-07-12 01:27:06','2016-07-12 01:28:32'),
(153,654,141,191,1,'0000-00-00 00:00:00','2016-07-12 01:31:54'),
(154,654,141,191,1,'2016-07-12 01:30:36','2016-07-12 01:31:54'),
(155,686,583,194,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(156,686,583,194,1,'2016-07-15 05:01:05','2016-07-15 05:01:05'),
(157,687,577,195,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(158,687,577,195,1,'2016-07-15 05:22:01','2016-07-15 05:22:01'),
(159,688,580,196,1,'0000-00-00 00:00:00','2016-07-15 08:18:41'),
(160,688,580,196,1,'2016-07-15 08:16:01','2016-07-15 08:18:41'),
(161,689,575,201,1,'0000-00-00 00:00:00','2016-09-26 04:13:42'),
(162,689,575,201,1,'2016-07-15 09:16:06','2016-09-26 04:13:42'),
(163,690,570,197,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(164,690,570,197,1,'2016-07-15 09:25:50','2016-07-15 09:25:50'),
(165,691,570,198,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(166,691,570,198,1,'2016-07-15 09:27:34','2016-07-15 09:27:34'),
(167,692,570,208,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(168,692,570,208,1,'2016-07-15 10:00:11','2016-07-15 10:00:11'),
(169,693,587,212,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(170,693,587,212,1,'2016-07-15 10:15:28','2016-07-15 10:15:28'),
(171,614,559,213,1,'2016-07-17 20:11:06','2016-07-17 20:11:06'),
(172,694,559,213,1,'2016-07-17 20:13:13','2016-07-17 20:13:56'),
(173,236,236,214,1,'2016-07-20 06:54:58','2016-07-20 06:54:58'),
(174,266,266,215,1,'2016-07-20 07:03:45','2016-07-20 07:03:45'),
(175,268,268,216,1,'2016-07-20 07:28:54','2016-07-20 07:28:54'),
(176,250,250,217,1,'2016-07-20 07:39:29','2016-07-20 07:39:29'),
(177,695,280,97,1,'2016-07-20 08:07:58','2016-07-20 08:07:58'),
(178,696,248,773,1,'2016-07-20 08:30:18','2016-10-19 18:39:55'),
(179,253,253,221,1,'2016-07-20 08:38:44','2016-07-20 08:38:44'),
(180,601,554,222,1,'2016-07-20 08:42:49','2016-07-20 08:42:49'),
(181,697,554,223,1,'2016-07-20 08:46:28','2016-07-20 08:46:28'),
(182,270,270,224,1,'2016-07-20 09:01:55','2016-07-20 09:01:55'),
(183,698,270,225,1,'2016-07-20 09:10:01','2016-07-20 09:10:01'),
(184,699,270,226,1,'2016-07-20 09:14:53','2016-07-20 09:14:53'),
(185,424,424,227,1,'2016-07-20 09:22:12','2016-07-20 09:22:46'),
(186,570,528,228,1,'2016-07-20 09:33:06','2016-07-20 09:33:06'),
(187,574,532,229,1,'2016-07-20 09:40:30','2016-07-20 09:40:30'),
(188,269,269,230,1,'2016-07-20 10:06:30','2016-07-20 10:06:30'),
(189,700,269,232,1,'2016-07-20 10:22:35','2016-07-20 10:22:35'),
(190,257,257,148,1,'2016-07-20 10:44:14','2016-07-20 10:44:14'),
(191,701,257,233,1,'2016-07-20 10:49:54','2016-07-20 10:49:54'),
(192,536,526,71,1,'2016-07-20 11:00:49','2016-07-20 11:00:49'),
(193,34,34,60,1,'2016-07-20 11:06:37','2016-07-20 11:06:37'),
(194,276,276,234,1,'2016-07-20 11:23:36','2016-07-20 11:23:36'),
(195,702,276,236,1,'2016-07-20 11:41:02','2016-07-20 11:41:02'),
(196,703,276,237,1,'2016-07-20 11:48:06','2016-07-20 11:48:06'),
(197,243,243,59,1,'2016-07-20 12:07:57','2016-07-20 12:07:57'),
(198,278,278,242,1,'2016-07-20 12:17:54','2016-07-20 12:17:54'),
(199,704,278,243,1,'2016-07-20 12:20:35','2016-07-20 12:20:35'),
(200,261,261,80,1,'2016-07-21 07:58:29','2016-07-21 07:58:29'),
(201,252,252,244,1,'2016-07-21 08:02:47','2016-07-21 08:02:47'),
(202,240,240,219,1,'2016-07-21 08:10:11','2016-07-21 08:10:11'),
(203,706,280,245,1,'2016-07-21 08:18:43','2016-07-21 08:18:43'),
(204,707,280,246,1,'2016-07-21 08:22:51','2016-07-21 08:22:51'),
(205,670,583,247,1,'2016-07-22 17:22:32','2016-07-22 17:31:44'),
(206,1,1,134,1,'2016-07-24 08:24:19','2016-11-24 19:49:35'),
(207,504,504,248,1,'2016-07-24 08:34:12','2016-07-24 08:34:12'),
(208,708,504,249,1,'2016-07-24 08:39:03','2016-07-24 08:39:03'),
(209,594,547,142,1,'2016-07-25 17:42:24','2016-07-25 17:46:46'),
(210,517,517,250,1,'2016-07-26 07:22:45','2016-07-26 07:22:45'),
(211,294,294,251,1,'2016-07-26 07:32:07','2016-07-26 07:32:07'),
(212,709,294,252,1,'2016-07-26 07:44:48','2016-07-26 07:44:48'),
(213,598,551,253,1,'2016-07-26 07:51:49','2016-07-26 07:51:49'),
(214,312,312,254,1,'2016-07-26 08:01:55','2016-07-26 08:01:55'),
(215,710,312,255,1,'2016-07-26 08:04:53','2016-07-26 08:04:53'),
(216,711,312,256,1,'2016-07-26 08:10:25','2016-07-26 08:10:25'),
(217,573,531,257,1,'2016-07-26 08:20:26','2016-07-26 08:20:26'),
(218,286,286,49,1,'2016-07-26 08:25:36','2016-07-26 08:25:36'),
(219,19,19,258,1,'2016-07-26 08:29:42','2016-07-26 08:29:42'),
(220,285,285,259,1,'2016-07-26 08:39:52','2016-07-26 08:39:52'),
(221,712,285,260,1,'2016-07-26 08:42:13','2016-07-26 08:42:13'),
(222,310,310,261,1,'2016-07-26 08:54:29','2016-07-26 08:54:29'),
(223,297,297,262,1,'2016-07-26 09:15:40','2016-07-26 09:15:40'),
(224,291,291,99,1,'2016-07-26 09:20:38','2016-07-26 09:20:38'),
(225,315,315,263,1,'2016-07-26 09:28:18','2016-07-26 09:28:18'),
(226,37,37,46,1,'2016-07-26 09:36:25','2016-07-26 09:36:25'),
(227,713,37,264,1,'2016-07-26 09:39:03','2016-07-26 09:39:03'),
(228,313,313,95,1,'2016-07-26 09:54:47','2016-07-26 09:54:47'),
(229,301,301,265,1,'2016-07-26 10:18:06','2016-07-26 10:18:06'),
(230,714,301,266,1,'2016-07-26 10:20:38','2016-07-26 10:20:38'),
(231,288,288,267,1,'2016-07-26 10:26:36','2016-07-26 10:26:36'),
(232,715,284,268,1,'2016-07-26 10:51:09','2016-07-26 10:51:09'),
(233,716,284,269,1,'2016-07-26 10:53:31','2016-07-26 10:53:31'),
(234,717,284,270,1,'2016-07-26 11:00:12','2016-07-26 11:00:12'),
(235,718,284,271,1,'2016-07-26 11:02:00','2016-07-26 11:02:00'),
(236,719,284,272,0,'2016-07-26 11:06:21','2016-11-25 12:12:41'),
(237,293,293,273,1,'2016-07-26 11:15:07','2016-07-26 11:15:07'),
(238,303,303,48,1,'2016-07-26 11:21:00','2016-07-26 11:21:00'),
(239,314,314,78,1,'2016-07-26 11:26:27','2016-10-11 16:51:43'),
(240,316,316,274,1,'2016-07-26 11:33:11','2016-07-26 11:33:11'),
(241,295,295,275,1,'2016-07-26 11:57:25','2016-07-26 11:57:25'),
(242,13,13,117,1,'2016-07-26 12:05:40','2016-07-26 12:05:40'),
(243,720,13,116,1,'2016-07-26 12:08:12','2016-07-26 12:08:12'),
(244,721,13,276,1,'2016-07-26 12:15:12','2016-07-26 12:15:12'),
(245,722,13,119,1,'2016-07-26 12:17:55','2016-07-26 12:17:55'),
(247,724,259,334,1,'2016-07-26 20:32:32','2016-08-14 23:40:28'),
(249,726,517,250,1,'2016-07-30 10:06:19','2016-07-30 10:06:19'),
(250,29,29,14,1,'2016-08-02 05:22:53','2016-08-02 05:23:35'),
(251,394,394,279,1,'2016-08-02 07:15:07','2016-08-02 07:15:07'),
(252,734,394,280,1,'2016-08-02 07:18:22','2016-08-02 07:18:22'),
(253,412,412,281,1,'2016-08-02 07:22:49','2016-08-02 07:33:04'),
(254,735,412,282,1,'2016-08-02 07:24:46','2016-08-02 07:33:20'),
(255,461,461,94,1,'2016-08-02 07:38:24','2016-08-02 07:38:24'),
(256,404,404,283,1,'2016-08-02 07:47:06','2016-08-02 07:47:06'),
(257,410,410,284,1,'2016-08-02 07:58:42','2016-08-02 07:58:42'),
(258,414,414,285,1,'2016-08-02 08:06:39','2016-08-02 08:06:39'),
(259,407,407,286,1,'2016-08-02 08:12:13','2016-08-02 08:12:13'),
(260,396,396,287,1,'2016-08-02 08:16:12','2016-08-02 08:16:12'),
(261,400,400,288,1,'2016-08-02 08:27:25','2016-08-02 08:27:25'),
(262,64,64,289,1,'2016-08-02 08:44:44','2016-08-02 08:44:44'),
(263,736,64,291,1,'2016-08-02 08:58:31','2016-08-02 08:58:31'),
(264,592,545,131,1,'2016-08-02 09:08:23','2016-08-02 09:08:23'),
(265,737,545,292,1,'2016-08-02 09:13:06','2016-08-02 09:13:06'),
(266,705,600,294,1,'2016-08-02 09:27:03','2016-08-02 09:27:03'),
(267,738,395,295,1,'2016-08-02 09:34:09','2016-08-02 09:34:09'),
(268,739,395,296,1,'2016-08-02 09:36:12','2016-08-02 09:36:12'),
(269,740,395,298,1,'2016-08-02 09:41:38','2016-08-02 09:41:38'),
(270,741,395,300,1,'2016-08-02 09:46:24','2016-08-02 09:46:24'),
(271,742,395,302,1,'2016-08-02 09:51:51','2016-08-02 09:51:51'),
(272,743,395,303,1,'2016-08-02 09:55:48','2016-08-02 09:55:48'),
(273,744,395,304,1,'2016-08-02 09:57:52','2016-08-02 09:57:52'),
(274,745,395,305,1,'2016-08-02 10:00:08','2016-08-02 10:00:22'),
(275,413,413,306,1,'2016-08-02 10:28:16','2016-08-02 10:28:16'),
(276,746,413,308,1,'2016-08-02 10:33:23','2016-08-02 10:33:23'),
(277,747,413,310,1,'2016-08-02 10:40:03','2016-08-02 10:40:03'),
(278,748,413,312,1,'2016-08-02 10:42:47','2016-08-31 21:57:23'),
(281,249,249,124,1,'2016-08-06 23:47:57','2016-08-06 23:48:38'),
(282,750,276,235,1,'2016-08-07 01:19:04','2016-08-07 01:19:04'),
(283,751,41,314,1,'2016-08-07 02:31:03','2016-08-07 02:31:03'),
(285,309,309,121,1,'2016-08-08 03:32:33','2016-08-08 03:32:33'),
(286,35,35,317,1,'2016-08-10 02:10:57','2016-08-10 02:10:57'),
(287,36,36,318,1,'2016-08-10 02:28:25','2016-08-10 02:28:25'),
(288,753,36,319,1,'2016-08-10 02:33:19','2016-08-10 02:33:19'),
(289,593,546,326,1,'2016-08-11 17:28:53','2016-08-11 17:29:33'),
(290,238,238,327,1,'2016-08-14 00:43:31','2016-08-14 00:43:31'),
(291,181,181,329,1,'2016-08-14 01:01:36','2016-08-14 01:02:29'),
(292,754,238,328,1,'2016-08-14 01:04:54','2016-08-14 01:05:02'),
(293,755,238,330,1,'2016-08-14 01:27:15','2016-08-14 01:27:15'),
(294,239,239,331,1,'2016-08-14 01:45:28','2016-08-14 01:45:28'),
(295,242,242,68,1,'2016-08-14 02:08:12','2016-08-14 02:08:12'),
(296,254,254,332,1,'2016-08-14 03:51:30','2016-08-14 03:51:30'),
(297,259,259,277,1,'2016-08-14 23:22:09','2016-08-14 23:22:09'),
(298,264,264,29,1,'2016-08-15 00:30:37','2016-08-15 00:30:37'),
(299,267,267,335,1,'2016-08-15 00:43:20','2016-08-15 00:43:20'),
(300,756,267,336,1,'2016-08-15 00:47:25','2016-08-15 00:47:25'),
(301,271,271,21,1,'2016-08-15 00:59:13','2016-08-15 00:59:44'),
(302,279,279,337,1,'2016-08-15 02:51:34','2016-08-15 02:52:42'),
(303,281,281,338,1,'2016-08-15 02:59:21','2016-08-15 02:59:21'),
(304,757,263,341,1,'2016-08-15 08:59:37','2016-08-15 08:59:37'),
(305,758,263,340,1,'2016-08-15 09:13:29','2016-08-15 09:13:29'),
(306,729,603,357,1,'2016-08-15 22:59:30','2016-08-16 19:10:56'),
(307,265,265,355,1,'2016-08-15 23:04:35','2016-08-15 23:05:41'),
(308,33,33,356,1,'2016-08-16 15:54:11','2016-08-16 15:54:11'),
(309,59,59,339,1,'2016-08-16 16:00:11','2016-08-16 16:00:11'),
(310,123,123,344,1,'2016-08-16 16:06:06','2016-08-16 16:06:06'),
(312,134,134,346,1,'2016-08-16 16:36:34','2016-08-16 16:36:34'),
(313,135,135,347,1,'2016-08-16 17:13:14','2016-08-16 17:13:14'),
(314,137,137,348,1,'2016-08-16 17:17:13','2016-08-16 17:17:13'),
(315,144,144,349,1,'2016-08-16 18:04:23','2016-08-16 18:04:23'),
(316,153,153,37,1,'2016-08-16 18:14:36','2016-08-16 18:15:53'),
(317,158,158,351,1,'2016-08-16 18:20:25','2016-08-16 18:20:25'),
(318,167,167,697,1,'2016-08-16 18:23:21','2016-09-27 20:00:53'),
(319,169,169,352,1,'2016-08-16 18:28:07','2016-08-16 18:28:07'),
(320,172,172,353,1,'2016-08-16 18:29:32','2016-08-16 18:29:32'),
(321,174,174,73,1,'2016-08-16 18:33:27','2016-08-16 18:33:27'),
(322,759,603,354,1,'2016-08-16 18:59:18','2016-08-16 18:59:18'),
(323,299,299,359,1,'2016-08-17 09:29:22','2016-08-17 09:29:22'),
(324,287,287,358,1,'2016-08-17 09:32:30','2016-09-06 07:43:35'),
(325,300,300,360,1,'2016-08-17 09:35:32','2016-08-17 09:35:32'),
(326,302,302,361,1,'2016-08-17 09:38:45','2016-08-17 09:38:45'),
(327,305,305,362,1,'2016-08-17 09:43:55','2016-08-17 09:43:55'),
(328,308,308,363,1,'2016-08-17 09:48:58','2016-09-06 08:08:45'),
(329,516,516,36,1,'2016-08-17 09:51:44','2016-08-17 09:51:44'),
(330,358,358,92,1,'2016-08-17 16:45:02','2016-08-17 16:45:02'),
(331,176,176,366,1,'2016-08-17 19:22:09','2016-08-17 19:22:09'),
(332,760,176,367,1,'2016-08-17 19:28:22','2016-08-17 19:28:22'),
(333,500,500,368,1,'2016-08-17 19:33:53','2016-08-17 19:33:53'),
(334,499,499,6,1,'2016-08-17 19:52:26','2016-08-17 19:52:26'),
(335,260,260,370,1,'2016-08-18 17:24:58','2016-09-07 09:34:26'),
(336,237,237,371,1,'2016-08-18 17:28:51','2016-08-18 17:28:51'),
(337,170,170,372,1,'2016-08-18 19:54:06','2016-08-18 19:54:06'),
(338,165,165,373,1,'2016-08-18 21:39:48','2016-08-18 21:39:48'),
(339,164,164,374,1,'2016-08-18 21:43:01','2016-08-18 21:43:01'),
(340,159,159,375,1,'2016-08-18 21:58:22','2016-08-18 21:58:22'),
(341,151,151,350,1,'2016-08-18 22:04:44','2016-08-18 22:04:44'),
(342,157,157,44,1,'2016-08-18 22:18:14','2016-08-18 22:19:56'),
(343,761,157,377,1,'2016-08-18 22:21:40','2016-08-18 22:21:54'),
(344,5,5,378,1,'2016-08-19 02:00:43','2016-09-23 17:11:13'),
(345,9,9,315,1,'2016-08-19 04:49:36','2016-08-19 04:49:36'),
(346,132,132,278,1,'2016-08-19 04:57:13','2016-08-19 04:57:13'),
(347,389,389,379,1,'2016-08-19 17:44:58','2016-08-19 17:51:40'),
(348,258,258,125,1,'2016-08-21 02:12:10','2016-08-21 02:12:10'),
(349,20,20,381,1,'2016-08-21 02:37:13','2016-08-21 02:37:13'),
(350,43,43,382,1,'2016-08-21 02:46:03','2016-09-02 04:32:11'),
(352,241,241,384,1,'2016-08-21 03:57:29','2016-08-21 03:57:29'),
(353,333,333,135,1,'2016-08-21 07:10:46','2016-08-21 07:10:47'),
(354,448,448,385,1,'2016-08-21 12:31:37','2016-08-31 02:29:54'),
(355,444,444,386,1,'2016-08-21 12:35:27','2016-08-21 12:35:27'),
(356,428,428,387,1,'2016-08-21 12:49:41','2016-08-21 12:49:41'),
(357,762,445,389,1,'2016-08-21 13:01:44','2016-08-21 13:01:44'),
(358,445,445,388,1,'2016-08-21 13:02:12','2016-08-21 13:02:12'),
(359,449,449,390,1,'2016-08-21 13:12:11','2016-08-21 13:12:11'),
(360,763,449,391,1,'2016-08-21 13:14:02','2016-08-21 13:14:02'),
(361,764,449,392,1,'2016-08-21 13:17:51','2016-08-21 13:17:51'),
(362,441,441,393,1,'2016-08-21 13:25:28','2016-09-07 08:13:49'),
(363,765,441,394,1,'2016-08-21 13:27:11','2016-08-21 13:27:11'),
(364,766,440,395,1,'2016-08-21 13:38:40','2016-08-21 13:38:40'),
(365,619,568,396,1,'2016-08-21 13:44:05','2016-08-21 13:44:05'),
(366,234,234,397,1,'2016-08-23 07:47:03','2016-08-23 07:47:03'),
(367,67,67,400,1,'2016-08-24 07:15:18','2016-08-24 07:15:18'),
(368,233,233,401,1,'2016-08-24 07:22:24','2016-08-24 07:22:35'),
(369,227,227,11,1,'2016-08-24 07:30:59','2016-08-24 07:30:59'),
(371,223,223,403,1,'2016-08-24 19:39:30','2016-08-24 19:39:30'),
(372,225,225,404,1,'2016-08-24 19:51:52','2016-08-24 19:51:52'),
(373,146,146,405,1,'2016-08-24 20:03:47','2016-08-24 20:03:47'),
(374,390,390,406,1,'2016-08-24 20:17:12','2016-08-24 20:17:12'),
(375,232,232,407,1,'2016-08-24 20:25:16','2016-08-24 20:25:16'),
(376,18,18,408,1,'2016-08-24 20:33:01','2016-08-24 20:33:01'),
(377,658,571,313,1,'2016-08-25 07:12:00','2016-08-25 07:12:00'),
(378,768,249,410,1,'2016-08-25 07:50:30','2016-08-25 07:50:30'),
(379,296,296,411,1,'2016-08-25 08:23:44','2016-08-25 08:23:44'),
(380,353,353,413,1,'2016-08-25 17:40:17','2016-08-25 17:40:17'),
(381,106,106,414,1,'2016-08-25 21:39:36','2016-08-25 21:39:36'),
(382,110,110,415,1,'2016-08-25 21:46:54','2016-08-25 21:46:54'),
(383,114,114,416,1,'2016-08-25 22:41:52','2016-08-25 22:41:52'),
(384,75,75,27,1,'2016-08-25 23:38:15','2016-08-25 23:38:15'),
(385,398,398,417,1,'2016-08-26 01:05:22','2016-08-26 01:05:22'),
(386,408,408,418,1,'2016-08-26 02:01:27','2016-08-26 02:01:27'),
(387,27,27,419,1,'2016-08-26 17:36:43','2016-08-26 17:45:45'),
(388,84,84,130,1,'2016-08-26 17:50:24','2016-08-26 17:50:24'),
(389,109,109,421,1,'2016-08-26 18:08:22','2016-08-26 18:08:22'),
(390,85,85,422,1,'2016-08-26 18:13:57','2016-08-26 18:13:57'),
(391,769,112,65,1,'2016-08-26 18:35:58','2016-08-26 18:35:58'),
(392,434,434,423,1,'2016-08-26 19:50:26','2016-08-26 19:51:04'),
(393,435,435,424,1,'2016-08-26 20:09:45','2016-08-26 20:09:45'),
(394,438,438,425,1,'2016-08-26 22:11:39','2016-08-26 22:11:39'),
(395,42,42,427,1,'2016-08-27 01:58:46','2016-08-27 01:58:46'),
(396,770,42,426,1,'2016-08-27 02:03:17','2016-08-27 02:03:17'),
(397,771,42,426,1,'2016-08-27 02:07:31','2016-08-27 02:07:31'),
(398,772,270,429,1,'2016-08-27 02:28:29','2016-08-27 02:28:29'),
(399,16,16,320,1,'2016-08-27 08:11:59','2016-08-27 08:11:59'),
(400,510,510,123,1,'2016-08-27 08:15:31','2016-08-27 08:15:31'),
(401,459,459,321,1,'2016-08-27 08:29:23','2016-08-27 08:29:23'),
(402,17,17,322,1,'2016-08-27 08:33:50','2016-08-27 08:33:50'),
(403,108,108,323,1,'2016-08-27 08:47:57','2016-08-27 08:47:57'),
(404,623,566,324,1,'2016-08-27 08:51:35','2016-08-27 08:51:35'),
(405,107,107,325,1,'2016-08-27 08:56:05','2016-08-27 08:56:05'),
(406,324,324,17,1,'2016-08-27 19:49:12','2016-08-27 19:49:12'),
(407,452,452,72,1,'2016-08-28 02:22:01','2016-08-28 02:22:01'),
(408,774,389,430,1,'2016-08-28 12:34:16','2016-09-16 19:23:17'),
(409,775,296,431,1,'2016-08-28 12:53:55','2016-08-28 12:53:55'),
(410,439,439,433,1,'2016-08-29 16:36:45','2016-08-29 16:37:54'),
(411,443,443,436,1,'2016-08-29 18:45:21','2016-08-29 18:45:21'),
(412,481,481,438,1,'2016-08-30 07:08:17','2016-08-30 07:08:17'),
(413,490,490,439,1,'2016-08-30 07:19:11','2016-08-30 07:20:05'),
(414,776,492,440,1,'2016-08-30 07:30:33','2016-08-30 07:30:33'),
(415,777,492,441,1,'2016-08-30 07:32:22','2016-08-30 07:32:22'),
(416,63,63,442,1,'2016-08-30 18:31:52','2016-08-30 18:31:52'),
(417,83,83,443,1,'2016-08-30 18:51:32','2016-08-30 18:51:32'),
(418,429,429,445,1,'2016-08-30 19:26:20','2016-08-30 19:26:20'),
(419,778,436,448,1,'2016-08-30 20:43:08','2016-09-07 07:49:03'),
(420,436,436,447,1,'2016-08-30 20:46:01','2016-08-30 20:46:01'),
(421,575,533,449,1,'2016-08-30 23:31:20','2016-08-30 23:31:20'),
(422,662,575,202,1,'2016-08-31 11:24:35','2016-09-26 04:09:09'),
(423,62,62,437,1,'2016-08-31 15:43:57','2016-08-31 15:43:57'),
(424,501,501,450,1,'2016-08-31 22:14:29','2016-09-05 18:13:44'),
(425,507,507,451,1,'2016-08-31 22:25:19','2016-08-31 22:25:20'),
(426,906,415,452,1,'2016-09-01 01:00:23','2016-09-01 01:00:23'),
(427,415,415,452,1,'2016-09-01 01:03:07','2016-09-01 01:03:07'),
(428,839,664,456,1,'2016-09-03 00:20:57','2016-09-03 00:22:09'),
(429,811,637,457,1,'2016-09-03 07:31:30','2016-09-03 07:31:30'),
(430,835,660,458,1,'2016-09-03 07:40:58','2016-09-03 07:40:58'),
(431,822,648,460,1,'2016-09-03 10:33:00','2016-09-03 10:33:00'),
(432,854,678,461,1,'2016-09-03 10:46:45','2016-09-03 10:46:45'),
(433,792,619,463,1,'2016-09-03 10:54:25','2016-09-03 10:54:25'),
(434,907,621,465,1,'2016-09-03 13:18:12','2016-09-03 13:18:12'),
(435,908,621,466,1,'2016-09-03 13:22:00','2016-09-03 13:22:00'),
(436,909,621,467,1,'2016-09-03 13:28:30','2016-09-03 13:28:30'),
(437,800,627,469,1,'2016-09-03 13:34:09','2016-09-03 13:34:09'),
(438,818,644,470,1,'2016-09-03 13:38:26','2016-09-03 13:38:26'),
(439,853,677,471,1,'2016-09-03 13:54:19','2016-09-03 13:54:19'),
(440,801,628,472,1,'2016-09-03 14:02:50','2016-09-03 14:02:50'),
(441,796,623,473,1,'2016-09-03 14:15:57','2016-09-03 14:15:57'),
(442,799,626,475,1,'2016-09-03 14:22:04','2016-10-06 13:38:52'),
(443,789,616,477,1,'2016-09-03 14:30:25','2016-09-03 14:31:21'),
(444,910,616,476,1,'2016-09-03 14:33:59','2016-09-03 14:33:59'),
(445,783,611,478,1,'2016-09-03 14:45:03','2016-09-03 14:45:03'),
(446,911,611,479,1,'2016-09-03 14:49:48','2016-09-03 14:49:48'),
(447,841,666,480,1,'2016-09-03 15:00:16','2016-09-03 15:00:16'),
(448,912,666,481,1,'2016-09-03 15:05:17','2016-09-03 15:05:17'),
(449,913,666,482,1,'2016-09-03 15:07:53','2016-09-03 16:26:49'),
(450,849,674,483,1,'2016-09-04 08:55:22','2016-09-04 08:55:22'),
(451,843,668,484,1,'2016-09-04 09:10:44','2016-09-04 09:10:44'),
(452,856,680,485,1,'2016-09-04 09:32:30','2016-09-04 09:32:30'),
(453,914,620,486,1,'2016-09-04 09:56:43','2016-09-04 09:56:43'),
(454,915,620,487,1,'2016-09-04 09:59:26','2016-09-04 09:59:26'),
(455,916,620,488,1,'2016-09-04 10:01:30','2016-09-04 10:01:30'),
(456,917,620,489,1,'2016-09-04 10:04:02','2016-09-04 10:04:02'),
(457,793,620,490,1,'2016-09-04 10:05:58','2016-09-04 10:05:59'),
(458,859,682,491,1,'2016-09-04 10:35:55','2016-09-04 10:35:55'),
(459,857,681,492,1,'2016-09-04 10:41:16','2016-09-04 10:41:16'),
(460,918,681,493,1,'2016-09-04 10:43:44','2016-09-04 10:43:44'),
(461,919,614,494,1,'2016-09-04 10:51:07','2016-09-04 10:51:07'),
(462,815,641,495,1,'2016-09-04 10:55:37','2016-09-04 10:55:37'),
(463,820,646,496,1,'2016-09-04 10:59:32','2016-09-04 10:59:32'),
(464,816,642,497,1,'2016-09-04 11:03:49','2016-09-04 11:03:49'),
(465,837,662,498,1,'2016-09-04 11:32:04','2016-09-04 11:32:04'),
(466,808,634,499,1,'2016-09-04 11:38:02','2016-09-04 11:38:02'),
(467,855,679,501,1,'2016-09-04 14:29:18','2016-09-04 14:29:18'),
(468,842,667,502,1,'2016-09-04 14:38:38','2016-09-04 14:38:38'),
(469,920,612,503,1,'2016-09-05 06:23:09','2016-09-05 06:23:09'),
(470,921,612,504,1,'2016-09-05 06:28:44','2016-09-05 06:28:44'),
(471,922,649,505,1,'2016-09-05 06:32:25','2016-09-06 06:45:05'),
(472,785,613,506,1,'2016-09-05 06:33:09','2016-09-05 06:33:09'),
(473,814,640,507,1,'2016-09-05 06:35:19','2016-09-06 06:48:02'),
(474,923,613,508,1,'2016-09-05 06:35:59','2016-09-05 06:35:59'),
(475,924,607,509,1,'2016-09-05 07:29:45','2016-09-05 07:29:45'),
(476,827,653,510,1,'2016-09-05 07:36:40','2016-09-05 07:36:40'),
(477,833,658,512,1,'2016-09-05 07:41:54','2016-09-05 07:41:54'),
(478,844,669,511,1,'2016-09-05 07:43:33','2016-09-05 07:43:33'),
(479,925,669,513,1,'2016-09-05 07:47:29','2016-09-05 07:47:29'),
(480,861,684,514,1,'2016-09-05 07:48:35','2016-09-05 07:48:35'),
(481,832,657,515,1,'2016-09-05 07:53:16','2016-09-05 07:53:16'),
(482,926,618,517,1,'2016-09-05 08:01:08','2016-09-05 08:01:08'),
(483,795,622,516,1,'2016-09-05 08:01:11','2016-09-05 08:01:11'),
(484,821,647,518,1,'2016-09-05 08:07:06','2016-09-05 08:07:06'),
(485,838,663,519,1,'2016-09-05 08:11:45','2016-09-05 08:11:45'),
(486,927,663,520,1,'2016-09-05 08:14:13','2016-09-05 08:14:13'),
(487,809,635,522,1,'2016-09-05 08:20:55','2016-09-05 08:20:55'),
(488,781,609,524,1,'2016-09-05 08:29:03','2016-09-05 08:29:03'),
(489,836,661,526,1,'2016-09-05 08:31:47','2016-09-05 08:31:47'),
(490,824,650,527,1,'2016-09-05 08:37:04','2016-09-05 08:37:04'),
(491,847,672,528,1,'2016-09-05 08:42:53','2016-09-05 08:42:53'),
(492,828,654,529,1,'2016-09-05 08:52:58','2016-09-05 08:52:58'),
(493,928,654,530,1,'2016-09-05 08:57:16','2016-09-05 08:57:16'),
(494,819,645,531,1,'2016-09-05 09:11:19','2016-09-05 09:11:20'),
(495,929,631,532,1,'2016-09-05 09:23:51','2016-09-05 09:23:51'),
(496,803,629,533,1,'2016-09-05 09:30:44','2016-09-05 09:30:44'),
(497,930,629,534,1,'2016-09-05 09:34:51','2016-09-05 09:34:51'),
(498,848,673,535,1,'2016-09-05 09:43:07','2016-09-05 09:43:07'),
(499,826,652,536,1,'2016-09-05 09:46:08','2016-09-05 09:46:08'),
(500,812,638,537,1,'2016-09-05 09:51:37','2016-09-05 09:51:37'),
(501,860,683,538,1,'2016-09-05 09:55:52','2016-09-05 09:55:52'),
(502,931,636,539,1,'2016-09-05 10:00:55','2016-09-05 10:00:55'),
(503,932,636,540,1,'2016-09-05 10:03:50','2016-09-05 10:03:50'),
(504,933,608,521,1,'2016-09-05 12:14:44','2016-09-05 12:14:44'),
(505,934,608,523,1,'2016-09-05 12:19:44','2016-09-05 12:19:44'),
(506,935,608,525,1,'2016-09-05 12:27:15','2016-09-05 12:27:15'),
(507,846,671,541,1,'2016-09-05 12:34:58','2016-09-05 12:34:58'),
(508,455,455,543,1,'2016-09-05 20:31:49','2016-09-05 20:32:30'),
(509,431,431,545,1,'2016-09-05 22:12:01','2016-09-05 22:12:01'),
(510,817,643,542,1,'2016-09-06 06:59:24','2016-09-06 06:59:24'),
(511,797,624,546,1,'2016-09-06 07:04:03','2016-09-06 07:04:03'),
(512,798,625,547,1,'2016-09-06 07:08:00','2016-09-06 07:08:00'),
(513,936,625,548,1,'2016-09-06 07:09:57','2016-09-06 07:09:57'),
(514,937,625,549,1,'2016-09-06 07:12:43','2016-09-06 07:12:43'),
(515,834,659,550,1,'2016-09-06 07:21:29','2016-09-06 07:21:29'),
(516,806,632,551,1,'2016-09-06 07:25:21','2016-11-02 14:41:45'),
(517,831,656,552,1,'2016-09-06 07:28:04','2016-09-06 07:28:04'),
(518,938,615,553,1,'2016-09-06 07:33:46','2016-09-06 07:33:46'),
(519,311,311,104,1,'2016-09-06 08:28:44','2016-09-06 08:28:44'),
(520,939,311,108,1,'2016-09-06 08:30:17','2016-09-06 08:30:17'),
(521,940,311,109,1,'2016-09-06 08:32:06','2016-09-06 08:32:06'),
(522,941,311,103,1,'2016-09-06 08:33:15','2016-09-06 08:33:15'),
(523,942,311,106,1,'2016-09-06 08:34:27','2016-09-06 08:34:27'),
(524,943,311,110,1,'2016-09-06 08:35:21','2016-09-06 08:35:21'),
(525,944,311,102,1,'2016-09-06 08:36:12','2016-09-06 08:36:12'),
(526,945,311,107,1,'2016-09-06 08:37:13','2016-09-06 08:37:13'),
(527,946,623,474,1,'2016-09-06 09:24:40','2016-09-06 09:24:40'),
(528,409,409,554,1,'2016-09-06 09:57:18','2016-09-06 09:57:18'),
(529,90,90,556,1,'2016-09-07 07:13:38','2016-09-07 07:13:38'),
(530,437,437,557,1,'2016-09-07 08:01:30','2016-09-07 08:01:30'),
(531,947,438,558,1,'2016-09-07 08:06:30','2016-09-07 08:06:30'),
(532,450,450,559,1,'2016-09-07 08:25:40','2016-09-07 08:25:40'),
(533,454,454,560,1,'2016-09-07 08:29:51','2016-09-07 08:29:51'),
(534,457,457,562,1,'2016-09-07 08:45:35','2016-09-07 08:45:35'),
(535,503,503,564,1,'2016-09-07 08:50:10','2016-09-07 08:50:10'),
(536,948,503,565,1,'2016-09-07 08:52:02','2016-09-07 08:52:02'),
(537,949,507,566,1,'2016-09-07 08:57:46','2016-09-07 08:57:46'),
(538,433,433,567,1,'2016-09-07 09:18:55','2016-09-07 09:18:55'),
(539,447,447,568,1,'2016-09-07 09:22:26','2016-09-07 09:22:26'),
(540,807,633,570,1,'2016-09-07 09:48:28','2016-09-07 09:48:28'),
(541,840,665,571,1,'2016-09-07 09:55:20','2016-09-07 09:55:20'),
(542,851,675,572,1,'2016-09-07 09:58:07','2016-09-07 09:58:07'),
(543,830,655,573,1,'2016-09-07 10:01:18','2016-09-07 10:01:18'),
(544,950,617,574,1,'2016-09-07 10:09:42','2016-09-07 10:09:42'),
(545,804,630,575,1,'2016-09-07 10:14:29','2016-09-07 10:14:29'),
(546,951,610,576,1,'2016-09-07 10:21:08','2016-09-07 10:21:08'),
(547,952,651,577,1,'2016-09-07 10:29:23','2016-09-07 10:29:23'),
(548,852,676,579,1,'2016-09-07 10:34:12','2016-09-07 10:34:12'),
(549,87,87,580,1,'2016-09-08 14:12:25','2016-09-11 17:42:05'),
(550,399,399,581,1,'2016-09-09 02:52:03','2016-09-09 02:52:03'),
(551,289,289,582,1,'2016-09-09 11:10:10','2016-09-09 11:10:10'),
(552,953,289,583,1,'2016-09-09 11:12:59','2016-09-09 11:12:59'),
(553,298,298,586,1,'2016-09-09 11:35:55','2016-09-09 11:35:55'),
(554,451,451,1,1,'2016-09-09 14:19:18','2016-09-09 14:19:18'),
(555,74,74,587,1,'2016-09-09 17:55:01','2016-09-09 17:55:01'),
(556,392,392,588,1,'2016-09-09 18:57:01','2016-09-09 18:57:01'),
(557,591,544,589,1,'2016-09-10 20:30:17','2016-09-10 20:30:26'),
(558,478,478,590,1,'2016-09-11 17:49:07','2016-09-11 17:49:07'),
(559,479,479,591,1,'2016-09-11 17:57:58','2016-09-11 17:57:58'),
(560,480,480,592,1,'2016-09-11 18:05:58','2016-09-11 18:05:58'),
(561,483,483,594,1,'2016-09-11 18:13:44','2016-09-11 18:13:44'),
(562,484,484,596,1,'2016-09-11 18:19:05','2016-09-11 18:19:05'),
(563,330,330,63,1,'2016-09-11 18:25:02','2016-09-11 18:25:02'),
(564,485,485,597,1,'2016-09-11 18:32:45','2016-09-11 18:32:45'),
(565,486,486,603,1,'2016-09-11 18:36:57','2016-09-11 18:36:57'),
(566,23,23,3,1,'2016-09-11 19:01:13','2016-09-11 19:01:14'),
(567,491,491,47,1,'2016-09-12 01:09:43','2016-09-12 01:10:02'),
(568,72,72,128,1,'2016-09-12 01:48:54','2016-09-12 01:48:54'),
(569,381,381,604,1,'2016-09-12 06:12:18','2016-09-12 06:12:18'),
(570,954,381,605,1,'2016-09-12 06:15:16','2016-09-12 06:15:16'),
(572,956,384,607,1,'2016-09-12 06:25:56','2016-09-12 06:25:56'),
(573,957,384,608,1,'2016-09-12 06:28:43','2016-09-12 06:28:43'),
(574,958,384,609,1,'2016-09-12 06:32:36','2016-09-12 06:32:36'),
(575,384,384,606,1,'2016-09-12 06:34:33','2016-09-12 06:34:33'),
(576,959,71,610,1,'2016-09-12 06:44:05','2016-10-31 16:51:00'),
(577,960,385,611,1,'2016-09-12 06:47:04','2016-09-12 06:47:04'),
(578,961,385,612,1,'2016-09-12 06:48:51','2016-09-12 06:48:51'),
(579,962,385,613,1,'2016-09-12 06:50:48','2016-09-12 06:51:10'),
(580,39,39,614,1,'2016-09-12 06:54:31','2016-09-12 06:54:31'),
(581,494,494,615,1,'2016-09-12 15:44:17','2016-09-12 16:03:29'),
(582,523,523,616,1,'2016-09-14 03:02:59','2016-10-03 17:37:32'),
(583,30,30,70,1,'2016-09-14 19:33:53','2016-09-14 19:40:31'),
(584,32,32,619,1,'2016-09-15 07:10:55','2016-09-15 07:10:56'),
(585,359,359,620,1,'2016-09-15 07:20:50','2016-09-15 07:21:37'),
(586,365,365,43,1,'2016-09-15 07:47:49','2016-09-15 07:47:49'),
(587,502,502,621,1,'2016-09-15 07:51:44','2016-09-15 07:51:44'),
(588,464,464,58,1,'2016-09-15 08:11:29','2016-09-15 08:11:29'),
(589,335,335,623,1,'2016-09-15 10:19:00','2016-09-15 10:19:00'),
(590,963,25,89,1,'2016-09-15 10:28:33','2016-09-15 10:28:33'),
(591,964,25,624,1,'2016-09-15 10:30:37','2016-09-15 10:30:37'),
(592,965,25,91,1,'2016-09-15 10:32:24','2016-09-15 10:32:24'),
(593,348,348,625,1,'2016-09-15 10:41:37','2016-09-15 10:41:37'),
(594,966,348,627,1,'2016-09-15 10:43:39','2016-09-15 10:43:58'),
(595,571,529,629,1,'2016-09-15 11:00:13','2016-10-03 17:19:48'),
(596,201,201,630,1,'2016-09-15 11:03:49','2016-09-15 11:03:49'),
(597,219,219,631,1,'2016-09-15 11:06:24','2016-09-15 11:06:24'),
(598,40,40,632,1,'2016-09-15 11:09:06','2016-09-15 11:09:06'),
(599,367,367,633,1,'2016-09-15 11:12:36','2016-09-15 11:12:36'),
(600,361,361,634,1,'2016-09-15 11:18:05','2016-09-15 11:18:05'),
(601,332,332,635,1,'2016-09-15 11:20:38','2016-09-15 11:20:38'),
(602,967,506,79,1,'2016-09-15 11:29:06','2016-09-15 11:29:06'),
(603,471,471,636,1,'2016-09-15 11:37:20','2016-09-15 11:37:20'),
(604,968,471,637,1,'2016-09-15 11:38:36','2016-09-15 11:38:36'),
(605,969,471,638,1,'2016-09-15 11:39:50','2016-09-15 11:39:50'),
(606,474,474,639,1,'2016-09-15 11:47:43','2016-09-15 11:47:43'),
(607,15,15,105,1,'2016-09-15 11:53:06','2016-09-15 11:53:06'),
(608,350,350,642,1,'2016-09-15 11:58:49','2016-09-15 11:58:49'),
(609,970,350,641,1,'2016-09-15 12:00:38','2016-09-15 12:00:38'),
(610,24,24,643,1,'2016-09-15 12:07:21','2016-09-15 12:07:21'),
(611,218,218,647,1,'2016-09-15 12:12:45','2016-09-15 12:12:45'),
(612,3,3,648,1,'2016-09-15 12:15:51','2016-09-15 12:15:51'),
(613,363,363,649,1,'2016-09-16 17:46:46','2016-09-16 17:46:46'),
(614,391,391,650,1,'2016-09-16 18:28:55','2016-09-16 18:40:36'),
(615,91,91,651,1,'2016-09-17 18:16:20','2016-09-17 18:16:20'),
(616,489,489,652,1,'2016-09-17 20:21:19','2016-09-17 20:21:19'),
(617,103,103,654,1,'2016-09-17 22:26:26','2016-09-17 22:26:26'),
(618,207,207,655,1,'2016-09-19 15:51:22','2016-09-19 15:51:22'),
(619,976,739,656,1,'2016-09-20 10:11:04','2016-09-20 10:11:04'),
(620,980,743,658,1,'2016-09-20 10:18:22','2016-09-20 10:18:22'),
(621,986,743,659,1,'2016-09-20 10:20:44','2016-09-20 10:20:44'),
(622,971,734,660,1,'2016-09-20 11:04:23','2016-09-20 11:04:23'),
(623,987,734,661,1,'2016-09-20 11:05:57','2016-09-20 11:05:57'),
(624,988,734,662,1,'2016-09-20 11:07:21','2016-09-20 11:07:21'),
(625,984,747,663,1,'2016-09-20 11:17:17','2016-09-20 11:17:17'),
(626,982,745,666,1,'2016-09-20 11:23:30','2016-09-20 11:23:30'),
(627,974,737,667,1,'2016-09-20 11:28:28','2016-09-20 11:28:28'),
(628,460,460,668,1,'2016-09-20 17:31:50','2016-09-20 17:31:50'),
(629,147,147,669,1,'2016-09-21 22:58:20','2016-09-21 22:58:20'),
(630,102,102,670,1,'2016-09-22 06:30:49','2016-09-23 17:54:41'),
(631,96,96,671,1,'2016-09-22 06:37:27','2016-09-22 06:37:27'),
(632,100,100,50,1,'2016-09-22 08:07:29','2016-09-22 08:07:29'),
(633,105,105,672,1,'2016-09-22 08:09:51','2016-09-22 08:09:51'),
(634,989,477,673,1,'2016-09-22 21:30:56','2016-09-22 21:30:56'),
(635,972,735,674,1,'2016-09-23 17:17:17','2016-09-23 17:17:51'),
(637,515,515,678,1,'2016-09-23 17:36:47','2016-09-23 17:36:47'),
(638,497,497,679,1,'2016-09-23 17:39:10','2016-09-23 17:39:10'),
(639,493,493,680,1,'2016-09-23 17:53:30','2016-09-23 17:53:30'),
(640,990,102,681,1,'2016-09-23 17:58:13','2016-09-23 17:58:13'),
(641,488,488,682,1,'2016-09-23 18:03:25','2016-09-23 18:03:25'),
(642,101,101,683,1,'2016-09-23 18:04:25','2016-09-23 18:04:25'),
(643,991,488,682,1,'2016-09-23 18:05:04','2016-09-23 18:05:04'),
(644,992,477,684,1,'2016-09-23 18:19:28','2016-09-23 18:19:39'),
(645,95,95,685,1,'2016-09-23 18:24:10','2016-09-23 18:24:10'),
(646,92,92,686,1,'2016-09-23 18:39:36','2016-09-23 18:39:36'),
(647,88,88,689,1,'2016-09-24 18:36:27','2016-09-24 18:36:27'),
(648,379,379,28,1,'2016-09-25 04:34:17','2016-09-25 04:34:17'),
(649,981,744,691,1,'2016-09-25 04:39:42','2016-09-25 04:39:42'),
(650,977,740,692,1,'2016-09-25 04:42:16','2016-09-25 04:42:16'),
(651,973,736,693,1,'2016-09-25 04:44:41','2016-09-25 04:44:41'),
(652,978,741,696,1,'2016-09-25 04:51:10','2016-09-25 04:51:11'),
(653,993,167,86,1,'2016-09-27 20:01:45','2016-09-27 20:01:45'),
(654,1025,230,698,1,'2016-09-28 19:06:32','2016-09-28 19:06:32'),
(655,230,230,699,1,'2016-09-28 19:08:51','2016-09-28 19:08:51'),
(656,1026,230,113,1,'2016-09-28 19:11:38','2016-09-28 19:11:38'),
(657,7,7,700,1,'2016-09-28 21:48:27','2016-09-28 21:48:27'),
(658,11,11,701,1,'2016-09-28 21:53:51','2016-09-28 21:53:51'),
(659,12,12,702,1,'2016-09-28 21:59:43','2016-09-28 21:59:43'),
(660,31,31,703,1,'2016-09-28 22:07:14','2016-10-17 19:06:34'),
(661,44,44,704,1,'2016-09-28 22:17:34','2016-09-28 22:17:35'),
(662,996,750,706,1,'2016-09-28 22:35:53','2016-09-28 22:35:53'),
(663,1027,68,707,1,'2016-09-29 16:11:09','2016-09-29 16:11:51'),
(664,68,68,708,1,'2016-09-29 16:12:54','2016-09-29 16:13:12'),
(665,45,45,705,1,'2016-09-29 18:10:45','2016-09-29 18:10:45'),
(666,56,56,710,1,'2016-09-29 18:34:54','2016-09-29 18:34:54'),
(667,668,581,711,1,'2016-09-29 20:36:18','2016-09-29 20:36:18'),
(668,788,615,553,1,'2016-09-29 22:40:46','2016-09-29 22:40:58'),
(669,627,563,712,1,'2016-09-30 19:52:12','2016-09-30 19:52:12'),
(670,328,328,714,1,'2016-09-30 23:49:21','2016-09-30 23:49:21'),
(671,727,601,364,1,'2016-10-01 19:02:30','2016-10-01 19:02:30'),
(672,128,128,715,1,'2016-10-01 22:28:35','2016-10-01 22:28:35'),
(673,595,548,716,1,'2016-10-03 14:38:28','2016-10-03 14:38:39'),
(674,1028,548,717,1,'2016-10-03 14:41:11','2016-10-03 14:41:11'),
(675,58,58,718,1,'2016-10-03 14:47:15','2016-10-03 14:47:15'),
(676,513,513,721,1,'2016-10-03 18:32:07','2016-10-03 18:32:07'),
(677,514,514,722,1,'2016-10-03 19:07:10','2016-10-03 19:07:10'),
(678,182,182,723,1,'2016-10-04 08:14:35','2016-10-04 08:14:35'),
(679,184,184,724,1,'2016-10-04 08:21:12','2016-10-04 08:21:12'),
(680,186,186,725,1,'2016-10-04 08:35:43','2016-10-04 08:35:43'),
(681,187,187,726,1,'2016-10-04 08:51:25','2016-10-04 08:51:25'),
(682,620,561,399,1,'2016-10-04 10:11:37','2016-10-04 10:11:37'),
(683,8,8,727,1,'2016-10-04 10:12:23','2016-10-04 10:12:23'),
(684,28,28,728,1,'2016-10-04 10:17:44','2016-10-04 10:17:44'),
(685,472,472,729,1,'2016-10-04 18:41:31','2016-10-04 18:41:31'),
(686,321,321,83,1,'2016-10-05 09:51:47','2016-10-05 09:51:47'),
(687,220,220,730,1,'2016-10-05 10:01:05','2016-10-05 10:01:05'),
(688,217,217,731,1,'2016-10-05 10:30:32','2016-10-05 10:31:10'),
(689,194,194,733,1,'2016-10-05 10:34:25','2016-10-05 10:34:25'),
(690,211,211,737,1,'2016-10-05 11:00:40','2016-10-05 11:00:40'),
(691,209,209,738,1,'2016-10-05 11:11:39','2016-10-05 11:11:39'),
(692,1092,469,732,1,'2016-10-05 11:26:16','2016-10-05 11:26:16'),
(693,46,46,739,1,'2016-10-05 12:04:57','2016-10-05 12:04:57'),
(694,52,52,2,1,'2016-10-05 12:10:29','2016-10-05 12:10:29'),
(695,57,57,740,1,'2016-10-05 12:15:41','2016-10-05 12:15:41'),
(696,93,93,741,1,'2016-10-05 12:19:22','2016-10-05 12:19:22'),
(697,1073,809,742,1,'2016-10-05 15:58:46','2016-10-05 15:58:46'),
(698,1093,469,734,1,'2016-10-05 16:25:56','2016-10-05 16:25:56'),
(699,1053,789,746,1,'2016-10-05 20:55:13','2016-10-05 20:55:13'),
(700,1035,771,747,1,'2016-10-05 21:02:11','2016-10-05 21:02:11'),
(701,1094,469,748,1,'2016-10-06 15:20:57','2016-10-06 15:20:57'),
(702,473,473,750,1,'2016-10-06 16:18:29','2016-10-06 16:18:29'),
(703,14,14,753,1,'2016-10-07 11:00:49','2016-10-07 11:00:49'),
(704,185,185,754,1,'2016-10-07 11:06:30','2016-10-07 11:06:30'),
(705,188,188,122,1,'2016-10-07 11:12:28','2016-10-07 11:12:28'),
(706,191,191,755,1,'2016-10-07 11:15:54','2016-10-07 11:15:54'),
(707,1032,768,756,1,'2016-10-09 15:36:19','2016-10-09 15:36:19'),
(708,1054,790,757,1,'2016-10-10 14:26:41','2016-10-10 14:26:42'),
(709,1095,563,712,1,'2016-10-10 14:58:48','2016-10-10 14:58:48'),
(710,117,117,758,1,'2016-10-11 09:34:36','2016-10-11 09:34:36'),
(711,183,183,759,1,'2016-10-11 09:38:37','2016-10-11 09:38:37'),
(712,192,192,760,1,'2016-10-11 09:42:22','2016-10-11 09:42:22'),
(713,145,145,761,1,'2016-10-11 12:04:53','2016-10-11 12:18:16'),
(714,1096,142,762,1,'2016-10-11 12:22:46','2016-10-11 12:25:40'),
(715,213,213,763,1,'2016-10-11 14:19:53','2016-10-11 14:21:57'),
(716,221,221,764,1,'2016-10-11 14:26:58','2016-10-11 14:27:31'),
(717,326,326,765,1,'2016-10-11 14:47:13','2016-10-11 14:47:13'),
(719,1097,469,111,1,'2016-10-13 10:51:04','2016-10-13 10:51:04'),
(720,1098,469,732,1,'2016-10-13 10:56:31','2016-10-13 10:56:31'),
(721,1099,469,111,1,'2016-10-13 11:09:25','2016-10-13 11:09:25'),
(722,1100,469,735,1,'2016-10-13 11:14:54','2016-10-13 11:14:54'),
(723,1101,469,734,1,'2016-10-13 11:18:11','2016-10-13 11:18:11'),
(724,1102,469,736,1,'2016-10-13 11:28:04','2016-10-13 11:28:04'),
(725,1103,469,734,1,'2016-10-13 12:48:39','2016-10-13 12:48:39'),
(726,1104,469,735,1,'2016-10-13 12:51:41','2016-10-13 12:51:41'),
(727,1105,469,736,1,'2016-10-13 12:55:56','2016-10-13 12:55:56'),
(728,397,397,767,1,'2016-10-14 12:23:16','2016-10-14 12:23:16'),
(729,1074,810,768,1,'2016-10-18 08:13:12','2016-10-22 14:41:52'),
(730,337,337,769,1,'2016-10-18 17:44:21','2016-10-18 18:36:15'),
(731,1106,337,771,1,'2016-10-18 18:40:02','2016-10-18 18:51:32'),
(732,1107,337,770,1,'2016-10-18 18:47:41','2016-10-31 08:43:53'),
(733,197,197,772,1,'2016-10-18 20:07:53','2016-10-18 20:08:05'),
(734,175,175,162,1,'2016-10-19 09:32:27','2016-10-19 09:32:27'),
(735,248,248,220,1,'2016-10-19 18:06:50','2016-10-19 18:06:50'),
(736,319,319,774,1,'2016-10-20 09:12:26','2016-10-20 09:12:35'),
(737,1111,831,775,1,'2016-10-20 14:52:52','2016-10-20 14:55:02'),
(738,343,343,776,1,'2016-10-21 14:31:20','2016-10-21 14:31:56'),
(739,1125,845,777,1,'2016-10-22 11:06:10','2016-10-22 11:07:15'),
(740,979,742,778,1,'2016-10-22 14:57:53','2016-10-22 14:58:04'),
(741,1109,829,779,1,'2016-10-22 15:20:34','2016-10-22 15:20:34'),
(742,1139,829,780,1,'2016-10-22 15:25:45','2016-10-22 15:26:01'),
(743,466,466,781,1,'2016-10-22 16:07:47','2016-10-22 16:08:02'),
(744,1059,795,782,1,'2016-10-24 16:00:15','2016-10-24 16:00:32'),
(745,327,327,16,1,'2016-10-24 19:24:16','2016-10-24 19:25:11'),
(746,1140,327,784,1,'2016-10-24 19:30:51','2016-10-24 19:35:11'),
(747,1002,756,785,1,'2016-10-25 09:35:43','2016-10-25 09:35:43'),
(748,1144,359,620,1,'2016-10-25 11:08:19','2016-10-25 11:08:19'),
(749,1055,791,786,1,'2016-10-27 08:31:21','2016-10-27 08:31:21'),
(750,1146,31,787,1,'2016-10-28 13:10:48','2016-10-28 13:12:08'),
(751,180,180,192,1,'2016-11-01 17:37:35','2016-11-01 17:37:35'),
(752,1047,783,789,1,'2016-11-02 08:33:25','2016-11-02 08:33:25'),
(753,1115,835,791,1,'2016-11-04 08:09:58','2016-11-04 08:09:58'),
(754,1067,803,792,1,'2016-11-04 09:11:00','2016-11-04 09:11:00'),
(755,482,482,793,1,'2016-11-04 13:04:49','2016-11-04 13:04:49'),
(756,1065,801,794,1,'2016-11-04 14:06:55','2016-11-04 14:06:55'),
(757,1116,836,795,1,'2016-11-04 15:41:21','2016-11-04 16:45:29'),
(758,1141,859,797,1,'2016-11-04 16:41:44','2016-11-04 16:41:44'),
(759,1154,836,796,1,'2016-11-04 17:04:34','2016-11-04 17:05:45'),
(760,1155,330,798,1,'2016-11-07 16:00:49','2016-11-07 16:00:49'),
(761,386,386,799,1,'2016-11-08 10:24:10','2016-11-08 10:24:10'),
(762,983,746,800,1,'2016-11-10 14:55:28','2016-11-10 14:59:04'),
(763,1172,835,791,1,'2016-11-13 09:33:59','2016-11-13 09:33:59'),
(764,344,344,801,1,'2016-11-15 14:39:36','2016-11-15 14:39:47'),
(765,1119,839,802,1,'2016-11-16 15:13:12','2016-11-16 15:13:12'),
(766,1165,876,804,1,'2016-11-19 09:27:11','2016-11-19 09:27:21'),
(767,518,518,805,1,'2016-11-21 13:26:52','2016-11-21 13:26:52'),
(768,1173,518,805,1,'2016-11-21 13:29:43','2016-11-21 13:29:43'),
(769,284,284,807,1,'2016-11-25 12:07:19','2016-11-25 12:13:39'),
(770,1048,784,808,1,'2016-11-26 10:49:18','2016-11-26 10:49:52'),
(771,272,272,809,1,'2016-11-29 12:01:25','2016-11-29 12:01:25'),
(772,463,463,810,1,'2016-11-29 17:51:36','2016-11-29 17:52:22'),
(773,1149,865,811,1,'2016-12-05 09:38:04','2016-12-05 09:38:04'),
(774,1110,830,812,1,'2016-12-05 12:44:03','2016-12-05 12:44:03'),
(775,377,377,815,1,'2016-12-05 12:46:32','2016-12-05 12:46:32'),
(776,99,99,816,1,'2016-12-09 12:07:39','2016-12-09 12:07:39'),
(777,346,346,820,1,'2016-12-19 11:59:34','2016-12-19 12:03:03'),
(778,1045,781,821,1,'2016-12-19 12:05:04','2016-12-19 12:05:20'),
(779,338,338,822,1,'2016-12-19 14:54:27','2016-12-19 14:54:27'),
(780,1042,778,823,1,'2016-12-19 15:41:01','2016-12-19 15:41:19'),
(781,1181,345,824,1,'2017-01-02 11:13:41','2017-01-02 11:13:41'),
(782,1062,798,825,1,'2017-01-05 20:29:27','2017-01-05 20:29:27'),
(783,512,512,333,1,'2017-01-12 08:01:09','2017-01-12 08:01:09'),
(784,1189,895,826,1,'2017-02-03 14:26:50','2017-02-03 14:26:50'),
(785,89,89,827,1,'2017-02-03 15:57:59','2017-02-03 16:50:52');

/*Table structure for table `users_perms` */

DROP TABLE IF EXISTS `users_perms`;

CREATE TABLE `users_perms` (
  `id_user` int(11) NOT NULL,
  `id_perms` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`,`id_perms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_perms` */

insert  into `users_perms`(`id_user`,`id_perms`,`status`,`date_created`,`date_updated`) values 
(1,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(2,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(3,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(4,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(5,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(6,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(7,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(8,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(9,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(10,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(11,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(12,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(13,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(14,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(15,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(16,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(17,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(18,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(19,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(20,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(21,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(22,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(23,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(24,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(25,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(26,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(27,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(28,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(29,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(30,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(31,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(32,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(33,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(34,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(35,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(36,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(37,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(38,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(39,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(40,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(41,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(42,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(43,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(44,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(45,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(46,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(47,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(48,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(49,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(50,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(51,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(52,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(53,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(54,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(55,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(56,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(57,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(58,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(59,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(60,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(61,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(62,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(63,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(64,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(65,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(66,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(67,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(68,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(69,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(70,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(71,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(72,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(73,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(74,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(75,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(76,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(77,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(78,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(79,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(81,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(82,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(83,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(84,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(85,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(86,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(87,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(88,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(89,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(90,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(91,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(92,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(93,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(94,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(95,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(96,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(97,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(98,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(99,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(100,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(101,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(102,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(103,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(104,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(105,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(106,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(107,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(108,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(109,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(110,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(111,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(112,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(113,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(114,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(115,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(116,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(117,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(118,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(121,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(122,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(123,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(124,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(125,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(126,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(127,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(128,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(129,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(130,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(132,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(134,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(135,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(136,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(137,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(138,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(139,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(140,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(141,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(142,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(143,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(144,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(145,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(146,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(147,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(148,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(149,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(151,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(153,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(154,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(155,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(156,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(157,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(158,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(159,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(160,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(161,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(162,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(163,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(164,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(165,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(166,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(167,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(169,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(170,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(171,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(172,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(173,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(174,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(175,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(176,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(177,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(178,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(179,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(180,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(181,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(182,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(183,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(184,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(185,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(186,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(187,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(188,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(189,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(190,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(191,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(192,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(193,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(194,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(196,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(197,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(198,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(200,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(201,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(202,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(203,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(204,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(205,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(206,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(207,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(209,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(210,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(211,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(212,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(213,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(214,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(215,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(216,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(217,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(218,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(219,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(220,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(221,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(223,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(224,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(225,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(226,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(227,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(228,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(229,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(230,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(231,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(232,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(233,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(234,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(235,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(236,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(237,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(238,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(239,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(240,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(241,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(242,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(243,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(244,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(245,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(247,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(248,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(249,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(250,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(252,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(253,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(254,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(255,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(256,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(257,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(258,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(259,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(260,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(261,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(262,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(263,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(264,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(265,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(266,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(267,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(268,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(269,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(270,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(271,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(272,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(273,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(276,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(277,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(278,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(279,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(280,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(281,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(284,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(285,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(286,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(287,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(288,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(289,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(290,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(291,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(292,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(293,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(294,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(295,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(296,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(297,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(298,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(299,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(300,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(301,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(302,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(303,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(304,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(305,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(307,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(308,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(309,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(310,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(311,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(312,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(313,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(314,3,1,'2016-06-01 09:31:56','2016-11-04 15:54:06'),
(315,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(316,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(318,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(319,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(320,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(321,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(322,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(324,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(325,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(326,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(327,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(328,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(329,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(330,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(331,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(332,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(333,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(334,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(335,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(336,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(337,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(338,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(339,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(340,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(341,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(342,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(343,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(344,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(345,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(346,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(347,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(348,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(349,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(350,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(351,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(352,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(353,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(354,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(355,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(356,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(357,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(358,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(359,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(360,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(361,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(362,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(363,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(364,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(365,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(366,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(367,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(368,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(369,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(370,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(371,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(372,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(373,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(374,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(375,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(376,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(377,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(378,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(379,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(380,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(381,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(383,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(384,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(385,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(386,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(387,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(388,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(389,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(390,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(391,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(392,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(393,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(394,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(395,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(396,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(397,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(398,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(399,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(400,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(401,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(402,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(403,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(404,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(405,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(406,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(407,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(408,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(409,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(410,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(411,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(412,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(413,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(414,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(415,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(417,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(418,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(419,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(420,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(421,3,1,'2016-06-01 09:31:56','2016-07-17 03:20:05'),
(422,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(423,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(424,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(425,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(426,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(427,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(428,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(429,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(431,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(432,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(433,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(434,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(435,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(436,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(437,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(438,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(439,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(440,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(441,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(442,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(443,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(444,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(445,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(446,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(447,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(448,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(449,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(450,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(451,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(452,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(453,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(454,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(455,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(456,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(457,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(458,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(459,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(460,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(461,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(463,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(464,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(465,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(466,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(468,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(469,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(470,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(471,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(472,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(473,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(474,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(475,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(477,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(478,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(479,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(480,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(481,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(482,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(483,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(484,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(485,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(486,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(487,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(488,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(489,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(490,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(491,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(492,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(493,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(494,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(495,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(496,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(497,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(498,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(499,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(500,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(501,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(502,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(503,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(504,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(505,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(506,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(507,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(508,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(509,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(510,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(511,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(512,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(513,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(514,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(515,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(516,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(517,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(518,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(519,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(520,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(521,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(523,3,1,'2016-06-01 09:31:56','2016-06-01 09:31:56'),
(524,2,1,'2016-09-06 03:01:03','2016-09-06 03:01:03'),
(525,2,1,'2016-06-01 18:16:15','2016-06-01 18:16:15'),
(526,2,1,'2016-06-01 18:27:00','2016-06-01 18:27:00'),
(529,4,0,NULL,NULL),
(530,4,0,NULL,NULL),
(532,3,1,'2016-06-02 00:30:29','2016-06-02 17:28:26'),
(535,2,1,'2016-09-11 05:57:19','2016-09-11 05:57:19'),
(536,3,1,'2016-06-02 12:07:50','2016-06-02 17:30:00'),
(539,4,0,NULL,NULL),
(545,4,0,NULL,NULL),
(546,4,0,NULL,NULL),
(547,4,0,NULL,NULL),
(549,4,0,NULL,NULL),
(553,4,0,NULL,NULL),
(554,4,0,NULL,NULL),
(556,4,0,NULL,NULL),
(559,4,0,NULL,NULL),
(561,4,0,NULL,NULL),
(562,4,0,NULL,NULL),
(565,4,0,NULL,NULL),
(566,4,0,NULL,NULL),
(567,4,0,NULL,NULL),
(568,4,0,NULL,NULL),
(569,4,0,NULL,NULL),
(570,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(571,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(572,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(573,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(574,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(575,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(577,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(578,3,1,'2016-06-10 03:10:50','2016-06-10 03:10:50'),
(585,4,0,NULL,NULL),
(586,3,1,'2016-06-13 21:17:16','2016-06-13 21:17:17'),
(589,4,0,NULL,NULL),
(591,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(592,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(593,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(594,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(595,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(596,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(597,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(598,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(599,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(600,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(601,3,1,'2016-06-18 18:35:10','2016-06-18 18:35:10'),
(606,4,0,NULL,NULL),
(607,4,0,NULL,NULL),
(609,4,0,NULL,NULL),
(610,4,0,NULL,NULL),
(613,4,0,NULL,NULL),
(614,3,1,'2016-06-26 16:58:18','2016-06-26 20:59:59'),
(615,4,0,NULL,NULL),
(616,4,0,NULL,NULL),
(617,4,0,NULL,NULL),
(618,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(619,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(620,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(621,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(623,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(624,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(625,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(626,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(627,3,1,'2016-06-30 06:14:01','2016-06-30 06:14:01'),
(628,4,0,NULL,NULL),
(635,4,0,NULL,NULL),
(638,4,0,NULL,NULL),
(646,4,0,NULL,NULL),
(647,4,0,NULL,NULL),
(648,4,0,NULL,NULL),
(649,4,0,NULL,NULL),
(650,4,0,NULL,NULL),
(651,4,0,NULL,NULL),
(652,4,0,NULL,NULL),
(653,4,0,NULL,NULL),
(654,4,0,NULL,NULL),
(656,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(657,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(658,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(659,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(660,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(661,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(662,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(663,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(664,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(665,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(666,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(667,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(668,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(669,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(670,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(671,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(673,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(674,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(676,3,1,'2016-07-13 18:37:29','2016-07-13 18:37:29'),
(686,4,0,NULL,NULL),
(687,4,0,NULL,NULL),
(689,4,0,NULL,NULL),
(690,4,0,NULL,NULL),
(691,4,0,NULL,NULL),
(692,4,0,NULL,NULL),
(693,4,0,NULL,NULL),
(694,4,0,NULL,NULL),
(695,4,0,NULL,NULL),
(696,4,0,NULL,NULL),
(697,4,0,NULL,NULL),
(698,4,0,NULL,NULL),
(699,4,0,NULL,NULL),
(700,4,0,NULL,NULL),
(701,4,0,NULL,NULL),
(702,4,0,NULL,NULL),
(703,4,0,NULL,NULL),
(704,4,0,NULL,NULL),
(705,3,1,'2016-07-21 02:10:11','2016-08-02 09:24:59'),
(706,4,0,NULL,NULL),
(707,4,0,NULL,NULL),
(708,4,0,NULL,NULL),
(709,4,0,NULL,NULL),
(710,4,0,NULL,NULL),
(711,4,0,NULL,NULL),
(712,4,0,NULL,NULL),
(713,4,0,NULL,NULL),
(714,4,0,NULL,NULL),
(715,4,0,NULL,NULL),
(716,4,0,NULL,NULL),
(717,4,0,NULL,NULL),
(718,4,0,NULL,NULL),
(719,4,0,NULL,NULL),
(720,4,0,NULL,NULL),
(721,4,0,NULL,NULL),
(722,4,0,NULL,NULL),
(724,4,0,NULL,NULL),
(726,4,1,NULL,NULL),
(727,3,1,'2016-07-31 16:25:31','2016-08-14 02:25:14'),
(728,3,1,'2016-08-01 16:23:54','2016-08-01 16:23:54'),
(729,3,1,'2016-08-01 16:23:54','2016-08-01 16:23:54'),
(730,3,1,'2016-08-01 16:23:54','2016-08-01 16:23:54'),
(731,3,1,'2016-08-01 16:23:54','2016-08-01 16:23:54'),
(734,4,0,NULL,NULL),
(735,4,0,NULL,NULL),
(736,4,0,NULL,NULL),
(737,4,0,NULL,NULL),
(738,4,0,NULL,NULL),
(739,4,0,NULL,NULL),
(740,4,0,NULL,NULL),
(741,4,0,NULL,NULL),
(742,4,0,NULL,NULL),
(743,4,0,NULL,NULL),
(744,4,0,NULL,NULL),
(745,4,0,NULL,NULL),
(746,4,0,NULL,NULL),
(747,4,0,NULL,NULL),
(748,4,0,NULL,NULL),
(750,4,0,NULL,NULL),
(751,4,0,NULL,NULL),
(753,4,0,NULL,NULL),
(754,4,0,NULL,NULL),
(755,4,0,NULL,NULL),
(756,4,0,NULL,NULL),
(757,4,0,NULL,NULL),
(758,4,0,NULL,NULL),
(759,4,0,NULL,NULL),
(760,4,0,NULL,NULL),
(761,4,0,NULL,NULL),
(762,4,0,NULL,NULL),
(763,4,0,NULL,NULL),
(764,4,0,NULL,NULL),
(765,4,0,NULL,NULL),
(766,4,0,NULL,NULL),
(768,4,0,NULL,NULL),
(769,4,0,NULL,NULL),
(770,4,0,NULL,NULL),
(771,4,0,NULL,NULL),
(772,4,0,NULL,NULL),
(773,3,0,'2016-08-27 00:49:42','2016-08-27 00:49:42'),
(774,4,0,NULL,NULL),
(775,4,0,NULL,NULL),
(776,4,0,NULL,NULL),
(777,4,0,NULL,NULL),
(778,4,0,NULL,NULL),
(779,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(780,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(781,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(782,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(783,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(784,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(785,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(787,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(788,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(789,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(790,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(791,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(792,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(793,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(794,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(795,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(796,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(797,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(798,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(799,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(800,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(801,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(803,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(804,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(805,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(806,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(807,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(808,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(809,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(810,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(811,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(812,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(813,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(814,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(815,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(816,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(817,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(818,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(819,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(820,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(821,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(822,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(823,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(824,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(825,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(826,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(827,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(828,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(830,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(831,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(832,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(833,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(834,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(835,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(836,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(837,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(838,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(839,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(840,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(841,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(842,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(843,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(844,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(845,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(846,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(847,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(848,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(849,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(851,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(852,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(853,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(854,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(855,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(856,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(857,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(859,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(860,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(861,3,1,'2016-08-31 18:06:59','2016-08-31 18:06:59'),
(906,4,0,NULL,NULL),
(907,4,0,NULL,NULL),
(908,4,0,NULL,NULL),
(909,4,0,NULL,NULL),
(910,4,0,NULL,NULL),
(911,4,0,NULL,NULL),
(912,4,0,NULL,NULL),
(913,4,0,NULL,NULL),
(914,4,0,NULL,NULL),
(915,4,0,NULL,NULL),
(916,4,0,NULL,NULL),
(917,4,0,NULL,NULL),
(918,4,0,NULL,NULL),
(919,4,0,NULL,NULL),
(920,4,0,NULL,NULL),
(921,4,0,NULL,NULL),
(922,4,0,NULL,NULL),
(923,4,0,NULL,NULL),
(924,4,0,NULL,NULL),
(925,4,0,NULL,NULL),
(926,4,0,NULL,NULL),
(927,4,0,NULL,NULL),
(928,4,0,NULL,NULL),
(929,4,0,NULL,NULL),
(930,4,0,NULL,NULL),
(931,4,0,NULL,NULL),
(932,4,0,NULL,NULL),
(933,4,0,NULL,NULL),
(934,4,0,NULL,NULL),
(935,4,0,NULL,NULL),
(936,4,0,NULL,NULL),
(937,4,0,NULL,NULL),
(938,4,0,NULL,NULL),
(939,4,0,NULL,NULL),
(940,4,0,NULL,NULL),
(941,4,0,NULL,NULL),
(942,4,0,NULL,NULL),
(943,4,0,NULL,NULL),
(944,4,0,NULL,NULL),
(945,4,0,NULL,NULL),
(946,4,0,NULL,NULL),
(947,4,0,NULL,NULL),
(948,4,0,NULL,NULL),
(949,4,0,NULL,NULL),
(950,4,0,NULL,NULL),
(951,4,0,NULL,NULL),
(952,4,0,NULL,NULL),
(953,4,0,NULL,NULL),
(954,4,0,NULL,NULL),
(955,4,0,NULL,NULL),
(956,4,0,NULL,NULL),
(957,4,0,NULL,NULL),
(958,4,0,NULL,NULL),
(959,4,0,NULL,NULL),
(960,4,0,NULL,NULL),
(961,4,0,NULL,NULL),
(962,4,0,NULL,NULL),
(963,4,0,NULL,NULL),
(964,4,0,NULL,NULL),
(965,4,0,NULL,NULL),
(966,4,0,NULL,NULL),
(967,4,0,NULL,NULL),
(968,4,0,NULL,NULL),
(969,4,0,NULL,NULL),
(970,4,0,NULL,NULL),
(971,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(972,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(973,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(974,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(975,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(976,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(977,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(978,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(979,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(980,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(981,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(982,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(983,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(984,3,1,'2016-09-19 05:15:52','2016-09-19 05:15:52'),
(986,4,0,NULL,NULL),
(987,4,0,NULL,NULL),
(988,4,0,NULL,NULL),
(989,4,0,NULL,NULL),
(990,4,0,NULL,NULL),
(991,4,0,NULL,NULL),
(992,4,0,NULL,NULL),
(993,4,0,NULL,NULL),
(994,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(995,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(996,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(997,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(998,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(999,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1000,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1001,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1002,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1003,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1004,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1005,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1006,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1007,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1008,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1009,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1010,3,1,'2016-09-28 05:57:58','2016-09-28 05:57:58'),
(1025,4,0,NULL,NULL),
(1026,4,0,NULL,NULL),
(1027,4,0,NULL,NULL),
(1028,4,0,NULL,NULL),
(1029,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1030,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1031,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1032,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1033,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1034,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1035,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1036,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1037,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1038,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1039,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1040,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1041,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1042,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1043,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1044,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1045,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1046,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1047,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1048,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1049,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1050,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1051,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1052,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1053,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1054,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1055,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1056,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1057,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1058,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1059,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1060,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1061,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1062,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1063,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1064,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1065,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1066,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1067,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1068,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1069,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1070,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1071,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1072,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1073,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1074,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1075,3,1,'2016-10-05 08:32:53','2016-10-05 08:32:53'),
(1092,4,0,NULL,NULL),
(1093,4,0,NULL,NULL),
(1094,4,0,NULL,NULL),
(1095,4,0,NULL,NULL),
(1096,4,0,NULL,NULL),
(1097,4,0,NULL,NULL),
(1098,4,0,NULL,NULL),
(1099,4,0,NULL,NULL),
(1100,4,0,NULL,NULL),
(1101,4,0,NULL,NULL),
(1102,4,0,NULL,NULL),
(1103,4,0,NULL,NULL),
(1104,4,0,NULL,NULL),
(1105,4,0,NULL,NULL),
(1106,4,0,NULL,NULL),
(1107,4,0,NULL,NULL),
(1108,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1109,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1110,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1111,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1112,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1113,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1114,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1115,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1116,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1117,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1118,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1119,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1120,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1121,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1122,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1123,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1124,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1125,3,1,'2016-10-20 08:14:19','2016-10-20 08:14:19'),
(1139,4,0,NULL,NULL),
(1140,4,0,NULL,NULL),
(1141,3,1,'2016-10-24 21:38:45','2016-10-24 21:38:45'),
(1142,3,1,'2016-10-24 21:38:45','2016-10-24 21:38:45'),
(1143,3,1,'2016-10-24 21:38:45','2016-10-24 21:38:45'),
(1144,4,0,NULL,NULL),
(1145,3,0,'2016-10-26 18:34:25','2016-10-26 18:34:25'),
(1146,4,0,NULL,NULL),
(1147,3,1,'2016-11-01 08:08:23','2016-11-01 08:08:23'),
(1148,3,1,'2016-11-01 08:08:23','2016-11-01 08:08:23'),
(1149,3,1,'2016-11-01 08:08:23','2016-11-01 08:08:23'),
(1150,3,1,'2016-11-01 08:08:23','2016-11-01 08:08:23'),
(1154,4,0,NULL,NULL),
(1155,4,0,NULL,NULL),
(1156,3,0,'2016-11-10 18:24:56','2016-11-10 18:24:56'),
(1157,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1158,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1159,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1160,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1161,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1162,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1163,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1164,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1165,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1166,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1167,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1168,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1169,3,1,'2016-11-11 08:24:11','2016-11-11 08:24:11'),
(1172,4,0,NULL,NULL),
(1173,4,0,NULL,NULL),
(1174,3,1,'2016-11-25 14:39:10','2016-11-25 14:39:10'),
(1175,3,1,'2016-11-25 14:39:10','2016-11-25 14:39:10'),
(1176,3,1,'2016-11-25 14:39:10','2016-11-25 14:39:10'),
(1177,3,1,'2016-11-25 14:39:10','2016-11-25 14:39:10'),
(1178,3,1,'2016-11-25 14:39:10','2016-11-25 14:39:10'),
(1181,4,0,NULL,NULL),
(1182,3,0,'2017-01-19 10:21:13','2017-01-19 10:21:13'),
(1183,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1184,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1185,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1186,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1187,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1188,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1189,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1190,3,1,'2017-02-01 16:35:25','2017-02-01 16:35:25'),
(1192,2,1,'2017-08-20 10:58:45','2017-08-20 10:58:45'),
(1193,2,1,'2017-08-20 10:58:45','2017-08-20 10:58:45');

/*Table structure for table `users_token` */

DROP TABLE IF EXISTS `users_token`;

CREATE TABLE `users_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_company_validation` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `time_expire` datetime NOT NULL,
  `validate` bigint(20) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `mail_alternative` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

/*Data for the table `users_token` */

insert  into `users_token`(`id`,`id_company_validation`,`token`,`time_expire`,`validate`,`mail`,`mail_alternative`,`date_created`,`date_updated`) values 
(1,1,'c2VydmlncnVhc2xnVi0xODM5MzU4My0yc2VydmlncnVhc2xnQGhvdG1haWwuY29tMDEtMDYtMTYgMDY6NDM6MzM=','2016-06-01 19:43:32',0,'servigruaslg@hotmail.com','servigruaslg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,2,'RXZlcmVzdCBDb2xtZW5hcmVzVi0xMjY4NDQ2NS0wZ3J1YXNldmVyZXN0QGhvdG1haWwuY29tMDEtMDYtMTYgMDY6NTE6NDA=','2016-06-01 19:51:40',0,'gruaseverest@hotmail.com','gruaseverest@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,3,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTQtNkdydWFzdG93aW5nQGhvdG1haWwuY29tMDEtMDYtMTYgMDY6NTI6MDI=','2016-06-01 19:52:02',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,3,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTQtNkdydWFzdG93aW5nQGhvdG1haWwuY29tMDEtMDYtMTYgMDY6NTM6NTA=','2016-06-01 19:53:50',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,4,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTRHcnVhc3Rvd2luZ0Bob3RtYWlsLmNvbTAxLTA2LTE2IDA2OjU5OjA0','2016-06-01 19:59:04',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,4,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTRHcnVhc3Rvd2luZ0Bob3RtYWlsLmNvbTAxLTA2LTE2IDA3OjAwOjE0','2016-06-01 20:00:14',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,3,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTQtNkdydWFzdG93aW5nQGhvdG1haWwuY29tMDEtMDYtMTYgMDc6MDI6MDA=','2016-06-01 20:02:00',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,3,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTQtNkdydWFzdG93aW5nQGhvdG1haWwuY29tMDEtMDYtMTYgMDc6MDQ6MDU=','2016-06-01 20:04:05',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,5,'UGFuZmlsbyBqb3NlIHNhbmFicmlhVi0xOTkwMTA2OEdvY2hvc2FuYWJyaWFAZ21haWwuY29tMDEtMDYtMTYgMDc6MDc6MjQ=','2016-06-01 20:07:24',0,'Gochosanabria@gmail.com','Gochosanabria@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,6,'T3JsYW5kbyB0b3JyZXNWLVYtMTc3NTU0MDAtb3JsYW5kb25ycHRhbGk2OUBnbWFpbC5jb20wMS0wNi0xNiAwNzo0NjowNg==','2016-06-01 20:46:06',0,'orlandonrptali69@gmail.com','orlandonrptali69@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,3,'R3J1YXMgdG93aW5nIG1lcmlkYVYtMTE0NjM0MTQtNkdydWFzdG93aW5nQGhvdG1haWwuY29tMDEtMDYtMTYgMDc6NTc6NDU=','2016-06-01 20:57:45',0,'Gruastowing@hotmail.com','Gruastowing@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(13,8,'R3J1YXMgQURHIGRlIERhdmlkIEd1aWxsZW5WLTE1MDMyMzM0LTNkZ3VpbGxlbnJAZ21haWwuY29tMDEtMDYtMTYgMDk6MTE6MDU=','2016-06-01 22:11:05',1,'dguillenr@gmail.com','dguillenr@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(14,9,'V2lkZXJtaXNWLTIyMDAzNDQxV2lkZXJtaXNAaG90bWFpbC5lczAxLTA2LTE2IDEwOjM2OjUx','2016-06-01 23:36:51',0,'Widermis@hotmail.es','Widermis@hotmail.es','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(15,10,'Z3J1YXMgbWVyaWRhIC4gYy5hSi0zMTY1MjEzMy04Z3J1YXNtZXJASG90bWFpbC5jb20wMS0wNi0xNiAxMDozNzoyMA==','2016-06-01 23:37:20',0,'gruasmer@Hotmail.com','gruasmer@Hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(16,11,'anVhbiBqb3NlIGZlcm5hbmRlelYtNjUxOTA3OWZlcm5hbmRlemp1YW5qb3NlMTdAZ21haWwuY29tMDEtMDYtMTYgMTA6NDI6Mjk=','2016-06-01 23:42:29',0,'fernandezjuanjose17@gmail.com','fernandezjuanjose17@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(17,12,'anVhbiBjYXNhbm92YVYtdi0xNDIzNjYzMGp1YW5jaG9tY2FzYW5vdmFAaG90bWFpbC5jb20wMS0wNi0xNiAxMDo0MjozMw==','2016-06-01 23:42:33',0,'juanchomcasanova@hotmail.com','juanchomcasanova@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(18,13,'cmV0cmFtYXIsYy5hSi0zMTYzNTgxNTFyaWNhcmRvX3JldHJhbWFyQGhvdG1haWwuY29tMDEtMDYtMTYgMTA6NDM6MDY=','2016-06-01 23:43:06',0,'ricardo_retramar@hotmail.com','ricardo_retramar@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(19,14,'Q2FybG9zIFF1aWphZGFWLTE3NTkwMTI3Y2FybG9zZ3J1YTFAaG90bWFpbC5jb20wMS0wNi0xNiAxMTowMDoxMw==','2016-06-02 00:00:13',0,'carlosgrua1@hotmail.com','carlosgrua1@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(20,14,'Q2FybG9zIFF1aWphZGFWLTE3NTkwMTI3Y2FybG9zZ3J1YTFAaG90bWFpbC5jb20wMS0wNi0xNiAxMTowNDo0Mg==','2016-06-02 00:04:42',0,'carlosgrua1@hotmail.com','carlosgrua1@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(21,15,'TWFpY2tvbCBIZXJyZXJhVi0yMDYwNTY3NWhtYWlja29sQGdtYWlsLmNvbjAxLTA2LTE2IDExOjA5OjUy','2016-06-02 00:09:52',0,'hmaickol@gmail.con','hmaickol@gmail.con','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(22,15,'TWFpY2tvbCBIZXJyZXJhVi0yMDYwNTY3NWhtYWlja29sQGdtYWlsLmNvbTAxLTA2LTE2IDExOjEyOjMy','2016-06-02 00:12:32',0,'hmaickol@gmail.com','hmaickol@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(23,16,'SmhvbiBtYWlrZXIgY29ydGVzVi0xNTkyODMyNy0xSmhvbmNvcnRlejMwQGhvdG1haWwuY29tMDEtMDYtMTYgMTE6MTI6MzI=','2016-06-02 00:12:32',0,'Jhoncortez30@hotmail.com','Jhoncortez30@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(24,17,'b3N3YWxkbyBKb3PDqSBNYXJ0aW5leiBQZXJlelYtMTg5MjIzNDRvbWFydGluZXpwZXJlei4xOTg3QGdtYWkuY29tMDEtMDYtMTYgMTE6MTY6NDA=','2016-06-02 00:16:40',0,'omartinezperez.1987@gmai.com','omartinezperez.1987@gmai.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(25,18,'YWxleGlzIGdvbnphbGV6Vi00MDY0NjIwbHVpc2dvbnphbGV6c3VhcmV6MDAxODFAZ21haWwuY29tMDEtMDYtMTYgMTE6MTk6NTk=','2016-06-02 00:19:59',0,'luisgonzalezsuarez00181@gmail.com','luisgonzalezsuarez00181@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(26,19,'SkVTVVMgQUxCRVJUTyBTSUxWQSBTQU5DSEVaVi0xNjUzMjMwODBKRUFMU0lTQTExQEhPVE1BSUwuQ09NMDEtMDYtMTYgMTE6MjM6NTQ=','2016-06-02 00:23:54',0,'JEALSISA11@HOTMAIL.COM','JEALSISA11@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(27,20,'SkVTVVMgQUxCRVJUTyBTSUxWQSBTQU5DSEVaVi0xNjUzMjMwOC0wSkVBTFNJU0ExMUBIT1RNQUlMLkNPTTAxLTA2LTE2IDExOjI4OjI5','2016-06-02 00:28:29',0,'JEALSISA11@HOTMAIL.COM','JEALSISA11@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(28,21,'Z3J1YXMgYWRyaWFuVi04MDA3ODc2OWVkaW5zb24tam9zZUBob3RtYWlsLmVzMDEtMDYtMTYgMTE6MzA6Mjg=','2016-06-02 00:30:28',0,'edinson-jose@hotmail.es','edinson-jose@hotmail.es','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(29,22,'Um9iZXJ0IEdvbnphbGV6Vi12LSAxNzcyMjAwNWNoaWtpcmF5MUBob3RtYWlsLmNvbTAxLTA2LTE2IDExOjMyOjIz','2016-06-02 00:32:23',0,'chikiray1@hotmail.com','chikiray1@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(30,23,'Z3JlZ29yeSB0YXJhem9uYVYtMTgzNDcyNDQtMWdyZWdvXzIwMjFAaG90bWFpbC5jb20wMS0wNi0xNiAxMTo0MDoyMw==','2016-06-02 00:40:23',0,'grego_2021@hotmail.com','grego_2021@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(31,23,'Z3JlZ29yeSB0YXJhem9uYVYtMTgzNDcyNDQtMWdyZWdvXzIwMjFAaG90bWFpbC5jb20wMS0wNi0xNiAxMTo0NzozNQ==','2016-06-02 00:47:35',0,'grego_2021@hotmail.com','grego_2021@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(32,24,'WWhpdHpyYW5kZXIgU2VxdWVyYVYtMTM5OTA1NDAzeWhpdHphbmRlcnNlcXVlcmFAZ21haWwuY29tMDEtMDYtMTYgMTE6NTM6NDE=','2016-06-02 00:53:41',0,'yhitzandersequera@gmail.com','yhitzandersequera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(33,26,'dGVjbm9tb3RvcmVzIHBpbnRhIGNhcnMgYy5hVi0yOTg4NTQxNC02dGVjcGludGFjYXJzYy5hQGdtYWlsLmNvbTAyLTA2LTE2IDEyOjA0OjIw','2016-06-02 01:04:20',1,'tecpintacarsc.a@gmail.com','tecpintacarsc.a@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(34,27,'TWlndWVsIEJyYXZvVi0wOTUxOTk4Ny01ZWxfdmFxdWVyb18yMDAzQGhvdG1haWwuY29tMDItMDYtMTYgMTI6MDc6MjU=','2016-06-02 01:07:25',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(35,28,'TWlndWVsIEJyYXZvVi05NTE5OTg3LTVlbF92YXF1ZXJvXzIwMDNAaG90bWFpbC5jb20wMi0wNi0xNiAxMjoxMDo1Nw==','2016-06-02 01:10:57',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(36,29,'am9zZSBoZXJuYW5kZXpWLTE0MDYwNTY2LTlxY2hlb0Bob3RtYWlsLmNvbTAyLTA2LTE2IDEyOjI5OjUy','2016-06-02 01:29:52',0,'qcheo@hotmail.com','qcheo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(37,30,'R1JVQVMgTUlHVUVMT04uVi0xODU1NjI0N01JR1VFTF9ST05ET045MEBIT1RNQUlMLkNPTTAyLTA2LTE2IDEyOjM1OjMz','2016-06-02 01:35:33',0,'MIGUEL_RONDON90@HOTMAIL.COM','MIGUEL_RONDON90@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(38,31,'Tml4b24gb3N1bmFWLTE2NzQxNjgxU2VydmlncnVhc2VsbW9jaG9AeWFob28uY29tMDItMDYtMTYgMTI6NTA6MTE=','2016-06-02 01:50:11',0,'Servigruaselmocho@yahoo.com','Servigruaselmocho@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(39,32,'Tml4b24gb3N1bmFWLTE2NzQxNzgxU2VydmlncnVhZWxtb2Nob0B5YWhvby5jb20wMi0wNi0xNiAxMjo1MjowMQ==','2016-06-02 01:52:01',0,'Servigruaelmocho@yahoo.com','Servigruaelmocho@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(40,24,'WWhpdHpyYW5kZXIgU2VxdWVyYVYtMTM5OTA1NDAzeWhpdHphbmRlcnNlcXVlcmFAZ21haWwuY29tMDItMDYtMTYgMDE6MDI6NDA=','2016-06-02 02:02:40',0,'yhitzandersequera@gmail.com','yhitzandersequera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(41,33,'Sm9zZSBnYXJjaWFWLTE4NjcxODY3Sm9zZWdhcmNpYTczNzdAaG90bWFpbC5jb20wMi0wNi0xNiAwMToxODoxMQ==','2016-06-02 02:18:11',0,'Josegarcia7377@hotmail.com','Josegarcia7377@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(42,34,'U2VydmljaW9zIGRlIGdydWFzIGl2YW4gZiBzcG9ydCBjYUotMjk3NTI3ODY5aXZhbnNwb3J0NzlAaG90bWFpbC5jb20wMi0wNi0xNiAwMToxOTowNw==','2016-06-02 02:19:07',0,'ivansport79@hotmail.com','ivansport79@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(43,33,'Sm9zZSBnYXJjaWFWLTE4NjcxODY3Sm9zZWdhcmNpYTczNzdAaG90bWFpbC5jb20wMi0wNi0xNiAwMToyMDoyNw==','2016-06-02 02:20:27',0,'Josegarcia7377@hotmail.com','Josegarcia7377@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(44,35,'U2VydmljaW9zIGRlIEdydWFzIEl2YW4gRiBTcG9ydCBDQUotMjk3NTI3ODY4OWl2YW5zcG9ydDc5QGhvdG1haWwuY29tMDItMDYtMTYgMDE6Mjg6NTU=','2016-06-02 02:28:55',0,'ivansport79@hotmail.com','ivansport79@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(45,36,'R3J1YXMgZG9uIElzaWRyb1YtMTQ0MzgzODQ5bGFuZGVyX3NhbGNlZG9AaG90bWFpbC5jb20wMi0wNi0xNiAwMTozMToyOA==','2016-06-02 02:31:28',0,'lander_salcedo@hotmail.com','lander_salcedo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(46,36,'R3J1YXMgRG9uIElzaWRyb1YtMTQ0MzgzODQ5bGFuZGVyX3NhbGNlZG9AaG90bWFpbC5jb20wMi0wNi0xNiAwMTozNzo0Mw==','2016-06-02 02:37:43',0,'lander_salcedo@hotmail.com','lander_salcedo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(47,37,'c2VydmljaW8gZGUgZ3J1YSBqYWlybywgYy5hSi00MDQzMjk0NTVqYWlyb3JleWVzXzc5QGhvdG1haWwuY29tMDItMDYtMTYgMDI6MzA6NTk=','2016-06-02 03:30:59',0,'jairoreyes_79@hotmail.com','jairoreyes_79@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(48,38,'U2VydmljaW8gZGUgR3J1YSBKYWlybywgQy5BSi00MDQzMjk0NS01amFpcm9yZXllc183OUBob3RtYWlsLmNvbTAyLTA2LTE2IDAyOjM2OjQ5','2016-06-02 03:36:49',0,'jairoreyes_79@hotmail.com','jairoreyes_79@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(49,39,'c2VydmljaW9kZWdydWFoZXJtYW5vc25hdmVkYWMuYUotNDA1NzgwMTEwc2VydmljaW9oZXJtYW5vc25hdmVkYUBnbWFpbC5jb20wMi0wNi0xNiAwMzowMjoxNQ==','2016-06-02 04:02:15',0,'serviciohermanosnaveda@gmail.com','serviciohermanosnaveda@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(50,40,'U2VydmlncnVhcyB2ZWxhemNvVi0yMTE3OTg4MzJKZXN1c3ZlbGF6Y29fN0Bob3RtYWlsLmNvbTAyLTA2LTE2IDAzOjMzOjU5','2016-06-02 04:33:59',0,'Jesusvelazco_7@hotmail.com','Jesusvelazco_7@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(51,41,'V2lsaWFtIE1hcnRpbmV6Vi0xNTU4OTM2Nzl3aWxsaWFtc29tYTA1QGdtYWlsLmNvbTAyLTA2LTE2IDAzOjM1OjI5','2016-06-02 04:35:29',0,'williamsoma05@gmail.com','williamsoma05@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(52,42,'SmVzw7pzIHZlbGF6Y29WLTIxMTc5ODgzLTJKZXN1c3ZlbGF6Y29fN0Bob3RtYWlsLmNvbTAyLTA2LTE2IDAzOjM1OjQz','2016-06-02 04:35:43',0,'Jesusvelazco_7@hotmail.com','Jesusvelazco_7@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(53,43,'RWR3aW4gYmF1dGVWLTE1NTQ1OTgzOWNvbnZpdmUtMTlAaG90bWFpbC5jb20wMi0wNi0xNiAwMzo0MTozNQ==','2016-06-02 04:41:35',0,'convive-19@hotmail.com','convive-19@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(54,44,'SmVzw7pzIHZlbGF6Y29WLTIxNzk4ODMtMkplc3VhdmVsYXpjb183QGhvdG1haWwuY29tMDItMDYtMTYgMDM6NDQ6MzI=','2016-06-02 04:44:32',0,'Jesuavelazco_7@hotmail.com','Jesuavelazco_7@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(55,45,'b3JsYW5kbyBwZXJlelYtMTE1Nzc2NTcxb3JsYW5kb2pvc2VwZXJlejQxQGdtYWlsLmNvbTAyLTA2LTE2IDA0OjMxOjM0','2016-06-02 05:31:34',0,'orlandojoseperez41@gmail.com','orlandojoseperez41@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(56,45,'b3JsYW5kbyBwZXJlelYtMTE1Nzc2NTcxb3JsYW5kb2pvc2VwZXJlejQxQGdtYWlsLmNvbTAyLTA2LTE2IDA0OjM1OjEw','2016-06-02 05:35:10',0,'orlandojoseperez41@gmail.com','orlandojoseperez41@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(57,46,'R2VyYXJkbyBqb3NlIGFsbWVpZGEgT3ZhbGxlc1YtMTY2ODA5NDRHZXJhcmRvamFsbWVpZGFAaG90bWFpbC5jb24wMi0wNi0xNiAwNTowNDo0Ng==','2016-06-02 06:04:46',0,'Gerardojalmeida@hotmail.con','Gerardojalmeida@hotmail.con','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(58,46,'R2VyYXJkbyBqb3NlIGFsbWVpZGEgT3ZhbGxlc1YtMTY2ODA5NDRHZXJhcmRvamFsbWVpZGFAaG90bWFpbC5jb20wMi0wNi0xNiAwNTowOToyNQ==','2016-06-02 06:09:25',0,'Gerardojalmeida@hotmail.com','Gerardojalmeida@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(59,46,'R2VyYXJkbyBqb3NlIGFsbWVpZGEgT3ZhbGxlc1YtMTY2ODA5NDRHZXJhcmRvamFsbWVpZGFAaG90bWFpbC5jb20wMi0wNi0xNiAwNToxMTo1MQ==','2016-06-02 06:11:51',0,'Gerardojalmeida@hotmail.com','Gerardojalmeida@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(60,46,'R2VyYXJkbyBqb3NlIGFsbWVpZGEgT3ZhbGxlc1YtMTY2ODA5NDRHZXJhcmRvamFsbWVpZGFAaG90bWFpbC5jb20wMi0wNi0xNiAwNToxODoyMQ==','2016-06-02 06:18:21',0,'Gerardojalmeida@hotmail.com','Gerardojalmeida@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(61,24,'WWhpdHpyYW5kZXIgc2VxdWVyYVYtMTM5OTA1NDAzeWhpdHphbmRlcnNlcXVlcmFAZ21haWwuY29tMDItMDYtMTYgMTE6Mjk6MDI=','2016-06-02 12:29:02',1,'yhitzandersequera@gmail.com','yhitzandersequera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(62,47,'T1BFTUFMSSBHQVJBSkVWLTEyNjMwOTc1NW9wZW1hbGlfZ3J1YXNAaG90bWFpbC5jb20wMi0wNi0xNiAxMjoyMTowMg==','2016-06-02 13:21:02',0,'opemali_gruas@hotmail.com','opemali_gruas@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(63,48,'T1BFTUFMSSBHQVJBSkVWLTEyNjMwOTc1LTVvcGVtYWxpX2dydWFzQGhvdG1haWwuY29tMDItMDYtMTYgMTI6MjQ6NTk=','2016-06-02 13:24:59',0,'opemali_gruas@hotmail.com','opemali_gruas@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(64,33,'Sm9zZSBnYXJjaWFWLTE4NjcxODY3Sm9zZWdhcmNpYTczNzdAaG90bWFpbC5jb20wMi0wNi0xNiAxMjoyNToyNA==','2016-06-02 13:25:24',0,'Josegarcia7377@hotmail.com','Josegarcia7377@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(65,49,'TklMQ0FSMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDEyOjI3OjU5','2016-06-02 13:27:59',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(66,49,'TklMQ0FSMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDEyOjMxOjI5','2016-06-02 13:31:29',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(67,50,'QWxiZXJ0byBsb3BlelYtMTk1OTA1NjAtMkFsYmVydG9sb3BlejE4OUBob3RtYWlsLmNvbTAyLTA2LTE2IDEyOjQyOjI3','2016-06-02 13:42:27',0,'Albertolopez189@hotmail.com','Albertolopez189@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(68,51,'TklMQ0FSMjAxNSxDLkEuVi0xNTU4MDYzMHBhcmFkYXMyNTEwQGhvdG1haWwuY28wMi0wNi0xNiAxMjo0NDoxMw==','2016-06-02 13:44:13',0,'paradas2510@hotmail.co','paradas2510@hotmail.co','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(69,52,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3Q2FsZTI5NzVAZ21haWwuY29tMDItMDYtMTYgMTI6NTE6MzE=','2016-06-02 13:51:31',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(70,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wMi0wNi0xNiAxMjo1NTozMw==','2016-06-02 13:55:33',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(71,54,'SGVjdG9yIElydW1iYVYtMTM5NjIxODktOGFyaXNpcnVtYmFAZ21haWwuY29tMDItMDYtMTYgMTI6NTU6NDM=','2016-06-02 13:55:43',0,'arisirumba@gmail.com','arisirumba@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(72,52,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3Q2FsZTI5NzVAR21haWwuY29tMDItMDYtMTYgMTI6NTk6MTg=','2016-06-02 13:59:18',0,'Cale2975@Gmail.com','Cale2975@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(73,55,'SmhvbmF0aGFuIGRpYXpWLTE0NDE3ODg5SmhvbmF0aGFuXzE0MTdAaG90bWFpbC5jb20wMi0wNi0xNiAwMTowMDozOA==','2016-06-02 14:00:38',0,'Jhonathan_1417@hotmail.com','Jhonathan_1417@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(74,56,'dHJhbnNwb3J0ZSB5IG1hbnRlbmltaWVudG9zIGdsb2JhbCBDLkFKLTQwNDIzNzg3OXRyYW5zcG9ydGV5bXR0b2dsb2JhbEBnbWFpbC5jb20wMi0wNi0xNiAwMTowNjoxNg==','2016-06-02 14:06:16',0,'transporteymttoglobal@gmail.com','transporteymttoglobal@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(75,18,'YWxleGlzIGdvbnphbGV6Vi00MDY0NjIwbHVpc2dvbnphbGV6c3VhcmV6MDAxODFAZ21haWwuY29tMDItMDYtMTYgMDE6MDc6Mjk=','2016-06-02 14:07:29',0,'luisgonzalezsuarez00181@gmail.com','luisgonzalezsuarez00181@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(76,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wMi0wNi0xNiAwMToxMDoyNA==','2016-06-02 14:10:24',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(77,57,'c2VydmlncnVhcyBBbcOpcmljYW4gdHJ1Y2tWLTEzNzkwNTAxNWJldG84NTU0QGdtYWlsLmNvbTAyLTA2LTE2IDAxOjEyOjMx','2016-06-02 14:12:31',0,'beto8554@gmail.com','beto8554@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(78,58,'R1JVQVMgViZCVi12LTAzNDQyNzY1LXNhbHZhZG9ydmVnYXNfMDlAaG90bWFpbC5jb20wMi0wNi0xNiAwMToxMzo0Mg==','2016-06-02 14:13:42',0,'salvadorvegas_09@hotmail.com','salvadorvegas_09@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(79,59,'RW1pbGlpIGVzY2FsYW50ZVYtMTk1MjQ3MzMtOEVsZ29yZG9jYXJzQGhvdG1haWwuY29tMDItMDYtMTYgMDE6MTQ6MzI=','2016-06-02 14:14:32',0,'Elgordocars@hotmail.com','Elgordocars@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(80,60,'R1JVQVMgViZCVi0wMzQ0Mjc2NS00c2FsdmFkb3J2ZWdhc18wOUBob3RtYWlsLmNvbTAyLTA2LTE2IDAxOjIwOjU2','2016-06-02 14:20:56',0,'salvadorvegas_09@hotmail.com','salvadorvegas_09@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(81,60,'R1JVQVMgViZCVi0wMzQ0Mjc2NS00c2FsdmFkb3J2ZWdhc18wOUBob3RtYWlsLmNvbTAyLTA2LTE2IDAxOjIzOjIz','2016-06-02 14:23:23',0,'salvadorvegas_09@hotmail.com','salvadorvegas_09@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(82,61,'VFJBTlNQT1JURSBHVVZFSVJBVi1KLTI5NTYyNjY5LUpKSEVSTkFOREVaVE9SUkVBTEJBQGdtYWlsLmNvbTAyLTA2LTE2IDAxOjI1OjE0','2016-06-02 14:25:14',0,'JJHERNANDEZTORREALBA@gmail.com','JJHERNANDEZTORREALBA@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(83,28,'TWlndWVsIEJyYXZvVi05NTE5OTg3LTVlbF92YXF1ZXJvXzIwMDNAaG90bWFpbC5jb20wMi0wNi0xNiAwMToyNzo1NA==','2016-06-02 14:27:54',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(84,28,'TWlndWVsIEJyYXZvVi05NTE5OTg3LTVlbF92YXF1ZXJvXzIwMDNAaG90bWFpbC5jb20wMi0wNi0xNiAwMTozMTo0MA==','2016-06-02 14:31:40',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(85,62,'R3J1YXMgTG9zIEFuZ2VsZXMgUy5SLkwuSi0zMDk1MDM3MC03Z3J1YXNfbG9zX2FuZ2VsZXNAaG90bWFpbC5jb20wMi0wNi0xNiAwMTozNDozNA==','2016-06-02 14:34:34',0,'gruas_los_angeles@hotmail.com','gruas_los_angeles@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(86,27,'TWlndWVsIEJyYXZvVi0wOTUxOTk4Ny01ZWxfdmFxdWVyb18yMDAzQGhvdG1haWwuY29tMDItMDYtMTYgMDE6MzU6NDg=','2016-06-02 14:35:48',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(87,63,'bXVsdGlzZXJ2aWNpb3MgNG0gYy5hSi00MDcyNDQzNjFtdWx0aXNlcnZpY2lvczRtQGdtYWlsLmNvbTAyLTA2LTE2IDAxOjM3OjI2','2016-06-02 14:37:26',0,'multiservicios4m@gmail.com','multiservicios4m@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(88,48,'T1BFTUFMSSBHQVJBSkVWLTEyNjMwOTc1LTVvcGVtYWxpX2dydWFzQGhvdG1haWwuY29tMDItMDYtMTYgMDE6NDA6NTk=','2016-06-02 14:40:59',0,'opemali_gruas@hotmail.com','opemali_gruas@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(89,60,'R1JVQVMgViZCVi0wMzQ0Mjc2NS00c2FsdmFkb3J2ZWdhc18wOUBob3RtYWlsLmNvbTAyLTA2LTE2IDAxOjQxOjIz','2016-06-02 14:41:23',0,'salvadorvegas_09@hotmail.com','salvadorvegas_09@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(90,63,'bXVsdGlzZXJ2aWNpb3MgNG0gYy5hSi00MDcyNDQzNjFtdWx0aXNlcnZpY2lvczRtLmNhQGdtYWlsLmNvbTAyLTA2LTE2IDAxOjQyOjQz','2016-06-02 14:42:43',1,'multiservicios4m.ca@gmail.com','multiservicios4m.ca@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(91,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwc2VydmlncnVhc251ZXZvc2lnbG94eGlAaG90bWFpbC5jb20wMi0wNi0xNiAwMTo0NDowMA==','2016-06-02 14:44:00',0,'servigruasnuevosigloxxi@hotmail.com','servigruasnuevosigloxxi@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(92,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwc2VydmlncnVhc251ZXZvc2lnbG94eGlAaG90bWFpbC5jb20wMi0wNi0xNiAwMTo0ODowOA==','2016-06-02 14:48:08',0,'servigruasnuevosigloxxi@hotmail.com','servigruasnuevosigloxxi@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(93,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwc2VydmlncnVhc251ZXZvc2lnbG94eGlAaG90bWFpbC5jb20wMi0wNi0xNiAwMTo1MzoyOQ==','2016-06-02 14:53:29',0,'servigruasnuevosigloxxi@hotmail.com','servigruasnuevosigloxxi@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(94,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwc2VydmlncnVhc251ZXZvc2lnbG94eGlAaG90bWFpbC5jb20wMi0wNi0xNiAwMTo1NDoxNw==','2016-06-02 14:54:17',0,'servigruasnuevosigloxxi@hotmail.com','servigruasnuevosigloxxi@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(95,64,'amVzdXMgaGVybmFuZGV6Vi0xNTc5MDIyOWplc3Vzcmhlcm5hbmRlem1AaG90bWFpbC5jb20wMi0wNi0xNiAwMTo1OTo1Mw==','2016-06-02 14:59:53',0,'jesusrhernandezm@hotmail.com','jesusrhernandezm@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(96,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwZmFubnlfMzk4QGhvdG1haWwuY29tMDItMDYtMTYgMDI6MDA6MDE=','2016-06-02 15:00:01',0,'fanny_398@hotmail.com','fanny_398@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(97,65,'b3N3YWxkbyBqb3PDqSBtYXJ0aW5lelYtMTg5MjIzNDQtM29tYXJ0aW5lenBlcmV6LjE5ODdAZ21haWwuY29tMDItMDYtMTYgMDI6MDY6NDE=','2016-06-02 15:06:41',0,'omartinezperez.1987@gmail.com','omartinezperez.1987@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(98,18,'QWxleGlzIEdvbnphbGV6Vi00MDY0NjIwbHVpc2dvbnphbGV6c3VhcmV6MDAxODFAZ21haWwuY29tMDItMDYtMTYgMDI6MDc6MzI=','2016-06-02 15:07:32',0,'luisgonzalezsuarez00181@gmail.com','luisgonzalezsuarez00181@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(99,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wMi0wNi0xNiAwMjoxMDo0OQ==','2016-06-02 15:10:49',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(100,66,'c2F1bFYtMTQwNDY1NzBzYXVsc2NfQEhvdG1haWwuY29tMDItMDYtMTYgMDI6MTM6NDk=','2016-06-02 15:13:49',0,'saulsc_@Hotmail.com','saulsc_@Hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(101,49,'TklMQ0FSMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDAyOjE0OjA3','2016-06-02 15:14:07',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(102,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wMi0wNi0xNiAwMjoxOTo1MQ==','2016-06-02 15:19:51',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(103,49,'TklMQ0FSMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDAyOjI1OjE3','2016-06-02 15:25:17',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(104,67,'UG9saWdydWEjNzE0Y2FyYWJvYm9WLTE5NDExMzk1RWxndWF2aV8xNkBob3RtYWlsLmNvbTAyLTA2LTE2IDAyOjMyOjQ4','2016-06-02 15:32:48',0,'Elguavi_16@hotmail.com','Elguavi_16@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(105,60,'R1JVQVMgViZCVi0wMzQ0Mjc2NS00c2FsdmFkb3J2ZWdhc18wOUBob3RtYWlsLmNvbTAyLTA2LTE2IDAyOjQ4OjUx','2016-06-02 15:48:51',0,'salvadorvegas_09@hotmail.com','salvadorvegas_09@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(106,68,'T3NtYXJsaW4gSm9zZSBHdXRpZXJyZXogR2FyY2lhVi05OTY5MjQ1bWFnZ3k4NDU4MDQ3QGhvdG1haWwuY29tMDItMDYtMTYgMDI6NTI6NTc=','2016-06-02 15:52:57',0,'maggy8458047@hotmail.com','maggy8458047@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(107,68,'T3NtYXJsaW4gSm9zZSBHdXRpZXJyZXogR2FyY2lhVi05OTY5MjQ1bWFnZ3k4NDU4MDQ3QGhvdG1haWwuY29tMDItMDYtMTYgMDI6NTk6MTc=','2016-06-02 15:59:17',0,'maggy8458047@hotmail.com','maggy8458047@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(108,69,'TXVsdGlzZXJ2aWNpb3MgZWwgQnVxdWUsIEMuQS5WLWotNDA2MTgzOTQ2c2FuY2hlczc3NzdAaG90bWFpbC5jb20wMi0wNi0xNiAwMzowMDoyMw==','2016-06-02 16:00:23',0,'sanches7777@hotmail.com','sanches7777@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(109,70,'ZWRpY3NvbiBmbG9yZXNWLTcxNDQ5ODRlZGljc29uMjAwMEBnbWFpbC5jb20wMi0wNi0xNiAwMzowMzo0NA==','2016-06-02 16:03:44',0,'edicson2000@gmail.com','edicson2000@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(110,54,'SGVjdG9yIElydW1iYVYtMTM5NjIxODktOGFyaXNpcnVtYmFAZ21haWwuY29tMDItMDYtMTYgMDM6MTA6MzQ=','2016-06-02 16:10:34',0,'arisirumba@gmail.com','arisirumba@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(111,69,'TXVsdGlzZXJ2aWNpb3MgRWwgQnVxdWUsIEMuQS5WLWotNDA2MTgzOTQ2c2FuY2hlczc3NzdAaG90bWFpbC5jb20wMi0wNi0xNiAwMzoxODozNw==','2016-06-02 16:18:37',0,'sanches7777@hotmail.com','sanches7777@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(112,71,'QW5kcmVzIGNhbWVyb25WLTIwODU5Nzk5QW5kcmVzX2NhbWVyb24xMTFAaG90bWFpbC5jb20wMi0wNi0xNiAwMzoyNDowMg==','2016-06-02 16:24:02',0,'Andres_cameron111@hotmail.com','Andres_cameron111@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(113,49,'TklMQ0FSMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDAzOjI0OjEx','2016-06-02 16:24:11',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(114,31,'Tml4b24gb3N1bmFWLTE2NzQxNjgxU2VydmlncnVhc2VsbW9jaG9AeWFob28uY29tMDItMDYtMTYgMDM6MjQ6Mjc=','2016-06-02 16:24:27',0,'Servigruaselmocho@yahoo.com','Servigruaselmocho@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(115,72,'UmV5a2FyIFJvZHJpcXVlelYtMTY1MjE0NjBzYW5jaGVzNzc3N0Bob3RtYWlsLmNvbTAyLTA2LTE2IDAzOjI1OjI2','2016-06-02 16:25:26',0,'sanches7777@hotmail.com','sanches7777@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(116,31,'Tml4b24gb3N1bmFWLTE2NzQxNjgxU2VydmlncnVhc2VsbW9jaG9AeWFob28uY29tMDItMDYtMTYgMDM6Mjc6NDQ=','2016-06-02 16:27:44',0,'Servigruaselmocho@yahoo.com','Servigruaselmocho@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(117,49,'TmlsY2FyMjAxNSxDLkEuSi00MDU4NjUyMDJwYXJhZGFzMjUxMEBob3RtYWlsLmNvbTAyLTA2LTE2IDAzOjMxOjUw','2016-06-02 16:31:50',0,'paradas2510@hotmail.com','paradas2510@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(118,28,'TWlndWVsIGJyYXZvVi05NTE5OTg3LTVlbF92YXF1ZXJvXzIwMDNAaG90bWFpbC5jb20wMi0wNi0xNiAwMzo0MToyOA==','2016-06-02 16:41:28',0,'el_vaquero_2003@hotmail.com','el_vaquero_2003@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(119,71,'QW5kcmVzIGNhbWVyb25WLTIwODU5Nzk5QW5kcmVhY2FtZXJvbjExMTFAZ21haWwuY29tMDItMDYtMTYgMDM6NDk6MDQ=','2016-06-02 16:49:04',0,'Andreacameron1111@gmail.com','Andreacameron1111@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(120,28,'TWlndWVsIGJyYXZvVi05NTE5OTg3LTVtYjQyMjY1NUBnbWFpbC5jb20wMi0wNi0xNiAwMzo1NDozNQ==','2016-06-02 16:54:35',0,'mb422655@gmail.com','mb422655@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(121,73,'amVhbiBDYXJsb3MgZ3V0aWVycmV6Vi0yMDUzOTMxMmdqZWFuMDVjYXJsb3MwN0BnbWFpbC5jb20wMi0wNi0xNiAwMzo1NjoyNg==','2016-06-02 16:56:26',0,'gjean05carlos07@gmail.com','gjean05carlos07@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(122,28,'TWlndWVsIGJyYXZvVi05NTE5OTg3LTVtYjQyMjY1NUBnbWFpbC5jb20wMi0wNi0xNiAwMzo1NzowOA==','2016-06-02 16:57:08',0,'mb422655@gmail.com','mb422655@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(123,74,'c2VydmlncnVhcyBqb2FsdmVyVi0xNDQ4MDg0MTZlbHJyYWthdGFAZ21haWwuY29tMDItMDYtMTYgMDM6NTk6MDg=','2016-06-02 16:59:08',0,'elrrakata@gmail.com','elrrakata@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(124,74,'am9hbHZlclYtMTQ0ODA4NDE2ZWxycmFrYXRhQGdtYWlsLmNvbTAyLTA2LTE2IDA0OjIxOjE5','2016-06-02 17:21:19',0,'elrrakata@gmail.com','elrrakata@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(125,71,'QW5kcmVzIGNhbWVyb25WLTIwODU5Nzk5QW5kcmVhY2FtZXJvbjExMTFAZ21haWwuY29tMDItMDYtMTYgMDU6MDk6MDk=','2016-06-02 18:09:09',0,'Andreacameron1111@gmail.com','Andreacameron1111@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(126,28,'TWlndWVsIGJyYXZvVi05NTE5OTg3LTVtYjQyMjY1NUBnbWFpbC5jb20wMi0wNi0xNiAwNToyMjo1Nw==','2016-06-02 18:22:57',0,'mb422655@gmail.com','mb422655@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(127,75,'TGVvbmFyZG8gY2FycmFzY29WLVYxMjQzMjI5N0NhbGUyOTc1QGdtYWlsLmNvbTAzLTA2LTE2IDEyOjIxOjE0','2016-06-03 13:21:14',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(128,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wMy0wNi0xNiAwMjowMzoyMg==','2016-06-03 15:03:22',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(129,76,'am9zZSBoZXJuYW5kZXogcm9qbyBxVi0xNDA2MDU2NiA5cWNoZW9AaG90bWFpbC5jb20wMy0wNi0xNiAwNToyMToxMg==','2016-06-03 18:21:12',0,'qcheo@hotmail.com','qcheo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(130,77,'am9zZSBoZXJuYW5kZXogcm9qbyBxVi0xNDA2MDU2NjlxY2hlb0Bob3RtYWlsLmNvbTAzLTA2LTE2IDA1OjI0OjU0','2016-06-03 18:24:54',0,'qcheo@hotmail.com','qcheo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(131,28,'TWlndWVsIGJyYXZvVi05NTE5OTg3LTVtYjQyMjY1NUBnbWFpbC5jb20wMy0wNi0xNiAwOTo1ODo0MQ==','2016-06-03 22:58:41',0,'mb422655@gmail.com','mb422655@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(132,78,'UmF1bCBzZWdvdmlhVi1WLTE0NDM4MDUyMVJhdWxpdG9zZWdvdmlhQGhvdG1haWwuY29tMDQtMDYtMTYgMDI6MTI6MjM=','2016-06-04 03:12:23',0,'Raulitosegovia@hotmail.com','Raulitosegovia@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(133,79,'TGVvbmFyZG8gY2FycmFzY29WLVYtMTI0MzIyOTc1Q2FsZTI5NzVAZ21haWwuY29tMDYtMDYtMTYgMTE6NTE6MTQ=','2016-06-06 12:51:14',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(134,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlMjk3NUBnbWFpbC5jb20wOC0wNi0xNiAwNzo0MTozOA==','2016-06-08 20:41:31',0,'cale2975@gmail.com','cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(135,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlMjk3NUBnbWFpbC5jb20wOS0wNi0xNiAwMjo0MzoyOA==','2016-06-09 03:43:26',0,'cale2975@gmail.com','cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(136,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVsZW9fYW50b25pbzI5N0Bob3RtYWlsLmNvbTA5LTA2LTE2IDAzOjI4OjU5','2016-06-09 04:28:59',0,'leo_antonio297@hotmail.com','leo_antonio297@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(137,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlMjk3NUBnbWFpbC5jb20wOS0wNi0xNiAwMzo1MTo1MA==','2016-06-09 04:51:50',0,'cale2975@gmail.com','cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(138,53,'TGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVDYWxlMjk3NUBnbWFpbC5jb20wOS0wNi0xNiAwNDowMDozNQ==','2016-06-09 05:00:35',0,'Cale2975@gmail.com','Cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(139,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlMjk3NUBnbWFpbC5jb20wOS0wNi0xNiAwMjo1NjoyNg==','2016-06-09 15:56:26',0,'cale2975@gmail.com','cale2975@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(140,80,'c2F1bFYtMTQwNDY1NzAtMHNhdWxzY19AaG90bWFpbC5jb20xMC0wNi0xNiAxMjoxODoxMA==','2016-06-10 01:18:10',0,'saulsc_@hotmail.com','saulsc_@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(141,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlQGdtYWlsLmNvbTEwLTA2LTE2IDA4OjA2OjM0','2016-06-10 21:06:33',0,'cale@gmail.com','cale@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(142,53,'bGVvbmFyZG8gY2FycmFzY29WLTEyNDMyMjk3LTVjYWxlQGdtYWlsLmNvbTEwLTA2LTE2IDA4OjE3OjM3','2016-06-10 21:17:37',0,'cale@gmail.com','cale@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(143,5,'UGFuZmlsb1YtMTk5MDEwNjhHb2Nob3NhbmFicmlhQGdtYWlsLmNvbTEzLTA2LTE2IDA4OjE4OjEw','2016-06-13 21:18:05',0,'Gochosanabria@gmail.com','Gochosanabria@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(144,5,'UGFuZmlsb1YtMTk5MDEwNjhHb2Nob3NhbmFicmlhQGdtYWlsLmNvbTEzLTA2LTE2IDA4OjMzOjQ4','2016-06-13 21:33:48',0,'Gochosanabria@gmail.com','Gochosanabria@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(145,81,'b3JsYW5kbyBwZXJlelYtMTU3NzY1NzFvcmxhbmRvam9zZXBlcmV6QEdtYWlsLmNvbTE1LTA2LTE2IDEyOjE4OjI3','2016-06-15 13:18:26',0,'orlandojoseperez@Gmail.com','orlandojoseperez@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(146,82,'dHJhbnNwb3J0ZSB3aWxzb24gMjU4NCBjLmEuVi1qLTQwNjY5MTM0OHRyYW5zcG9ydGV3aWxzb24yNTg0QGdtYWlsLmNvbTE1LTA2LTE2IDEwOjQ5OjQ3','2016-06-15 23:49:47',0,'transportewilson2584@gmail.com','transportewilson2584@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(147,83,'U0VSVklHUlVBUyBQScORQU5HT1YtMTMyMjg1MzJkanBpbmFuZ29AZ21haWwuY29tMTgtMDYtMTYgMTE6MDA6MzA=','2016-06-19 00:00:29',0,'djpinango@gmail.com','djpinango@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(148,84,'TWFyY29zVi0xODAyMDU5NGRlYW5kcmFkZW1hcmNvc0BnbWFpbC5jb20yNi0wNi0xNiAwMjo0ODozNQ==','2016-06-26 15:48:35',0,'deandrademarcos@gmail.com','deandrademarcos@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(149,85,'bWFyY29zVi0xODAyMDU5MGRlYW5kcmFkZW1hcmNvc0BnbWFpbC5jb20yNi0wNi0xNiAwNDoxMzowOA==','2016-06-26 17:13:08',0,'deandrademarcos@gmail.com','deandrademarcos@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(150,85,'TUFSQ09TVi0xODAyMDU5MGRlYW5kcmFkZW1hcmNvc0BnbWFpbC5jb20yNi0wNi0xNiAwNDo1MToyMQ==','2016-06-26 17:51:21',1,'deandrademarcos@gmail.com','deandrademarcos@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(151,86,'VHJhbnNwb3J0ZXMgeSBzZXJ2aWNpbyBlbCBhcmNhIGRlIG5vZSBjLmFKLTQwNTMyMzA0M0ludHJhX2FyY2Ffbm9lQG91dGxvb2suY29tMTItMDctMTYgMDE6MTU6MTE=','2016-07-12 14:15:11',0,'Intra_arca_noe@outlook.com','Intra_arca_noe@outlook.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(152,87,'UGVkcm8gY29sbWVuYXJlelYtMjEwNTQ4NjA5cGVkcm9jb2wxOTkwQGhvbWFpbC5jb20xNi0wNy0xNiAxMDoxMDowNA==','2016-07-16 23:10:04',0,'pedrocol1990@homail.com','pedrocol1990@homail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(153,88,'Qm9yaXMgQmF1dGlzdGFWLTA5NDYyNjczYm9yaXM2OEBob3RtYWlsLmNvbTIxLTA3LTE2IDEyOjQwOjU5','2016-07-21 01:40:59',0,'boris68@hotmail.com','boris68@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(154,88,'Qm9yaXMgQmF1dGlzdGFWLTA5NDYyNjczYm9yaXM2OEBob3RtYWlsLmNvbTIxLTA3LTE2IDAyOjAwOjE5','2016-07-21 03:00:19',1,'boris68@hotmail.com','boris68@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(155,89,'SGVjdG9yIFJvc2FzVi0xODg4NTczMmhlY3Rvcl9yb3NhczY2QGhvdG1haWwuY29tMjItMDctMTYgMDI6NDY6MTY=','2016-07-22 15:46:16',0,'hector_rosas66@hotmail.com','hector_rosas66@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(156,90,'RmVybmFuZG8gYmxhbmNvVi0xNjg2OTcwNWZlcmplbTk5QGhvdG1haWwuY29tMjUtMDctMTYgMDc6MTc6NDU=','2016-07-25 20:17:45',0,'ferjem99@hotmail.com','ferjem99@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(157,91,'UmljaGFyZCBVcmliZVYtMTUxNTYwMTRyaWNoYXJkX29ybGFuZG91cmliZUBob3RtYWlsLmNvbTMwLTA3LTE2IDA5OjQ5OjA4','2016-07-30 22:49:08',0,'richard_orlandouribe@hotmail.com','richard_orlandouribe@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(158,92,'TXVsdGlzZXZpY2lvIGF1dG9tb3RyaXogcml2aSBjLmFKLTQwMTA1ODg2LThSaWNoYXJkX29ybGFuZG91cmliZUBob3RtYWlsLmNvbTMxLTA3LTE2IDAzOjU4OjE3','2016-07-31 16:58:17',1,'Richard_orlandouribe@hotmail.com','Richard_orlandouribe@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(159,93,'Um9zYWxlc0dydWFzIHkgTXVsdGlzZXJ2aWNpb3MgZi5wVi0xNzI2NzkxNi04Z2VyYXJzbGFAaG90bWFpbC5jb20wMi0wOC0xNiAwMzo0OToyOQ==','2016-08-02 16:49:29',0,'gerarsla@hotmail.com','gerarsla@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(160,94,'Sm9zw6kgUMOpcmV6Vi05MDI4NTA2am9zZXBlcmV6cmF1bEBnbWFpbC5jb20wNi0wOC0xNiAxMDozOTo0Mg==','2016-08-06 23:39:42',0,'joseperezraul@gmail.com','joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(161,94,'Sm9zw6kgUMOpcmV6Vi05MDI4NTA2am9zZXBlcmV6cmF1bEBnbWFpbC5jb20wNi0wOC0xNiAxMDo0MjowMw==','2016-08-06 23:42:03',0,'joseperezraul@gmail.com','joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(162,95,'Sm9zw6kgUMOpcmV6Vi1WLSA5MDI4NTA2am9zZXBlcmV6cmF1bEBnbWFpbC5jb20wNi0wOC0xNiAxMDo0NDowNw==','2016-08-06 23:44:07',0,'joseperezraul@gmail.com','joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(163,94,'Sm9zw6kgUMOpcmV6Vi05MDI4NTA2am9zZXBlcmV6cmF1bEBnbWFpbC5jb20wNi0wOC0xNiAxMDo0ODo0Mw==','2016-08-06 23:48:43',0,'joseperezraul@gmail.com','joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(164,94,'Sm9zw6kgUMOpcmV6Vi05MDI4NTA2am9zZXBlcmV6cmF1bEBnbWFpbC5jb20wNi0wOC0xNiAxMDo1MDoyMw==','2016-08-06 23:50:23',0,'joseperezraul@gmail.com','joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(165,96,'YWxmcmVkeXMgc2FuY2hlelYtMTg2Mjk3NzFhbGZyZWQ3ODdAaG90bWFpbC5jb20xMS0wOC0xNiAwMjo0ODoyNA==','2016-08-11 03:48:24',0,'alfred787@hotmail.com','alfred787@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(166,53,'TGVvbmFyZG8gQ2FycmFzY29WLTEyNDMyMjk3LTVMZW9fYW50b25pbzI5N0Bob3RtYWlsLmNvbTEzLTA4LTE2IDEyOjI5OjU1','2016-08-13 01:29:55',0,'Leo_antonio297@hotmail.com','Leo_antonio297@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(167,97,'amVzdXMgaGVybmFuZGV6Vi0xNTc5MDIyOS0yamVzdXNyaGVybmFuZGV6bUBob3RtYWlsLmNvbTEzLTA4LTE2IDA5OjA3OjU1','2016-08-13 22:07:55',0,'jesusrhernandezm@hotmail.com','jesusrhernandezm@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(168,98,'RnJhbmNpc2NvIEphdmllciBBcmFxdWUgRXNjYWxvbmFWLTE3MjM5ODE1amF2aWVyMjk2N0Bob3RtYWlsLmNvbTEzLTA4LTE2IDExOjMzOjM0','2016-08-14 00:33:34',0,'javier2967@hotmail.com','javier2967@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(169,99,'YW50aG9ueSBwZXJlelYtMTg5MjE5OTY5YW50aG9ueTE4OTIxOTk2QEdtYWlsLmNvbTE2LTA4LTE2IDAyOjI0OjQy','2016-08-16 15:24:42',0,'anthony18921996@Gmail.com','anthony18921996@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(170,100,'ZWRnYXIgc2lsdmFWLTE3NTg4Njg5ZWFsZWphbmRybzhAaG90bWFpbC5jb20xNy0wOC0xNiAwNDo1OTo1Nw==','2016-08-17 17:59:57',0,'ealejandro8@hotmail.com','ealejandro8@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(171,101,'T1JJRU5UQUwgSU5WRVJTSU9ORVMsIEMuQUotNDAzNDkxMjgtM29yaWVudGFsaW52ZXJzaW9uZXNAb3V0bG9vay5jb20yNi0wOC0xNiAxMTo1MDoyMA==','2016-08-27 00:50:20',0,'orientalinversiones@outlook.com','orientalinversiones@outlook.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(172,102,'bXVsdGlzZXJ2aWNpb3Mgcm9zbWVyVi0xMzk3MTI0N184cm9zbWVyX3Jvc2VuZG8yMUBob3RtYWlsLmNvbTI3LTA4LTE2IDEyOjM2OjEw','2016-08-27 01:36:10',1,'rosmer_rosendo21@hotmail.com','rosmer_rosendo21@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(173,103,'aXZhbiBjYW1wb3NWLTExMDEyODAwaXZhbmNhbXBvc0BnbWFpbC5jb20wMi0wOS0xNiAwNToxNzo1Mw==','2016-09-02 18:17:53',0,'ivancampos@gmail.com','ivancampos@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(174,104,'Y2lybyBzYWxhemFyVi0yMDI3NTI1OXNlcnZpZ3J1YXNsYXp1bGlhbml0YUBob3RtYWlsLmNvbTAyLTA5LTE2IDA2OjUxOjMz','2016-09-02 19:51:33',0,'servigruaslazulianita@hotmail.com','servigruaslazulianita@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(175,105,'U0VSVklHUlVBUyBMQSBaVUxJQU5JVEEsIEMuQUotNDAzODM3NDY1c2VydmlncnVhc2xhenVsaWFuaXRhQGhvdG1haWwuY29tMDMtMDktMTYgMDE6Mjc6NDQ=','2016-09-03 02:27:44',0,'servigruaslazulianita@hotmail.com','servigruaslazulianita@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(176,106,'Sm9zZSBRdWludGVyb1YtODY4OTQ2N2phcWFxdWludGVyb0BnbWFpbC5jb20wMy0wOS0xNiAxMDo0ODo1NQ==','2016-09-03 23:48:55',0,'jaqaquintero@gmail.com','jaqaquintero@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(177,107,'Uk9HRVIgQyBNT1JFTk9WLTA0OTE0ODg1LTlST0dFUkNFRkVSSU5PMTk1NUBHTUFJTC5DT00wNy0wOS0xNiAwMjowODoyNQ==','2016-09-07 03:08:25',0,'ROGERCEFERINO1955@GMAIL.COM','ROGERCEFERINO1955@GMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(178,108,'Uk9HRVIgQ0VGRVJJTk9WLTQ5MTQ4ODVST0dFUkNFRkVSSU5PMTk1NUBHTUFJTC5DT00wOC0wOS0xNiAwNzo0NTo0NQ==','2016-09-08 20:45:45',0,'ROGERCEFERINO1955@GMAIL.COM','ROGERCEFERINO1955@GMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(179,109,'THVpcyBBbGJlcnRvIEZlcnJlclYtOTk1NTU0MEFsYmVydG9sdWlzZmVycmVyQGhvdG1haWwuY29tMTAtMDktMTYgMDg6MTQ6Mzg=','2016-09-10 21:14:38',0,'Albertoluisferrer@hotmail.com','Albertoluisferrer@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(180,109,'THVpcyBBbGJlcnRvIEZlcnJlclYtOTk1NTU0MEFsYmVydG9sdWlzZmVycmVyQGhvdG1haWwuY29tMTAtMDktMTYgMDg6MTg6MTU=','2016-09-10 21:18:15',0,'Albertoluisferrer@hotmail.com','Albertoluisferrer@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(181,109,'THVpcyBBbGJlcnRvIEZlcnJlclYtOTk1NTU0MEFsYmVydG9sdWlzZmVycmVyQGhvdG1haWwuY29tMTAtMDktMTYgMDk6MjQ6MDA=','2016-09-10 22:24:00',0,'Albertoluisferrer@hotmail.com','Albertoluisferrer@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(182,109,'THVpcyBBbGJlcnRvIEZlcnJlclYtOTk1NTU0MEFsYmVydG9sdWlzZmVycmVyQGhvdG1haWwuY29tMTEtMDktMTYgMDE6NDA6MDc=','2016-09-11 14:40:07',0,'Albertoluisferrer@hotmail.com','Albertoluisferrer@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(183,109,'THVpcyBBbGJlcnRvIEZlcnJlclYtOTk1NTU0MEFsYmVydG9sdWlzZmVycmVyQGhvdG1haWwuY29tMTItMDktMTYgMTI6MDU6MjE=','2016-09-12 01:05:21',0,'Albertoluisferrer@hotmail.com','Albertoluisferrer@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(184,110,'Sm9zw6kgUmHDumwgUMOpcmV6Vi0wOTAyODUwNi00Sm9zZXBlcmV6cmF1bEBnbWFpbC5jb20xMy0wOS0xNiAxMjowODo0OA==','2016-09-13 01:08:48',0,'Joseperezraul@gmail.com','Joseperezraul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(185,111,'cmFtb24gbm9ndWVyYVYtODA4ODU4NGVuZGVyX25vZ3VlcmFfMjAxM0Bob3RtYWlsLmNvbTE4LTA5LTE2IDExOjQ2OjQ1','2016-09-19 00:46:45',0,'ender_noguera_2013@hotmail.com','ender_noguera_2013@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(186,112,'YXJnZW5pcyBhdmVuZGHDsW9WLTIzNTQyMzAxQXJnZW5pc2NvbnRyZXJhczIxMDNAaG90bWFpbC5jb20xOS0wOS0xNiAwMTowODo1MA==','2016-09-19 02:08:50',0,'Argeniscontreras2103@hotmail.com','Argeniscontreras2103@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(187,113,'YWxiZXJ0byByb3NlbmRvVi0xODQyMTczNGFsYmVydG8tcm9zZW5kbzIzQGhvdG1haWwuY29tMTktMDktMTYgMDg6NDA6Mzg=','2016-09-19 21:40:38',0,'alberto-rosendo23@hotmail.com','alberto-rosendo23@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(188,114,'U2VydmljaW9zIHkgVHJhbnNwb3J0ZSBTZXRyYWNhciBDQVYtajI5MzY2NjY1LTFzZXRyYWNhci4xQGdtYWlsLmNvbTIxLTA5LTE2IDAxOjEzOjQ4','2016-09-21 02:13:47',0,'setracar.1@gmail.com','setracar.1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(189,115,'U2VydmljaW9zIHkgVHJhbnNwb3J0ZSBTZXRyYWNhciBDQUotMjkzNjY2NjUtMXNldHJhY2FyLjFAZ21haWwuY29tMjEtMDktMTYgMDE6MTc6MDM=','2016-09-21 02:17:03',0,'setracar.1@gmail.com','setracar.1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(190,116,'c2VydmljaW9zIHkgdHJhbnNwb3J0ZSBzZXRyYWNhciBDLkFWLWoyOTM2NjY2NTFzZXRyYWNhci4xQGdtYWlsLmNvbTIxLTA5LTE2IDAzOjE0OjEx','2016-09-21 04:14:11',0,'setracar.1@gmail.com','setracar.1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(191,116,'c2VydmljaW9zIHkgdHJhbnNwb3J0ZSBzZXRyYWNhciBDLkFWLWoyOTM2NjY2NTFzZXRyYWNhci4xQGdtYWlsLmNvbTIxLTA5LTE2IDExOjAzOjQ3','2016-09-22 00:03:47',0,'setracar.1@gmail.com','setracar.1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(192,116,'U0VSVklDSU9TIFkgVFJBTlNQT1JURSBTRVRSQUNBUiBDLkFWLUoyOTM2NjY2NTFzZXRyYWNhci4xQGdtYWlsLmNvbTIzLTA5LTE2IDAxOjIyOjQw','2016-09-23 02:22:40',0,'setracar.1@gmail.com','setracar.1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(193,117,'SGVucnJ5IG9tYXIgZ3VlcnJlcm8gbWVkaW5hIG11bHRpc2VydmljaW9zIGhnVi0xMTk3NTA3NDhtdWx0aXNlcnZpY2lvc19oZ0Bob3RtYWlsLmNvbTI3LTA5LTE2IDExOjI2OjIz','2016-09-27 12:26:23',0,'multiservicios_hg@hotmail.com','multiservicios_hg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(194,118,'RG9taW5nbyBKb3PDqSBUaW5lb1YtMTM4NDgwMzRkb21pbmdvam9zZXRpbmVvQEdtYWlsLmNvbTI3LTA5LTE2IDEwOjU2OjQx','2016-09-27 23:56:41',0,'domingojosetineo@Gmail.com','domingojosetineo@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(195,119,'SkFSUlkgTU9SRU5PVi1WLTEzNjg2Njc1MEpBUlJZTU9SRU5PVkVSR0FSQUBHTUFJTC5DT00wMy0xMC0xNiAwNDozNDoyMw==','2016-10-03 17:34:23',0,'JARRYMORENOVERGARA@GMAIL.COM','JARRYMORENOVERGARA@GMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(196,120,'bHVpcyBhbGJlcnRvSi00MDUwNDMzNzdTRVJWSVNHUlVBU0pIT05PU09SSU9DQUBHTUFJTC5DT00xMS0xMC0xNiAwNDozNzowMw==','2016-10-11 17:37:03',0,'SERVISGRUASJHONOSORIOCA@GMAIL.COM','SERVISGRUASJHONOSORIOCA@GMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(197,121,'RXJ3aW4gY29saW5hVi0xNTU1ODk1MS0xRXNjdWRlcmlhXzE5ODNAaG90bWFpbC5jb20xOC0xMC0xNiAwNjoxMzoyOA==','2016-10-18 07:13:28',0,'Escuderia_1983@hotmail.com','Escuderia_1983@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(198,121,'RXJ3aW5WLTE1NTU4OTUxLTFFc2N1ZGVyaWFfMTk4M0Bob3RtYWlsLmNvbjE4LTEwLTE2IDA2OjE2OjM4','2016-10-18 07:16:38',0,'Escuderia_1983@hotmail.con','Escuderia_1983@hotmail.con','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(199,121,'RXJ3aW5WLTE1NTU4OTUxLTFFc2N1ZGVyaWFfMTk4M0Bob3RtYWlsLmNvbTE4LTEwLTE2IDA2OjE4OjQ3','2016-10-18 07:18:47',0,'Escuderia_1983@hotmail.com','Escuderia_1983@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(200,122,'R2VpZGVtYW4gTG9wZXpWLTExMjEzMDU0Z2VpZGVtYW5sQGhvdG1haWwuY29tMTgtMTAtMTYgMDk6MzI6NTU=','2016-10-18 22:32:55',0,'geidemanl@hotmail.com','geidemanl@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(201,123,'VHJhbnNwb3J0ZSBwaXZpamF5IEMuQVYtSjQwMDU2MjEyLTBUcmFuc3BpdmlqYXlAZ2VtYWlsLmNvbTIyLTEwLTE2IDA5OjMwOjU0','2016-10-22 22:30:54',0,'Transpivijay@gemail.com','Transpivijay@gemail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(202,124,'VHJhbnBvcnRlIHBpdmlqYXkgQy5BVi1KNDAwNTYyMTIwVHJhbnNwaXZpamF5QGdlbWFpbC5jb20yMi0xMC0xNiAwOTozNTozOA==','2016-10-22 22:35:38',0,'Transpivijay@gemail.com','Transpivijay@gemail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(203,125,'R3VzdGF2byBHdWFuaXBhVi0xNjk0OTAyOC0zZ3J1YXNndWFuaXBhQGhvdG1haWwuY29tMjMtMTAtMTYgMDk6MTI6MjI=','2016-10-23 10:12:22',0,'gruasguanipa@hotmail.com','gruasguanipa@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(204,125,'Z3VzdGF2byBndWFuaXBhVi0xNjk0OTAyOC0zZ3J1YXNndWFudXBhQGhvdG1haWwuY29tMjMtMTAtMTYgMDk6MTU6NDY=','2016-10-23 10:15:46',0,'gruasguanupa@hotmail.com','gruasguanupa@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(205,125,'R1VTVEFWTyBHVUFOSVBBVi0xNjk0OTAyOC0zZ3J1YXNndWFuaXBhQGhvdG1haWwuY29tMjMtMTAtMTYgMDk6MTc6MTk=','2016-10-23 10:17:19',0,'gruasguanipa@hotmail.com','gruasguanipa@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(206,126,'Z3J1YXMgZG9uIGlzaWRyb1YtdjE0NDM4Mzg0OWxhbmRlcl9zYWxjZWRvQGhvdG1haWwuY29tMjYtMTAtMTYgMTI6NTI6NTk=','2016-10-26 13:52:59',0,'lander_salcedo@hotmail.com','lander_salcedo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(207,127,'R3VzdGF2byBHdWFuaXBhVi0xNjk0OTAyOEdSVUFTR1VBTklQQUBIT1RNQUlMLkNPTTI2LTEwLTE2IDA1OjU2OjA3','2016-10-26 18:56:07',1,'GRUASGUANIPA@HOTMAIL.COM','GRUASGUANIPA@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(208,127,'R1VTVEFWTyBHVUFOSVBBVi0xNjk0OTAyOGdydWFzZ3VhbmlwYUBob3RtYWlsLmNvbTI2LTEwLTE2IDA2OjAyOjEw','2016-10-26 19:02:10',0,'gruasguanipa@hotmail.com','gruasguanipa@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(209,128,'RW5ncmlkIHBpbmVkYVYtMTQ3NTk0MzItOGVuZ3JpZGdAaG90bWFpbC5jb20yNy0xMC0xNiAwMzoxNzo1Mg==','2016-10-27 16:17:52',0,'engridg@hotmail.com','engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(210,128,'RW5ncmlkIFBpbmVkYVYtMTQ3NTk0MzItOEVuZ3JpZGdAaG90bWFpbC5jb20yNy0xMC0xNiAwMzozNDoxMA==','2016-10-27 16:34:10',0,'Engridg@hotmail.com','Engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(211,128,'RW5ncmlkIFBpbmVkYVYtMTQ3NTk0MzItOGVuZ3JpZGdAaG90bWFpbC5jb20yNy0xMC0xNiAwOTo0MTo1Mg==','2016-10-27 22:41:52',0,'engridg@hotmail.com','engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(212,128,'ZW5ncmlkIHBpbmVkYVYtMTQ3NTk0MzItOGVuZ3JpZGdAaG90bWFpbC5jb20yNy0xMC0xNiAwOTo0NDozMA==','2016-10-27 22:44:30',0,'engridg@hotmail.com','engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(213,129,'ZW5ncmlkIHBpbmVkYVYtMTQ3NTk0MzJlbmdyaWRnQGhvdG1haWwuY29tMjctMTAtMTYgMDk6NTg6MzU=','2016-10-27 22:58:35',0,'engridg@hotmail.com','engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(214,128,'ZW5ncmlkIHBpbmVkYVYtMTQ3NTk0MzItOGVuZ3JpZGdAaG90bWFpbC5jb20yNy0xMC0xNiAxMDowMDozNw==','2016-10-27 23:00:37',0,'engridg@hotmail.com','engridg@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(215,130,'SnVhbiBMZcOzblYtMTA2Nzk5ODlScWxsZW9uMUBnbWFpbC5jb20wMS0xMS0xNiAwODoyNDo1OA==','2016-11-01 21:24:58',0,'Rqlleon1@gmail.com','Rqlleon1@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(216,131,'SmVhbiBjYXJsb3MgYXJjaGlsYVYtMTM3MDgxMjVKZWFubHVpczEyMTRAZ21haWwuY29tMDYtMTEtMTYgMDg6NDU6Mzg=','2016-11-06 09:45:38',0,'Jeanluis1214@gmail.com','Jeanluis1214@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(217,131,'SmVhbiBjYXJsb3MgYXJjaGlsYVYtMTM3MDgxMjVKZWFubHVpczEyMTRAZ21haWwuY29uMDYtMTEtMTYgMDg6NDc6Mjc=','2016-11-06 09:47:27',0,'Jeanluis1214@gmail.con','Jeanluis1214@gmail.con','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(218,132,'SW52ZXJzaW9uZXMgQiZHIDYyIENBSi00MDMyNzIyMDRKb3NlZHVrZTYyQEdtYWlsLmNvbTA2LTExLTE2IDAxOjM0OjE2','2016-11-06 14:34:16',0,'Joseduke62@Gmail.com','Joseduke62@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(219,132,'SW52ZXJzaW9uZXMgQiZHIDYyIENBSi00MDMyNzIyMDRKb3NlZHVrZTYyQGdtYWlsLmNvbTA2LTExLTE2IDAxOjM3OjMx','2016-11-06 14:37:31',0,'Joseduke62@gmail.com','Joseduke62@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(220,132,'SW52ZXJzaW9uZXMgQiZHIDYyIENBSi00MDMyNzIyMDRKb3NlZHVrZTYyQGdtYWlsLmNvbTA2LTExLTE2IDAxOjQwOjEw','2016-11-06 14:40:10',0,'Joseduke62@gmail.com','Joseduke62@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(221,132,'SW52ZXJzaW9uZXMgQiZHIDYyIENBSi00MDMyNzIyMDRKb3NlZHVrZTYyQGdtYWlsLmNvbTA2LTExLTE2IDAxOjUxOjM4','2016-11-06 14:51:38',0,'Joseduke62@gmail.com','Joseduke62@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(222,133,'c2VydmljaW9zIHkgZ3LDumFzIE1lZGluYSBDLkEuSi00MDU2MTc4OC04c2VydmlncnVhc21lZGluYUBob3RtYWlsLmNvbTA3LTExLTE2IDEwOjU4OjMx','2016-11-07 11:58:31',0,'servigruasmedina@hotmail.com','servigruasmedina@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(223,133,'c2VydmljaW9zIHkgZ3LDumFzIG1lZGluYSBjLmFKLTQwNTYxNzg4LThzZXJ2aWdydWFzbWVkaW5hQGhvdG1haWwuY29tMDctMTEtMTYgMDI6MzI6NDk=','2016-11-07 15:32:49',0,'servigruasmedina@hotmail.com','servigruasmedina@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(224,134,'c2VydmljaW9zIHkgZ3J1YXMgbWVkaW5hIGMuYUotNDA1NjE3ODg4c2VydmlncnVhc21lZGluYUBob3RtYWlsLmNvbTA3LTExLTE2IDAyOjM5OjAw','2016-11-07 15:39:00',0,'servigruasmedina@hotmail.com','servigruasmedina@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(225,134,'U0VSVklDSU9TIFkgR1JVQVMgTUVESU5BIEMuQUotNDA1NjE3ODg4U0VSVklHUlVBU01FRElOQUBIT1RNQUlMLkNPTTA3LTExLTE2IDAyOjQzOjA5','2016-11-07 15:43:09',0,'SERVIGRUASMEDINA@HOTMAIL.COM','SERVIGRUASMEDINA@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(226,135,'U29uaWEgZGUgaGVybmFuZGV6Vi00NDc5MTY3Sm1oZXJuYW5kZXoxOEBob3RtYWlsLmNvbVkxMC0xMS0xNiAwNTo1NjozOA==','2016-11-10 18:56:38',0,'Jmhernandez18@hotmail.comY','Jmhernandez18@hotmail.comY','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(227,136,'T25lbGxhIE1lbnRhZG9WLTE5MjAzNTU5b25lbGxhbWVudGFkb0Bob3RtYWlsLmNvbTEwLTExLTE2IDA2OjAzOjQx','2016-11-10 19:03:41',1,'onellamentado@hotmail.com','onellamentado@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(228,137,'aGVjdG9yVi0xODIyMjExMGhlY3Rvci1fNTVAaG90bWFpbC5jb20xMC0xMS0xNiAwNjoyOTo0OA==','2016-11-10 19:29:48',0,'hector-_55@hotmail.com','hector-_55@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(229,137,'aGVjdG9yVi0xODIyMjExMGhlY3RvLV81NUBob3RtYWlsLmNvbTEwLTExLTE2IDA4OjI2OjA1','2016-11-10 21:26:05',0,'hecto-_55@hotmail.com','hecto-_55@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(230,138,'cGFvbG8gZmFsY29WLTEwMTA3OTM2LTRmYWxjb3BlcmV6XzIwMTNAaG90bWFpbC5jb20xMC0xMS0xNiAxMDo0OTowMw==','2016-11-10 23:49:03',0,'falcoperez_2013@hotmail.com','falcoperez_2013@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(231,139,'c2VydmlncnVhcyBsdWlzVi0xNjEyMzk2NHNlcnZpZ3J1YXNsdWlzQGdtYWlsLmNvbTEyLTExLTE2IDA5OjMxOjEz','2016-11-12 22:31:13',0,'servigruasluis@gmail.com','servigruasluis@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(232,140,'Sm9uYXRoYW4gSm9zw6kgcm9zYWxlcyBQw6lyZXpWLTE4NDIyMTM0am9uYXRoYW5qcnA5NjdrYWVAZ21haWwuY29tMTUtMTEtMTYgMDU6MDc6NDI=','2016-11-15 18:07:42',0,'jonathanjrp967kae@gmail.com','jonathanjrp967kae@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(233,140,'Sm9uYXRoYW4gam9zw6kgcm9zYWxlcyBQw6lyZXpWLTE4NDIyMTM0Sm9uYXRoYW5qcnA5NjdrYWVAR21haWwuY29tMTUtMTEtMTYgMDU6MTA6NTQ=','2016-11-15 18:10:54',0,'Jonathanjrp967kae@Gmail.com','Jonathanjrp967kae@Gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(234,141,'d2lsc29uIG1hcnRpbmV6Vi0xOTIwOTQwOXRyYW5zcG9ydGVzd2lsc29uMjU4NEBnbWFpbC5jb20xOC0xMS0xNiAwOToxNzo1Ng==','2016-11-18 22:17:56',0,'transporteswilson2584@gmail.com','transporteswilson2584@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(235,142,'TUlDSEFFTCBHQVJBWVYtMTkzMTg5ODRNSUNIQUVMR0FSQVkyMDEwQEhPVE1BSUwuQ09NMDYtMTItMTYgMDI6MDE6MDI=','2016-12-06 15:01:02',0,'MICHAELGARAY2010@HOTMAIL.COM','MICHAELGARAY2010@HOTMAIL.COM','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(236,143,'Q2FybG9zIEEuIFNhbmd1aW5vVi0zODgzMzk0Y3Nhbmd1aW5vMTNAZ21haWwuY29tMDgtMTItMTYgMDg6NTQ6NTQ=','2016-12-08 09:54:54',0,'csanguino13@gmail.com','csanguino13@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(237,144,'am9zZSBncmFmZmVWLTkyNjg3NjFqZ3JhZmZlakBob3RtYWlsLmNvbTA4LTEyLTE2IDA5OjQwOjA3','2016-12-08 10:40:07',0,'jgraffej@hotmail.com','jgraffej@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(238,145,'anVzdGlubyBtYWNoYWRvVi0yOTgyNTIyLTZqdXN0aW5vMjlAaG90bWFpbC5jb20wOC0xMi0xNiAwNjozNjozMA==','2016-12-08 19:36:30',0,'justino29@hotmail.com','justino29@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(239,146,'anVzdGlubyBtYWNoYWRvVi1WLTAyOTgyNTIyLWp1c3Rpbm8yOUBob3RtYWlsLmNvbTA4LTEyLTE2IDA2OjQwOjMz','2016-12-08 19:40:33',0,'justino29@hotmail.com','justino29@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(240,147,'anVzdGlubyBtYWNoYWRvVi0wMjk4MjUyMi02anVzdGlubzI5QGhvdG1haWwuY29tMDgtMTItMTYgMDY6NDM6NDk=','2016-12-08 19:43:49',0,'justino29@hotmail.com','justino29@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(241,148,'cmFuZmlzIGpvc2UgdG92YXJWLTYwNzQ0MjZyYW5maXN4ZXRyZW1vQGhvdG1haWwuY29tMDktMTItMTYgMDQ6MzA6MTQ=','2016-12-09 17:30:14',0,'ranfisxetremo@hotmail.com','ranfisxetremo@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(242,149,'RGVydml6IE7DusOxZXpWLTQzMjU1ODdkZXJ2aXpudW5lekBob3RtYWlsLmNvbTA2LTAxLTE3IDA5OjQ3OjIz','2017-01-06 10:47:23',0,'derviznunez@hotmail.com','derviznunez@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(243,150,'YW50b25pbyBmZXJuYW5kZXpWLTEyMDEyNDQ2YW50b25pb2Zlcm5hbmRlejEwMEBob3RtYWlsLmNvbTA5LTAxLTE3IDAxOjQ1OjM0','2017-01-09 14:45:34',0,'antoniofernandez100@hotmail.com','antoniofernandez100@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(244,150,'YW50b25pbyBmZXJuYW5kZXpWLTEyMDEyNDQ2YW50b25pb2Zlcm5hbmRlejEwMEBob3RtYWlsLmNvbTA5LTAxLTE3IDA1OjI1OjQ3','2017-01-09 18:25:47',0,'antoniofernandez100@hotmail.com','antoniofernandez100@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(245,151,'aW52ZXJzaW9uZXMgdmFsZXJhIDE4MTkgYy5hLkotNDA4OTUwNDIxa2FyaW5hZGV2YWxlcmFAZ21haWwuY29tMTktMDEtMTcgMTA6MDU6MDI=','2017-01-19 11:05:02',1,'karinadevalera@gmail.com','karinadevalera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(246,152,'Y2FybG9zIHZhbGVyYVYtMTQ1OTE1OTdrYXJpbmFkZXZhbGVyYUBnbWFpbC5jb20xOS0wMS0xNyAxMDowNjozMQ==','2017-01-19 11:06:31',0,'karinadevalera@gmail.com','karinadevalera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(247,151,'SU5WRVJTSU9ORVMgVkFMRVJBIDE4MTkgQy5BLkotNDA4OTUwNDIxa2FyaW5hZGV2YWxlcmFAZ21haWwuY29tMTktMDEtMTcgMTA6MDc6NDU=','2017-01-19 11:07:45',0,'karinadevalera@gmail.com','karinadevalera@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(248,153,'am9zZSBtaWd1ZWwgeWFuZXpWLTIxMTQzODkwZ3J1YWptMzVAZ21haWwuY29tMjYtMDItMTcgMDI6Mjg6MDc=','2017-02-26 15:28:07',0,'gruajm35@gmail.com','gruajm35@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(249,153,'am9zZSBtaWd1ZWwgeWFuZXpWLTIxMTQzODkwZ3J1YWptMzVAZ21haWwuY29tMjYtMDItMTcgMDI6Mjk6NTg=','2017-02-26 15:29:58',0,'gruajm35@gmail.com','gruajm35@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(250,154,'QWRlbGlubyBGZXJuYW5kZXNWLUU4MTUyNDkwMUVscG9ydHVfMjAyMUBob3RtYWlsLmNvbTI4LTAzLTE3IDAxOjIxOjEz','2017-03-28 02:21:13',1,'Elportu_2021@hotmail.com','Elportu_2021@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(251,155,'QWRlbGlubyBGZXJuYW5kZXNWLUUtODE1MjQ5MDFhdXJ5c2hlcm5hbmRlekBob3RtYWlsLmNvbTI4LTAzLTE3IDExOjU0OjAy','2017-03-29 00:54:02',0,'auryshernandez@hotmail.com','auryshernandez@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(252,156,'R3J1YXMgSGVybWFub3MgTG9wZXogMjAxNSBDLkFKLTQwNTc3NzMzOGdydWFzaGVybWFub3Nsb3BlejIwMTVAZ21haWwuY29tMTAtMDUtMTcgMDU6MzM6MDQ=','2017-05-10 18:33:04',0,'gruashermanoslopez2015@gmail.com','gruashermanoslopez2015@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(253,157,'SmVzdXMgTmlldG9WLTExMTYwMDkxZ2FicmllbHV6Y2F0ZWd1aThAZ21haWwuY29tMTItMDYtMTcgMDE6NTI6Mzk=','2017-06-12 14:52:39',0,'gabrieluzcategui8@gmail.com','gabrieluzcategui8@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(254,158,'dHJhbnNwb3J0ZSBzZWJhc3RpYW4sIGMuYS5KLTMwNzkwNTcxLTl0cmFuc2ViYXM2NEBob3RtYWlsLmNvbTI2LTA2LTE3IDExOjExOjUx','2017-06-27 00:11:51',0,'transebas64@hotmail.com','transebas64@hotmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(255,159,'QWJkaWVsIFRvcnJlYWxiYVYtMjAxODg5ODVhYmRpZWxfdG9ycmVhbGJhQG91dGxvb2suY29tMTQtMDgtMTcgMTI6MDc6MDM=','2017-08-14 13:07:03',0,'abdiel_torrealba@outlook.com','abdiel_torrealba@outlook.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(256,159,'QWJkaWVsIFRvcnJlYWxiYVYtMjAxODg5ODVhYmRpZWxfdG9ycmVhbGJhQG91dGxvb2suY29tMTQtMDgtMTcgMDE6MDg6Mzk=','2017-08-14 14:08:39',0,'abdiel_torrealba@outlook.com','abdiel_torrealba@outlook.com','0000-00-00 00:00:00','0000-00-00 00:00:00');

/* Trigger structure for table `SolicitudAprobada` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_num_producto` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_num_producto` BEFORE INSERT ON `SolicitudAprobada` FOR EACH ROW BEGIN
    DECLARE num_producto, abreviatura_rcv,PolizaAsistir, ReciboAsistir,abreviatura_plan VARCHAR(20);
	
	/**Obtengo la abreviatura del plan de tugruero.com*/
	SELECT Abreviatura INTO abreviatura_plan
	FROM SolicitudPlanSeleccion sps
	INNER JOIN Planes p ON p.idPlan = sps.idPlan
	WHERE idSolicitudPlan = NEW.idSolicitudPlan
	AND p.Tipo = 'tugruero.com';
	IF (abreviatura_plan = 'TGP-CCCT') THEN
	    SELECT CONCAT(  abreviatura_plan,'-',LPAD(ValorCorrelativo, 4, '0')) INTO num_producto FROM SolicitudCorrelativoProducto WHERE idCorrelativo = 1;
		SET NEW.NumProducto = num_producto;
	    UPDATE SolicitudCorrelativoProducto SET ValorCorrelativo = (ValorCorrelativo + 1) WHERE idCorrelativo = 1;
	END IF;	
	IF (abreviatura_plan = 'TGG-CCCT') THEN
	    SELECT CONCAT(  abreviatura_plan ,'-',LPAD(ValorCorrelativo, 4, '0')) INTO num_producto FROM SolicitudCorrelativoProducto WHERE idCorrelativo = 2;
		SET NEW.NumProducto = num_producto;
	    UPDATE SolicitudCorrelativoProducto SET ValorCorrelativo = (ValorCorrelativo + 1) WHERE idCorrelativo = 2;
	END IF;
	
	/**Obtengo la abreviatura del plan de RCV de asistir*/
	SELECT Abreviatura INTO abreviatura_rcv
	FROM SolicitudPlanSeleccion sps
	INNER JOIN Planes p ON p.idPlan = sps.idPlan
	WHERE idSolicitudPlan = NEW.idSolicitudPlan
	AND p.Tipo = 'RCV';	
	
	IF (abreviatura_rcv = 'RCV-CCCT') THEN
	    SELECT CONCAT('02-5-CCCT-' ,LPAD(ValorCorrelativo, 4, '0')),CONCAT('02-5-CCCT-' ,LPAD(ValorCorrelativo, 4, '0'),'-1')  INTO PolizaAsistir, ReciboAsistir
	    FROM SolicitudCorrelativoProducto WHERE idCorrelativo = 3;
		SET NEW.PolizaAsistir = PolizaAsistir;
		SET NEW.ReciboAsistir = ReciboAsistir;
	    UPDATE SolicitudCorrelativoProducto SET ValorCorrelativo = (ValorCorrelativo + 1) WHERE idCorrelativo = 3;
	END IF;	
	
    END */$$


DELIMITER ;

/* Trigger structure for table `SolicitudPlan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_ins_may_solicitud_plan` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_ins_may_solicitud_plan` BEFORE INSERT ON `SolicitudPlan` FOR EACH ROW BEGIN
	SET NEW.Cedula= UPPER(new.Cedula);
	SET NEW.Rif= UPPER(new.Rif);
	SET NEW.Nombres = UPPER(new.Nombres);
	SET NEW.Apellidos = UPPER(new.Apellidos);
	SET NEW.Ciudad = UPPER(new.Ciudad);
	SET NEW.Correo = UPPER(new.Correo);
	SET NEW.Domicilio = UPPER(new.Domicilio);
	SET NEW.Modelo = UPPER(new.Modelo);
	SET NEW.Color = UPPER(new.Color);
	SET NEW.Placa = UPPER(new.Placa);	
    END */$$


DELIMITER ;

/* Trigger structure for table `SolicitudPlan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_upd_may_solicitud_plan` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_upd_may_solicitud_plan` BEFORE UPDATE ON `SolicitudPlan` FOR EACH ROW BEGIN
	SET NEW.Cedula= UPPER(new.Cedula);
	SET NEW.Rif= UPPER(new.Rif);
	SET NEW.Nombres = UPPER(new.Nombres);
	SET NEW.Apellidos = UPPER(new.Apellidos);
	SET NEW.Ciudad = UPPER(new.Ciudad);
	SET NEW.Correo = UPPER(new.Correo);
	SET NEW.Domicilio = UPPER(new.Domicilio);
	SET NEW.Modelo = UPPER(new.Modelo);
	SET NEW.Color = UPPER(new.Color);
	SET NEW.Placa = UPPER(new.Placa);	
    END */$$


DELIMITER ;

/* Procedure structure for procedure `cargar_ventas_stand` */

/*!50003 DROP PROCEDURE IF EXISTS  `cargar_ventas_stand` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cargar_ventas_stand`()
BEGIN
	
	INSERT INTO `admin_tugruero`.`SolicitudPlan` 
	(
		`Nombres`,`Apellidos`, 
		`Correo`,`Cedula`,`EstadoCivil`,`FechaNacimiento`,`Sexo`,`Rif`,`Estado`,`Ciudad`,`Domicilio`,`Telefono`,`Celular`,`FechaSolicitud`, 
		`TipoPago`,`NumeroTransaccion`,`Clase`,`Marca`,`Modelo`,`Anio`,`Color`,`Placa`,`Tipo`,`Puestos`,`SerialMotor`,`SerialCarroceria`,`Estatus`,`TotalSinIva`,`TotalConIva`, 
		`PagoRealizado`,`Observacion`,`IdV`,`Kilometraje`,`CantidadServicios`,`Respaldo`,`IdRespaldo`
	)	
	(
		SELECT `Nombres`,`Apellidos`,`Correo`,`Cedula`,`EstadoCivil`,`FechaNacimiento`,`Sexo`,`Rif`,`Estado`, `Ciudad`,`Domicilio`,`Telefono`,`Celular`,`FechaSolicitud`, 
		`TipoPago`,`NumeroTransaccion`,`Clase`,`Marca`,`Modelo`,`Anio`,`Color`,`Placa`,`Tipo`,`Puestos`,`SerialMotor`,`SerialCarroceria`,`Estatus`,`TotalSinIva`,`TotalConIva`, 
		`PagoRealizado`,`Observacion`,`IdV`,`Kilometraje`,`CantidadServicios`, 0 AS respaldo, `idSolicitudPlan` AS IdRespaldo
		FROM `admin_tugruero`.`SolicitudPlanBCK`
	);
	
	#actualizo los idSolicitudPlan con los que se generaron en el autoincrement
	UPDATE SolicitudAprobadaBCK up1 SET IdSolicitudPlan = (SELECT idSolicitudPlan FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan and Respaldo = 0 and IdRespaldo is not null) WHERE up1.idSolicitudPlan = (SELECT IdRespaldo FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0);
	UPDATE SolicitudDocumentosBCK up1 SET IdSolicitudPlan = (SELECT idSolicitudPlan FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0  AND IdRespaldo IS NOT NULL) WHERE up1.idSolicitudPlan = (SELECT IdRespaldo FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0);
	UPDATE SolicitudPagoDetalleBCK up1 SET IdSolicitudPlan = (SELECT idSolicitudPlan FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0  AND IdRespaldo IS NOT NULL) WHERE up1.idSolicitudPlan = (SELECT IdRespaldo FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0);
	UPDATE SolicitudPlanSeleccionBCK up1 SET IdSolicitudPlan = (SELECT idSolicitudPlan FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0  AND IdRespaldo IS NOT NULL) WHERE up1.idSolicitudPlan = (SELECT IdRespaldo FROM SolicitudPlan up2 WHERE up2.IdRespaldo = up1.idSolicitudPlan AND Respaldo = 0);
	#inserto los registros en las tablas de produccion una vez que ya tienen los idSolicitudPlan asignados
	INSERT INTO SolicitudAprobada (SELECT * FROM SolicitudAprobadaBCK);
	INSERT INTO SolicitudDocumentos (SELECT * FROM SolicitudDocumentosBCK);
	INSERT INTO SolicitudPagoDetalle (SELECT * FROM SolicitudPagoDetalleBCK);
	INSERT INTO SolicitudPlanSeleccion(SELECT * FROM SolicitudPlanSeleccionBCK);
	INSERT INTO `admin_tugruero`.`Polizas` 
	(`Placa`,`Cedula`,`Nombre`,`Apellido`,`Marca`,`Modelo`,`Clase`,`Tipo`,`Color`,`Año`,`Serial`,`Seguro`,`NumPoliza`,`DireccionEDO`,`Domicilio`,`DireccionFiscal`,`Vencimiento`, 
	`date_created`,`date_updated`,`created_by`,`updated_by`,`Nacionalidad`,`Celular`,`Email`,`DesdeVigencia`,`EstatusPoliza`,`Respaldo`)
	
	(	SELECT `Placa`,`Cedula`,`Nombre`,`Apellido`,`Marca`,`Modelo`,`Clase`,`Tipo`,`Color`,`Año`,`Serial`,`Seguro`,`NumPoliza`,`DireccionEDO`,`Domicilio`,`DireccionFiscal`,`Vencimiento`, 
		`date_created`,`date_updated`,`created_by`,`updated_by`,`Nacionalidad`,`Celular`,`Email`,`DesdeVigencia`,`EstatusPoliza`,`Respaldo`
		FROM `admin_tugruero`.`PolizasBCK`
	);
	#limpio los IdRespaldo de la tabla SolicitudPlan 
	
	update SolicitudPlan set Respaldo = 1 where IdRespaldo is not null;
	update Polizas set Respaldo = 1;
	
	#limpio las tablas BCK
	
	delete from SolicitudAprobadaBCK;
	DELETE FROM SolicitudDocumentosBCK;
	DELETE FROM SolicitudPagoDetalleBCK;
	DELETE FROM SolicitudPlanSeleccionBCK;
	DELETE FROM PolizasBCK;
	DELETE FROM SolicitudPlanBCK;
	
	
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
