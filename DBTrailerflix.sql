CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'serie'),(2,'serie'),(3,'serie'),(4,'serie'),(5,'serie'),(6,'pelicula'),(7,'pelicula'),(8,'pelicula'),(9,'serie'),(10,'serie'),(11,'serie'),(12,'serie'),(13,'serie'),(14,'serie'),(15,'serie'),(16,'serie'),(17,'serie'),(18,'pelicula'),(19,'pelicula'),(20,'pelicula'),(21,'pelicula'),(22,'pelicula'),(23,'pelicula'),(24,'pelicula'),(25,'pelicula'),(26,'pelicula'),(27,'pelicula'),(28,'pelicula'),(29,'pelicula'),(30,'pelicula'),(31,'pelicula'),(32,'pelicula'),(33,'pelicula'),(34,'pelicula'),(35,'pelicula'),(36,'pelicula');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:20

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contenido`
--

DROP TABLE IF EXISTS `contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido` (
  `idContenido` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `idCategoria` int NOT NULL,
  `resumen` text NOT NULL,
  `temporadas` int DEFAULT NULL,
  `idTrailer` int DEFAULT NULL,
  PRIMARY KEY (`idContenido`),
  UNIQUE KEY `idContenido` (`idContenido`),
  KEY `contenido_fk3` (`idCategoria`),
  KEY `contenido_fk6` (`idTrailer`),
  CONSTRAINT `contenido_fk3` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `contenido_fk6` FOREIGN KEY (`idTrailer`) REFERENCES `trailer` (`idTrailer`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido`
--

LOCK TABLES `contenido` WRITE;
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` VALUES (1,'/posters/1.jpg','The Crown',1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,NULL),(2,'/posters/2.jpg','Riverdale',2,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,NULL),(3,'/posters/3.jpg','The Mandalorian',3,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,1),(4,'/posters/4.jpg','The Umbrella Academy',4,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',1,NULL),(5,'/posters/5.jpg','Gambito de Dama',5,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',1,NULL),(6,'/posters/6.jpg','Enola Holmes',6,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',NULL,NULL),(7,'/posters/7.jpg','Guasón',7,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',NULL,2),(8,'/posters/8.jpg','Avengers: Endgame',8,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',NULL,NULL),(9,'/posters/9.jpg','Juego de Tronos',9,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',8,NULL),(10,'/posters/10.jpg','The Flash',10,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',6,NULL),(11,'/posters/11.jpg','The Big Bang Theory',11,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',12,3),(12,'/posters/12.jpg','Friends',12,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',10,NULL),(13,'/posters/13.jpg','Anne with an \"E\"',13,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',2,NULL),(14,'/posters/14.jpg','Expedientes Secretos \"X\"',14,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \"siniestro\".',11,4),(15,'/posters/15.jpg','Chernobyl',15,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',1,5),(16,'/posters/16.jpg','Westworld',16,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',3,6),(17,'/posters/17.jpg','Halt and Catch Fire',17,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',4,7),(18,'/posters/18.jpg','Ava',18,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',NULL,NULL),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',19,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',NULL,NULL),(20,'/posters/20.jpg','Archivo',20,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',NULL,8),(21,'/posters/21.jpg','Jumanji - The next level',21,'Las aventuras continúan en el fantástico mundo del video juego Jumanji,\n donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se \n han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿\n dónde está el resto de la gente?',NULL,9),(22,'/posters/22.jpg','3022',22,'La película está ambientada en\n una estación espacial en el futuro. La tripulación sufre un estrés traumático y \n considera abandonar su misión después de observar lo que creen que es la destrucción \nde la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',NULL,10),(23,'/posters/23.jpg','IT - Capítulo 2',23,'En este segundo capitulo Han pasado 27 años desde que el \n \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro\n  y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado\n  de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de\n  su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar\n  sus traumas de la infancia.',NULL,11),(24,'/posters/24.jpg','Pantera Negra',24,'T’Challa (Chadwick Boseman) regresa a su \nhogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzada\ns del planeta.',NULL,12),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',25,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA\n LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll\n Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para\n Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',NULL,13),(26,'/posters/26.jpg','Centígrados',26,'Una joven pareja estadounidense viaja a las montañas árticas de \nNoruega. Después de detenerse durante u\nna tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',NULL,NULL),(27,'/posters/27.jpg','DOOM: Aniquilación',27,'Doom: Aniquilación sigue a un grupo\n de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir\n que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',NULL,14),(28,'/posters/28.jpg','Contagio',28,'De repente, sin saber cuál es su origen, aunque\n todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal \n comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio s\n e produce por mero contact\no entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',NULL,15),(29,'/posters/29.jpg','Viuda Negra',29,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',NULL,16),(30,'/posters/30.jpg','The Martian',30,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',NULL,17),(31,'/posters/31.jpg','Ex-Machina',31,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',NULL,18),(32,'/posters/32.jpg','Jurassic World',32,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',NULL,NULL),(33,'/posters/33.jpg','Soy leyenda',33,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en \nla ciudad de Nueva York lucha valientemente para encontrar una cura.',NULL,19),(34,'/posters/34.jpg','El primer hombre en la luna',34,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a l\na luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo c\nomprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de Ja\nmes R. Hansen, que explora el sacrificio y el precio que representó, \ntanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',NULL,NULL),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',35,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha\naún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas c\nolosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. \nAnte esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellev\nar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima.\n Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pente\n cost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y\n de ataque. Con la Tierra en ruinas e\n intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',NULL,NULL);
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:24

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contenidogeneros`
--

DROP TABLE IF EXISTS `contenidogeneros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidogeneros` (
  `idContenido` int NOT NULL,
  `idGenero` int NOT NULL,
  UNIQUE KEY `idContenido` (`idContenido`),
  KEY `contenidoGeneros_fk1` (`idGenero`),
  CONSTRAINT `contenidoGeneros_fk0` FOREIGN KEY (`idContenido`) REFERENCES `contenido` (`idContenido`),
  CONSTRAINT `contenidoGeneros_fk1` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidogeneros`
--

LOCK TABLES `contenidogeneros` WRITE;
/*!40000 ALTER TABLE `contenidogeneros` DISABLE KEYS */;
INSERT INTO `contenidogeneros` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35);
/*!40000 ALTER TABLE `contenidogeneros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:25

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contenidorepartos`
--

DROP TABLE IF EXISTS `contenidorepartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidorepartos` (
  `idContenido` int NOT NULL,
  `idReparto` int NOT NULL,
  PRIMARY KEY (`idContenido`,`idReparto`),
  UNIQUE KEY `idContenido_UNIQUE` (`idContenido`),
  KEY `contenidoActores_fk1` (`idReparto`),
  CONSTRAINT `contenidoActores_fk0` FOREIGN KEY (`idContenido`) REFERENCES `contenido` (`idContenido`),
  CONSTRAINT `contenidoActores_fk1` FOREIGN KEY (`idReparto`) REFERENCES `repartos` (`idReparto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidorepartos`
--

LOCK TABLES `contenidorepartos` WRITE;
/*!40000 ALTER TABLE `contenidorepartos` DISABLE KEYS */;
INSERT INTO `contenidorepartos` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35);
/*!40000 ALTER TABLE `contenidorepartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:22

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `idGenero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Drama, Hechos verídicos'),(2,'Drama, Misterio, Ficción'),(3,'Ciencia Ficción, Fantasía'),(4,'Ciencia Ficción, Fantasía'),(5,'Drama, Ficción, Sucesos'),(6,'Ficción, Drama, Misterio'),(7,'Crimen, Suspenso, Drama'),(8,'Aventura, Sci-Fi, Acción'),(9,'Aventura, Fantasía, Drama'),(10,'Ciencia Ficción, Fantasía'),(11,'Comedia, Fantasía, Ficción'),(12,'Comedia, Familia, Drama'),(13,'Drama, Familia, Western'),(14,'Drama, Ciencia Ficción'),(15,'Drama, Hechos verídicos'),(16,'Western, Ciencia Ficción'),(17,'Ficción, Drama, Tecnología'),(18,'Acción, Drama, Suspenso'),(19,'Acción, Ficción, Comedia'),(20,'Acción, Sci-Fi, Suspenso'),(21,'Comedia, Ficción, Aventura'),(22,'Ciencia Ficción, Suspenso'),(23,'Terror, Suspenso, Fantasía'),(24,'Acción, Aventura, Fantasía'),(25,'Drama, Historia, Aventura'),(26,'Drama, Suspenso, Intriga'),(27,'Acción, Sci-Fi, Terror'),(28,'Drama, Suspenso, ¿Ficción?'),(29,'Drama, Acción, Aventura'),(30,'Drama, Sci-Fi, Aventura'),(31,'Drama, Sci-Fi, Suspenso'),(32,'Suspenso, Aventura, Ficción'),(33,'Drama, Terror, Ficción'),(34,'Drama, Hechos veríficos'),(35,'Acción, Fantasía, Sci-Fi'),(36,'Ciencia Ficción, Acción');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:25

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `repartos`
--

DROP TABLE IF EXISTS `repartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartos` (
  `idReparto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idReparto`),
  UNIQUE KEY `idReparto` (`idReparto`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repartos`
--

LOCK TABLES `repartos` WRITE;
/*!40000 ALTER TABLE `repartos` DISABLE KEYS */;
INSERT INTO `repartos` VALUES (1,'Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter'),(2,'Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick'),(3,'Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito'),(4,'Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page'),(5,'Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin'),(6,'Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar'),(7,'Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham'),(8,'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner'),(9,'Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau'),(10,'Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh'),(11,'Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik'),(12,'Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc'),(13,'Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann'),(14,'Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood'),(15,'Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis'),(16,'Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth'),(17,'Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh'),(18,'Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd'),(19,'Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina'),(20,'Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones'),(21,'Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas'),(22,'Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj'),(23,'Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan'),(24,'hadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira, Martin Freeman, Daniel Kaluuya'),(25,'Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal'),(26,'Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos'),(27,'Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova'),(28,'Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow'),(29,'Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone'),(30,'Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara'),(31,'Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan'),(32,'Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D\'Onofrio, Omar Sy, Nick Robinson, Judy Greer'),(33,'Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson'),(34,'Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit'),(35,'John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman'),(36,'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Hugo Weaving');
/*!40000 ALTER TABLE `repartos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:23

CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trailer`
--

DROP TABLE IF EXISTS `trailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailer` (
  `idTrailer` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTrailer`),
  UNIQUE KEY `idTrailer` (`idTrailer`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailer`
--

LOCK TABLES `trailer` WRITE;
/*!40000 ALTER TABLE `trailer` DISABLE KEYS */;
INSERT INTO `trailer` VALUES (1,'https://www.youtube.com/embed/aOC8E8z_ifw'),(2,'https://www.youtube.com/embed/zAGVQLHvwOY'),(3,'https://www.youtube.com/embed/WBb3fojgW0Q'),(4,'https://www.youtube.com/embed/KKziOmsJxzE'),(5,'https://www.youtube.com/embed/s9APLXM9Ei8'),(6,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(7,'https://www.youtube.com/embed/pWrioRji60A'),(8,'https://www.youtube.com/embed/VHSoCnDioAo'),(9,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(10,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(11,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(12,'https://www.youtube.com/embed/BE6inv8Xh4A'),(13,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(14,'https://www.youtube.com/embed/nat3u3gAVLE'),(15,'https://www.youtube.com/embed/4sYSyuuLk5g'),(16,'https://www.youtube.com/embed/BIn8iANwEog'),(17,'https://www.youtube.com/embed/XvB58bCVfng'),(18,'https://www.youtube.com/embed/XRYL5spvEcI'),(19,'https://www.youtube.com/embed/dtKMEAXyPkg'),(20,'https://www.youtube.com/watch?v=vKQi3bBA1y8');
/*!40000 ALTER TABLE `trailer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 21:15:27