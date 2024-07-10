-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-07-2024 a las 20:06:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `idProd` int(11) NOT NULL,
  `PrecioUni` decimal(20,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descargado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `idVenta`, `idProd`, `PrecioUni`, `cantidad`, `descargado`) VALUES
(67, 44, 2, 300.00, 1, 0),
(68, 45, 2, 75.00, 1, 0),
(69, 45, 3, 102.99, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(20,2) NOT NULL,
  `descpricion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descpricion`, `imagen`) VALUES
(1, 'BOLSA DE LONA PLEGABLE VERDE LEALAND', 65.99, 'Esta bolsa que combina la funcionalidad con el diseño es perfecta para escapadas de fin de semana o ir al gimnasio. Tiene un compartimento muy espacioso en el que podrás introducir tu equipo deportivo completo y dos bolsillos laterales de botones para objetos pequeños.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta9eaaebc68551ab1/60dc145e993b04384644a698/12-55ae91d09c0a9cea56eb414506500e7ac.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640'),
(2, 'BANDOLERA DE LONA GRIS OSCURO', 75.00, 'Las bandoleras de este tipo ponen su foco de atención en el almacenamiento. Por lo que además de mostrar un diseño simple, este modelo también puede alojar todas tus pertenencias. Ideal para los trabajadores más informales o estudiantes. Esta bandolera está fabricada con un material de lona grueso y muestra acabados de piel.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd5fc63d8ef546e38/65608e4521875d04076fc9b8/zeismont_bags_paige6611_1_grr.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640'),
(3, 'MOCHILA CLÁSICA GRIS Y CANELA STALTER', 102.99, 'Una bolsa de estilo mochila para transportar todo lo que necesitas. Está confeccionada con un resistente tejido de lona de algodón, cuero auténtico resistente, fuertes cremalleras YKK y adornos de metal pulido.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb271836187d993ad/60dbb240ddcd520eeb8b2561/10-1_4_1_408.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640'),
(4, 'MOCHILA NEGRA LAWRENCE', 63.95, 'Esta sencilla mochila de Lazy Bear ha sido confeccionada con una tela muy resistente para que aguante todo lo que le eches. Su espacioso interior está revestido con un forro atractivo y protector, y además cuenta con compartimentos acolchados para que tu portátil y tablet no sufran daños.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt0fbf7ab1591e2ebf/60dbc76bfd14d30f3eae6bee/4-2_377.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640'),
(5, 'RIÑONERA PLEGABLE VERDE LANNIE', 40.35, 'Equipada con 4 bolsillos con cremallera, esta riñonera está diseñada para el explorador urbano.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte93637006bec513b/60dc09f0cbc6070f5c3dd1b4/16-57af98e39242aa7620f862dd1a7b3b932.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640'),
(6, 'BOLSO BANDOLERA NEGRO ESTILO VINTAGE', 115.25, 'Mantenga su ajetreada vida organizada con este bolso de mensajero para hombre, equipado con todas las opciones de almacenamiento que necesita.', 'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt352f055551e1af1b/64c3bcf90cbb4613d270b088/zeismont_bags_-_virginland8060_c2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `claveTran` varchar(250) NOT NULL,
  `paypalDts` text NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(5000) NOT NULL,
  `total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `claveTran`, `paypalDts`, `fecha`, `correo`, `total`, `status`) VALUES
(44, '1250', 'ddgdgf', '2024-07-10 07:32:59', 'jjj@ja.com', 300.00, 'pendiente'),
(45, 'bhg74fl07notmk3f4acubadh9l', '{\"id\":\"PAYID-M2HC63Y5YS71188A2708140P\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4BM73470AS8462840\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 177.99USD\",\"custom\":\"bhg74fl07notmk3f4acubadh9l#sZQfFksEeINUYzXwRutwMQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"7X755197A1790101G\",\"state\":\"completed\",\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"9.91\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HC63Y5YS71188A2708140P\",\"create_time\":\"2024-07-10T06:51:49Z\",\"update_time\":\"2024-07-10T06:51:49Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7X755197A1790101G\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7X755197A1790101G/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HC63Y5YS71188A2708140P\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T06:51:27Z\",\"update_time\":\"2024-07-10T06:51:49Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HC63Y5YS71188A2708140P\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 01:50:50', 'jennet@gmail.com', 177.99, 'completo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVenta` (`idVenta`),
  ADD KEY `idProd` (`idProd`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`idProd`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
