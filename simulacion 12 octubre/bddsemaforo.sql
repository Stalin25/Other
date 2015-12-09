-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2015 a las 16:12:55
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bddsemaforo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE IF NOT EXISTS `agentes` (
  `age_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Indica el identificador del agente',
  `age_codigo` varchar(100) NOT NULL,
  `age_direccion` varchar(200) NOT NULL COMMENT 'Indica la dirección del Agente',
  `age_latitud` double DEFAULT NULL COMMENT 'Indica la latitud del agente',
  `age_longitud` double DEFAULT NULL COMMENT 'Indica la longitud del agente',
  `age_fase` char(3) DEFAULT NULL COMMENT 'rojo, amarillo, verde',
  `age_estado` varchar(100) DEFAULT NULL COMMENT 'Indica el estado del agente, A (amarillo), R (rojo), V (verde).',
  `age_sentido` varchar(40) DEFAULT NULL COMMENT 'Indica el sentido del semáforo.',
  `age_tipoluz` varchar(20) DEFAULT NULL,
  `age_norte` varchar(100) DEFAULT NULL COMMENT 'Indica el identificador del agente que se aproxima por el norte.',
  `age_sur` varchar(100) DEFAULT NULL COMMENT 'Indica el identificador del agente que se aproxima por el sur.',
  `age_este` int(11) DEFAULT NULL COMMENT 'Indica el identificador del agente que se aproxima por el este.',
  `age_oeste` int(11) DEFAULT NULL COMMENT 'Indica el identificador del agente que se aproxime por el oeste.',
  `age_observacion` varchar(100) DEFAULT NULL COMMENT 'Indica observaciones del semaforo',
  PRIMARY KEY (`age_id`),
  UNIQUE KEY `age_id_UNIQUE` (`age_id`),
  UNIQUE KEY `age_codigo_UNIQUE` (`age_codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=377 ;

--
-- Volcado de datos para la tabla `agentes`
--

INSERT INTO `agentes` (`age_id`, `age_codigo`, `age_direccion`, `age_latitud`, `age_longitud`, `age_fase`, `age_estado`, `age_sentido`, `age_tipoluz`, `age_norte`, `age_sur`, `age_este`, `age_oeste`, `age_observacion`) VALUES
(238, '001', 'Av. Hisidro Ayora y Av. Nueva Loja', -3.9765016126241566, -79.20230560004711, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '002', NULL, NULL, NULL, ''),
(239, '002', 'Av. Hisidro Ayora y Av. Orillas del Zamora', -3.9764420771444904, -79.20199982821941, NULL, NULL, 'SUR-NORTE', 'INCANDESCENTE', '003', NULL, NULL, NULL, ''),
(240, '003', 'Av. Hisidro Ayora y Salvador Bustamante Celi', -3.976343743252933, -79.20127496123314, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '002', NULL, NULL, NULL, ''),
(242, '004', 'Av. Nueva Loja y Guayaquil', -3.981242362233583, -79.20297011733055, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '005', NULL, NULL, NULL, ''),
(243, '005', 'Av. Orillas del Zamora y Guayaquil', -3.9813142726461663, -79.20259326696396, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '004', NULL, NULL, NULL, ''),
(244, '006', 'Av. Salvador Bustamante Celi y Guayaquil', -3.981489198879363, -79.20153848826885, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(245, '007', 'Av. Cuxibamba e Ibarra', -3.9851228397974547, -79.20600302517414, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '008', NULL, NULL, NULL, ''),
(246, '008', 'Av. Cuxibamba y Guaranda', -3.9871222719614194, -79.20545116066933, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '007', '117', NULL, NULL, ''),
(247, '009', 'Av. Nueva Loja y Guaranda', -3.98721859777763, -79.20296877622604, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '010', NULL, NULL, NULL, ''),
(248, '010', 'Av. Orillas del Zamora y Guaranda', -3.9872513753097283, -79.20271597802639, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '009', NULL, NULL, NULL, ''),
(249, '011', 'Av. Cuxibamba y Av. Gran Colombia', -3.990585311746104, -79.20516282320023, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(250, '012', '18 de Noviembre y Juan de Salinas', -3.9917238238584045, -79.20452512800694, NULL, NULL, 'NORTE-SUR', 'LED', '013', NULL, NULL, NULL, ''),
(251, '013', 'Sucre y Juan de Salinas', -3.9916656273316, -79.20363999903202, NULL, NULL, 'NORTE-SUR', 'LED', '012', NULL, NULL, NULL, ''),
(252, '014', 'Bolívar y Juan de Salinas', -3.9915639506311957, -79.20246720314026, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '020', NULL, NULL, NULL, ''),
(253, '015', 'Bernardo Valdivieso y Juan de Salinas', -3.991551241042758, -79.20171149075031, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(254, '016', 'Av. Emiliano Ortega y Juan de Salinas', -3.991418793741048, -79.20177452266216, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '015', '017', NULL, NULL, ''),
(255, '017', 'Av. Orillas del Zamora y Daniel Alvarez', -3.991310427751026, -79.20135542750359, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '016', NULL, NULL, NULL, ''),
(256, '018', 'Av. Manuel Agustín Aguirre y José Félix de Valdivieso', -3.992667677297521, -79.20578576624393, NULL, NULL, 'NORTE-SUR', 'LED', NULL, NULL, NULL, NULL, ''),
(257, '019', 'Av. Universitaria y José Félix de Valdivieso', -3.9926556366509773, -79.20548535883427, NULL, NULL, 'NORTE-SUR', 'LED', '021', '018', NULL, NULL, ''),
(258, '020', 'Av. Manuel Agustín Aguirre y Juan de Salinas', -3.991784027157636, -79.20578978955746, NULL, NULL, 'NORTE-SUR', 'LED', '018', '021', NULL, NULL, ''),
(259, '021', 'Av. Universitaria y Juan de Salinas', -3.991854264334509, -79.20548602938652, NULL, NULL, 'NORTE-SUR', 'LED', NULL, '020', NULL, NULL, ''),
(260, '022', 'Sucre y Quito', -3.9932161954524132, -79.20338317751884, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(261, '023', 'Av. Zoilo Rodriguez y prolonacion AV. 24 de mayo', -3.9925345612509973, -79.1986383497715, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(262, '024', 'Av. Manuel Agustín Aguirre e Imbabura', -3.9945205969092803, -79.20554503798485, NULL, NULL, 'NORTE-SUR', 'LED', '027', NULL, NULL, NULL, ''),
(263, '025', 'Av. Universitaria e Imbabura', -3.9944904953605773, -79.20527145266533, NULL, NULL, 'NORTE-SUR', 'LED', NULL, '024', NULL, NULL, ''),
(265, '026', 'Bolívar e Imbabura', -3.994176770264969, -79.20227944850922, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '033', '032', NULL, NULL, ''),
(267, '027', 'Av. Manuel Agustín Aguirre y Colón', -3.995421636089325, -79.20544981956482, NULL, NULL, 'NORTE-SUR', 'LED', '051', '028', NULL, NULL, ''),
(268, '028', 'Av. Universitaria y Colón', -3.9954029062574983, -79.20516483485699, NULL, NULL, 'NORTE-SUR', 'LED', '025', '029', NULL, NULL, ''),
(269, '029', '18 de Noviembre y Colón', -3.99535206814038, -79.20419588685036, NULL, NULL, 'NORTE-SUR', 'LED', '034', '031', NULL, NULL, ''),
(270, '030', '18 de Noviembre e Imbabura', -3.9943667445376154, -79.20430921018124, NULL, NULL, 'NORTE-SUR', 'LED', '029', '025', NULL, NULL, ''),
(271, '031', 'Sucre y Colón', -3.9953112638598864, -79.2032141983509, NULL, NULL, 'NORTE-SUR', 'LED', '032', '033', NULL, NULL, ''),
(272, '032', 'Sucre e Imbabura', -3.9942483450841237, -79.20328594744205, NULL, NULL, 'NORTE-SUR', 'LED', '022', '030', NULL, NULL, ''),
(273, '033', 'Bolívar y Colón', -3.995192195619941, -79.20221507549286, NULL, NULL, 'NORTE-SUR', 'LED', '036', NULL, NULL, NULL, ''),
(274, '034', '18 de Noviembre y José Antonio Eguiguren', -3.996418330094748, -79.20410871505737, NULL, NULL, 'NORTE-SUR', 'LED', '041', '052', NULL, NULL, ''),
(275, '035', 'Sucre y José Antonio Eguiguren', -3.996331370263308, -79.20316189527512, NULL, NULL, 'NORTE-SUR', 'LED', '031', '034', NULL, NULL, ''),
(276, '036', 'Bolívar y José Antonio Eguiguren', -3.9962838768130147, -79.20210242271423, NULL, NULL, 'NORTE-SUR', 'LED', '043', '035', NULL, NULL, ''),
(277, '037', 'Bernardo Valdivieso y José Antonio Eguiguren', -3.996243072578881, -79.20133262872696, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '036', NULL, NULL, ''),
(278, '038', 'Olmedo y José Antonio Eguiguren', -3.9961808628409523, -79.20024164021015, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '37', NULL, NULL, ''),
(279, '039', 'Av. Manuel Agustín Aguirre y 10 de Agosto', -3.9974103404423427, -79.20521311461926, NULL, NULL, 'NORTE-SUR', 'LED', '049', '040', NULL, NULL, ''),
(280, '040', 'Av. Universitaria y 10 de Agosto', -3.9974083336795214, -79.20491941273212, NULL, NULL, 'NORTE-SUR', 'LED', '052', '041', NULL, NULL, ''),
(281, '041', '18 de Noviembre y 10 de Agosto', -3.997281238691601, -79.20405440032482, NULL, NULL, 'NORTE-SUR', 'LED', NULL, '042', NULL, NULL, ''),
(282, '042', 'Sucre y 10 de Agosto', -3.9972056506104843, -79.2031230032444, NULL, NULL, 'NORTE-SUR', 'LED', '035', '043', NULL, NULL, ''),
(283, '043', 'Bolívar y 10 de Agosto', -3.997117353020189, -79.20207224786282, NULL, NULL, 'NORTE-SUR', 'LED', '054', '044', NULL, NULL, ''),
(284, '044', 'Bernardo Valdivieso y 10 de Agosto', -3.9970424338452037, -79.20124746859074, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '037', NULL, NULL, NULL, ''),
(285, '045', 'Ramón Pinto y 10 de Agosto', -3.9974993069219384, -79.2066715657711, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(286, '046', 'Av. Emiliano Ortega y 10 de Agosto', -3.9968116559864044, -79.19779814779758, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '047', NULL, NULL, ''),
(287, '047', 'Av. Orillas del Zamora y 10 de Agosto', -3.99679225726487, -79.19751986861229, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '115', NULL, NULL, NULL, ''),
(289, '048', 'Lauro Guerrero y Rocafuerte', -3.99846054563858, -79.20594401657581, NULL, 'accidente', 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(290, '049', 'Av. Manuel Agustín Aguirre y Rocafuerte', -3.998405694190291, -79.20509107410908, NULL, NULL, 'NORTE-SUR', 'LED', '060', '048', NULL, NULL, ''),
(291, '050', 'Av. Universitaria y Rocafuerte', -3.9983689035826746, -79.20479267835617, NULL, NULL, 'NORTE-SUR', 'LED', '040', '049', NULL, NULL, ''),
(292, '051', 'Av. Manuel Agustín Aguirre y José Antonio Eguiguren', -3.9965373981566965, -79.20530028641224, NULL, NULL, 'NORTE-SUR', 'LED', '039', NULL, NULL, NULL, ''),
(293, '052', 'Av. Universitaria y José Antonio Eguiguren', -3.996519337272005, -79.2050501704216, NULL, NULL, 'NORTE-SUR', 'LED', '028', '051', NULL, NULL, ''),
(294, '053', 'Sucre y Rocafuerte', -3.998234450620804, -79.20301370322704, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '042', NULL, NULL, NULL, ''),
(295, '054', 'Bolívar y Rocafuerte', -3.9981367882565624, -79.20196563005447, NULL, 'accidente', 'NORTE-SUR', 'LED', '066', '053', NULL, NULL, ''),
(296, '055', 'Bernardo Valdivieso y Rocafuerte', -3.9980772543438787, -79.20117571949959, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '044', '054', NULL, NULL, ''),
(297, '056', 'Olmedo y Rocafuerte', -3.9980157136655627, -79.20010685920715, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '068', '055', NULL, NULL, ''),
(298, '057', 'Juan José Peña y Rocafuerte', -3.997961531107986, -79.19902123510838, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '056', NULL, NULL, ''),
(299, '058', 'Ramón Pinto y Miguel Riofrío', -3.999538844096094, -79.20640468597412, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '059', NULL, NULL, ''),
(300, '059', 'Lauro Guerrero y Miguel Riofrío', -3.999508073812373, -79.20582801103592, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '60', NULL, NULL, ''),
(301, '060', 'Av. Manuel Agustín Aguirre y Miguel RioFrío', -3.9994498778378524, -79.20497842133045, NULL, NULL, 'NORTE-SUR', 'LED', '062', '061', NULL, NULL, ''),
(302, '061', 'Av. Universitaria y Miguel RioFrío', -3.9994257967437274, -79.20468538999557, NULL, NULL, 'NORTE-SUR', 'LED', '050', '064', NULL, NULL, ''),
(303, '062', 'Av. Manuel Agustín Aguirre y Azuay', -4.000484026378564, -79.20491337776184, NULL, NULL, 'NORTE-SUR', 'LED', '075', NULL, NULL, NULL, ''),
(304, '063', 'Av. Universitaria y Azuay', -4.00046797233617, -79.20458011329174, NULL, NULL, 'NORTE-SUR', 'LED', '061', '062', NULL, NULL, ''),
(307, '064', '18 de Noviembre y Miguel Riofrío', -3.9993809791500143, -79.20388408005238, NULL, NULL, 'NORTE-SUR', 'LED', '079', '065', NULL, NULL, ''),
(308, '065', 'Sucre y Miguel Riofrío', -3.999303384504352, -79.20296877622604, NULL, NULL, 'NORTE-SUR', 'LED', '053', '066', NULL, NULL, ''),
(309, '066', 'Bolívar y Miguel Riofrío', -3.9992565601456675, -79.20190997421741, NULL, 'accidente', 'NORTE-SUR', 'LED', '087', '067', NULL, NULL, ''),
(311, '067', 'Bernardo Valdivieso y Miguel Riofrío', -3.9991876614415833, -79.20105636119843, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '055', '068', NULL, NULL, ''),
(312, '068', 'Olmedo y Miguel Riofrío', -3.9991013708234404, -79.19999822974205, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(313, '069', 'Bernardo Valdivieso y Azuay', -4.000220472475963, -79.20094773173332, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '067', '087', NULL, NULL, ''),
(314, '070', 'Av. 24 de Mayo y Azuay', -4.000057925229796, -79.19784039258957, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(315, '071', 'Ramón Pinto Y Mercadillo', -4.001439910253003, -79.20620083808899, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '072', NULL, NULL, NULL, ''),
(316, '072', 'Ramón Pinto Y Mercadillo', -4.001593761297232, -79.20618407428265, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '074', NULL, NULL, ''),
(317, '073', 'Lauro Guerrero Y Mercadillo', -4.001411815711376, -79.20562751591206, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '071', NULL, NULL, ''),
(318, '074', 'Lauro Guerrero Y Mercadillo', -4.001579045111641, -79.2056080698967, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '073', '076', NULL, NULL, ''),
(319, '075', 'Av. Manuel Agustín Aguirre y Mercadillo', -4.001373687403337, -79.2048154771328, NULL, NULL, 'NORTE-SUR', 'LED', '076', '073', NULL, NULL, ''),
(320, '076', 'Av. Manuel Agustín Aguirre y Mercadillo', -4.0015154979435605, -79.20479737222195, NULL, NULL, 'NORTE-SUR', 'LED', NULL, '077', NULL, NULL, ''),
(321, '077', 'Av. Universitaria y Mercadillo', -4.001423187311678, -79.20443795621395, NULL, NULL, 'NORTE-SUR', 'LED', '063', '078', NULL, NULL, ''),
(324, '078', '18 de Noviembre y Mercadillo', -4.001458639946896, -79.20367419719696, NULL, NULL, 'NORTE-SUR', 'LED', NULL, '080', NULL, NULL, ''),
(325, '079', '18 de Noviembre y Azuay', -4.000423823717925, -79.20381367206573, NULL, NULL, 'NORTE-SUR', 'LED', '078', '063', NULL, NULL, ''),
(326, '080', 'Sucre y Mercadillo', -4.001381714415705, -79.20277766883373, NULL, NULL, 'NORTE-SUR', 'LED', '086', '081', NULL, NULL, ''),
(328, '081', 'Bolívar y Mercadillo', -4.001338903682176, -79.20175842940807, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '088', '082', NULL, NULL, ''),
(329, '082', 'Bernardo Valdivieso y Mercadillo', -4.001332214504857, -79.2008987814188, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '069', '083', NULL, NULL, ''),
(330, '083', 'Olmedo y Mercadillo', -4.001231207920735, -79.19989228248596, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '090', '084', NULL, NULL, ''),
(331, '084', 'Juan José Peña y Mercadillo', -4.001199768782751, -79.19881738722324, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(332, '085', 'Sucre y Lourdes', -4.0024927859516755, -79.20272000133991, NULL, NULL, 'NORTE-SUR', 'LED', '080', NULL, NULL, NULL, ''),
(333, '086', 'Sucre y Azuay', -4.000338202148518, -79.20286349952221, NULL, NULL, 'NORTE-SUR', 'LED', '065', '079', NULL, NULL, ''),
(334, '087', 'Bolívar Y Azuay', -4.000276661639966, -79.20183286070824, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '081', '086', NULL, NULL, ''),
(335, '088', 'Bolívar y Lourdes', -4.002431914521846, -79.20166321098804, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '085', NULL, NULL, ''),
(336, '089', 'Bernardo Valdivieso Y Lourdes', -4.0023710430875, -79.20085787773132, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '082', '088', NULL, NULL, ''),
(337, '090', 'Olmedo Y Lourdes', -4.002334921574864, -79.1997990757227, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '089', NULL, NULL, ''),
(338, '091', 'Av, 24 de Mayo y Lourdes', -4.0021817395869155, -79.19764459133148, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(339, '092', 'Av. Pío Jaramillo y Maximiliano Rodriguez', -4.002627907131381, -79.20760497450829, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '093', NULL, NULL, NULL, ''),
(340, '093', 'Av. Pío Jaramillo y Maximiliano Rodriguez', -4.002676738047283, -79.20746013522148, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '092', NULL, NULL, NULL, ''),
(341, '094', 'José María Peña y Venezuela', -4.0038098820447985, -79.20649252831936, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(342, '095', 'Av. Pio Jaramillo y José María Peña', -4.004817268484635, -79.2063470184803, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '094', NULL, NULL, NULL, ''),
(343, '096', 'Av. Pio Jaramillo y Brasil', -4.006833375470347, -79.20535862445831, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '098', NULL, NULL, ''),
(344, '097', 'Av. Pio Jaramillo y Brasil', -4.0070628126790515, -79.2053733766079, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '101', '096', NULL, NULL, ''),
(346, '098', 'Av. Manuel Agustín Aguirre y Brasil', -4.005986530871787, -79.20419320464134, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '099', NULL, NULL, ''),
(347, '099', 'Av. Universitaria y Brasil', -4.005975828248823, -79.20393906533718, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(348, '100', 'Av. Pio Jaramillo y Cuba', -4.0080501277464995, -79.20494019985199, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '096', NULL, NULL, NULL, ''),
(349, '101', 'Av. Pio Jaramillo y Cuba', -4.00812905938743, -79.20507900416851, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '103', NULL, NULL, NULL, ''),
(350, '102', 'Av. Pio Jaramillo y Chile', -4.010149840582699, -79.20465856790543, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '100', '104', NULL, NULL, ''),
(351, '103', 'Av. Pio Jaramillo y Chile', -4.010247501513579, -79.2047980427742, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '102', NULL, NULL, ''),
(352, '104', 'Av. Manuel Agustín Aguirre y Chile', -4.009650833178367, -79.20379891991615, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '102', NULL, NULL, NULL, ''),
(353, '105', 'Av. Pio Jaramillo y España', -4.004882153226107, -79.20651935040951, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '097', '095', NULL, NULL, ''),
(354, '106', 'Argentina y Bolívia', -4.009887627614647, -79.20723348855972, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(355, '107', 'Av. Eduardo Kingman y Amaluza', -4.010717745421502, -79.20115225017071, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(357, '108', 'Av. Eduardo Kingman y Gonzanama', -4.0073912489211825, -79.2013393342495, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(358, '109', 'Av. Eduardo Kingman y Angel Benigno Valarezo', -4.02180619219547, -79.20064799487591, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(359, '110', '18 de Noviembre y Av. Gobernacón de Mainas', -4.013090365961489, -79.20276425778866, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(360, '111', '18 de Noviembre y Cariamanga', -4.004655391065969, -79.2034663259983, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(361, '112', 'Av. Emiliano Ortega y Miguel Riofrío', -3.9988458435133354, -79.19671788811684, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '113', NULL, NULL, ''),
(362, '113', 'Av. Orillas del Zamora y Miguel Riofrío', -3.9986986811520024, -79.19640205800533, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(363, '114', 'Av. Emiliano Ortega y 24 de Mayo', -3.99548451480734, -79.19827155768871, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(364, '115', 'Av. Orillas del Zamora y 24 de Mayo', -3.995037674451352, -79.19831447303295, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(365, '116', 'Av. Santiago de las Montañas y calle Juan de Velascos y Esmeraldas', -3.9853616481101732, -79.20120522379875, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(366, '117', 'Gran Colombia y Guaranda', -3.987153711638775, -79.20442789793015, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '008', NULL, NULL, ''),
(367, '118', 'Bolívar y Cariamanga', -4.004660742386101, -79.20149624347687, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '119', NULL, NULL, ''),
(368, '119', 'Sucre y Cariamanga', -4.00466274913115, -79.20255772769451, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '111', NULL, NULL, ''),
(369, '120', '24 de Mayo y Rocafuerte', -3.997875909281335, -79.19806368649006, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, '057', NULL, NULL, ''),
(370, '122', 'Av. 8 de Diciembre y Belisario Moreno', -3.960174013651942, -79.21622425317764, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(371, '123', 'Av. Manuel Carrión Pinzano y José M. Riofrío', -3.9906040416878765, -79.2098231613636, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '124', NULL, NULL, NULL, ''),
(372, '124', 'Av. Manuel Carrión Pinzano y José M. Riofrío', -3.99061675129097, -79.20973867177963, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '123', NULL, NULL, NULL, ''),
(373, '125', 'Av. Orillas del Zamora y Santiago de las Montañas', -3.9832096950697675, -79.20245714485645, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '126', NULL, NULL, NULL, ''),
(374, '126', 'Av. Orillas del Zamora y Santiago de las Montañas', -3.9831555115354296, -79.20234985649586, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', '005', NULL, NULL, NULL, ''),
(375, '127', 'Salvador Bustamante Celi y Agustín Carrión Palacios', -3.972314719367181, -79.20170411467552, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, ''),
(376, '128', 'Av. Manuel Benjamín Carrión y Tomas Rodrigues', -4.013092372685838, -79.20582264661789, NULL, NULL, 'NORTE-SUR', 'INCANDESCENTE', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creencias`
--

CREATE TABLE IF NOT EXISTS `creencias` (
  `cre_id` int(11) NOT NULL COMMENT 'Indica el identificador de creecia',
  `cre_codigo` varchar(20) NOT NULL,
  `cre_descripcion` varchar(100) NOT NULL COMMENT 'Indica la descripción de la creencia',
  PRIMARY KEY (`cre_id`),
  UNIQUE KEY `cre_id_UNIQUE` (`cre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `creencias`
--

INSERT INTO `creencias` (`cre_id`, `cre_codigo`, `cre_descripcion`) VALUES
(1, 'hay_comunicacion', 'Hay  comunicación'),
(2, 'No_hay_comunicacion', 'No hay comunicación'),
(3, 'hay_accidente', 'Hay Accidente'),
(4, 'No_hay_accidente', 'No hay accidente'),
(5, 'hay_nuevo_agente', 'Nuevo Agente'),
(6, 'No_hay_angente', 'No existe agente'),
(7, 'congestionamiento', 'Hay congestionamiento'),
(8, 'no_congestionamiento', 'No hay congestionamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE IF NOT EXISTS `deseos` (
  `des_id` int(11) NOT NULL AUTO_INCREMENT,
  `des_codigo` varchar(50) NOT NULL,
  `des_descripcion` varchar(100) NOT NULL COMMENT 'Indica la descripcion del deseo',
  PRIMARY KEY (`des_id`),
  UNIQUE KEY `des_id_UNIQUE` (`des_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`des_id`, `des_codigo`, `des_descripcion`) VALUES
(1, 'accidente', 'Informar accidente'),
(2, 'congestionamiento', 'Informar congestionamiento'),
(3, 'nuevo_agente', 'existe nuevo agente'),
(4, 'buscar_ruta', 'ruta optima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Indica el identificador del usuario',
  `usu_nombre` varchar(45) NOT NULL COMMENT 'Indica el nombre del usuario',
  `usu_clave` varchar(45) NOT NULL COMMENT 'Indica la clave del usuario',
  PRIMARY KEY (`usu_id`),
  UNIQUE KEY `usu_id_UNIQUE` (`usu_id`),
  UNIQUE KEY `usu_nombre_UNIQUE` (`usu_nombre`),
  UNIQUE KEY `usu_clave_UNIQUE` (`usu_clave`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_nombre`, `usu_clave`) VALUES
(1, 'admin', 'admin'),
(2, 'admin1', 'admin1'),
(12, 'robert', 'wuobert');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
