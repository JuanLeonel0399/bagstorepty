-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-07-2024 a las 03:15:04
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
(69, 45, 3, 102.99, 1, 0),
(70, 46, 1, 65.99, 1, 0),
(71, 46, 2, 75.00, 1, 0),
(72, 46, 3, 102.99, 1, 0),
(73, 46, 6, 115.25, 1, 0),
(74, 47, 3, 102.99, 1, 0),
(75, 47, 2, 75.00, 1, 0),
(76, 47, 1, 65.99, 1, 0),
(77, 48, 3, 102.99, 1, 0),
(78, 48, 1, 65.99, 1, 0),
(79, 48, 2, 75.00, 1, 0),
(80, 49, 1, 65.99, 1, 0),
(81, 49, 2, 75.00, 1, 0),
(82, 50, 3, 102.99, 1, 0),
(83, 50, 2, 75.00, 1, 0),
(84, 50, 1, 65.99, 1, 0),
(85, 51, 2, 75.00, 1, 0),
(86, 51, 3, 102.99, 1, 0),
(87, 52, 1, 65.99, 1, 0),
(88, 52, 2, 75.00, 1, 0),
(89, 52, 3, 102.99, 1, 0),
(90, 53, 3, 102.99, 1, 0),
(91, 53, 2, 75.00, 1, 0);

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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(3, 'maylin@gmail.com', '$2y$10$k/CXs0zRx3MPYRuixU3pNuvhtjyubw/3JD31MkrB2T6fDnVG8gPHO'),
(4, 'jason@gmail.com', '$2y$10$eZ17KfpqtvM3rzVsw0NgNeYlwfSMjosZzfA8npif1MDydZPDqkVza'),
(5, 'adrian@gmail.com', '$2y$10$a5Nnccv8thdS8lbZ3zAwGuYTAZFnAd/VtBa9BndqfNouyeVHYZElq'),
(6, 'carlos@gmail.com', '$2y$10$gX39amgYTX333qUCQRQnSu7ll8r5kC9/3RMeBX4rW7VmzlRErvRsO');

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
(45, 'bhg74fl07notmk3f4acubadh9l', '{\"id\":\"PAYID-M2HC63Y5YS71188A2708140P\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4BM73470AS8462840\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 177.99USD\",\"custom\":\"bhg74fl07notmk3f4acubadh9l#sZQfFksEeINUYzXwRutwMQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"7X755197A1790101G\",\"state\":\"completed\",\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"9.91\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HC63Y5YS71188A2708140P\",\"create_time\":\"2024-07-10T06:51:49Z\",\"update_time\":\"2024-07-10T06:51:49Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7X755197A1790101G\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7X755197A1790101G/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HC63Y5YS71188A2708140P\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T06:51:27Z\",\"update_time\":\"2024-07-10T06:51:49Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HC63Y5YS71188A2708140P\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 01:50:50', 'jennet@gmail.com', 177.99, 'completo'),
(46, 'afjva6v3hma6rqjs5g4hcgtet3', '{\"id\":\"PAYID-M2HNOHQ0UY435553R762293K\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"33G450398D500331K\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"359.23\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"359.23\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 359.23USD\",\"custom\":\"afjva6v3hma6rqjs5g4hcgtet3#pfKxHVHhIGB/RXIUrt9CrA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"7RN875919P530151E\",\"state\":\"completed\",\"amount\":{\"total\":\"359.23\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"359.23\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"19.70\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HNOHQ0UY435553R762293K\",\"create_time\":\"2024-07-10T18:50:48Z\",\"update_time\":\"2024-07-10T18:50:48Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7RN875919P530151E\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7RN875919P530151E/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HNOHQ0UY435553R762293K\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T18:46:54Z\",\"update_time\":\"2024-07-10T18:50:48Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HNOHQ0UY435553R762293K\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 13:46:43', 'mcclean0308@gmail.com', 359.23, 'completo'),
(47, 'afjva6v3hma6rqjs5g4hcgtet3', '{\"id\":\"PAYID-M2HNWTQ0YY16720AV080442X\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"1BS61724KW4421258\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 243.98USD\",\"custom\":\"afjva6v3hma6rqjs5g4hcgtet3#ZICHLFl5O7pm6vNYl/qscw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"8WU64762G3679502G\",\"state\":\"completed\",\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"13.47\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HNWTQ0YY16720AV080442X\",\"create_time\":\"2024-07-10T19:04:59Z\",\"update_time\":\"2024-07-10T19:04:59Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8WU64762G3679502G\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8WU64762G3679502G/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HNWTQ0YY16720AV080442X\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T19:04:46Z\",\"update_time\":\"2024-07-10T19:04:59Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HNWTQ0YY16720AV080442X\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 14:04:38', 'andreajuan@gmail.com', 243.98, 'completo'),
(48, 'afjva6v3hma6rqjs5g4hcgtet3', '{\"id\":\"PAYID-M2HOBQA2NT66512BW423541Y\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4BU721354A948943F\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 243.98USD\",\"custom\":\"afjva6v3hma6rqjs5g4hcgtet3#2gTL3p77bK1TOc2BVuyUYQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"6P992125H20021606\",\"state\":\"completed\",\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"13.47\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HOBQA2NT66512BW423541Y\",\"create_time\":\"2024-07-10T19:28:14Z\",\"update_time\":\"2024-07-10T19:28:14Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6P992125H20021606\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6P992125H20021606/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HOBQA2NT66512BW423541Y\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T19:28:00Z\",\"update_time\":\"2024-07-10T19:28:14Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HOBQA2NT66512BW423541Y\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 14:27:56', 'tamayra@gmail.com', 243.98, 'completo'),
(49, 'afjva6v3hma6rqjs5g4hcgtet3', '{\"id\":\"PAYID-M2HOC5Q02M41138NY441420T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"04R18204UB076815V\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"140.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"140.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 140.99USD\",\"custom\":\"afjva6v3hma6rqjs5g4hcgtet3#zOmlH/QyU3g3EhKxFKHT4A==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"6BC711545S833850S\",\"state\":\"completed\",\"amount\":{\"total\":\"140.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"140.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"7.91\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HOC5Q02M41138NY441420T\",\"create_time\":\"2024-07-10T19:31:10Z\",\"update_time\":\"2024-07-10T19:31:10Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6BC711545S833850S\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6BC711545S833850S/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HOC5Q02M41138NY441420T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T19:31:02Z\",\"update_time\":\"2024-07-10T19:31:10Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HOC5Q02M41138NY441420T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 14:30:58', 'jennet@gmail.com', 140.99, 'completo'),
(50, 'tqh3us129uk2ceakeqilika1si', '{\"id\":\"PAYID-M2HPMJA8XY47432AM301792T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"95T54309D3063574P\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 243.98USD\",\"custom\":\"tqh3us129uk2ceakeqilika1si#WyR31l3LdueiSvAqlAKZwA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"83D2169525770670L\",\"state\":\"completed\",\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"13.47\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HPMJA8XY47432AM301792T\",\"create_time\":\"2024-07-10T20:59:42Z\",\"update_time\":\"2024-07-10T20:59:42Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/83D2169525770670L\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/83D2169525770670L/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HPMJA8XY47432AM301792T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T20:59:16Z\",\"update_time\":\"2024-07-10T20:59:42Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HPMJA8XY47432AM301792T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 15:59:12', 'jennet@gmail.com', 243.98, 'completo'),
(51, '4h3gkcuq3diss08goj4ge85m3j', '{\"id\":\"PAYID-M2HQR6Y5P855261PV0028255\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"9F157808LY0077000\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 177.99USD\",\"custom\":\"4h3gkcuq3diss08goj4ge85m3j#S6Xyngukpqd/GsNzVHClyg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"73D18484M7618102D\",\"state\":\"completed\",\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"9.91\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HQR6Y5P855261PV0028255\",\"create_time\":\"2024-07-10T22:19:52Z\",\"update_time\":\"2024-07-10T22:19:52Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/73D18484M7618102D\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/73D18484M7618102D/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HQR6Y5P855261PV0028255\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-10T22:19:39Z\",\"update_time\":\"2024-07-10T22:19:52Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HQR6Y5P855261PV0028255\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 17:19:35', 'jennet@gmail.com', 177.99, 'completo'),
(52, '2nqlrk58mpsnp846uphtev4dnh', '{\"id\":\"PAYID-M2HSUMY83D79964UT874052T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"45806553S5133822M\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 243.98USD\",\"custom\":\"2nqlrk58mpsnp846uphtev4dnh#+XP955smeOGGg8HPrZvoXA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"63S59464EK641382D\",\"state\":\"completed\",\"amount\":{\"total\":\"243.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"243.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"13.47\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HSUMY83D79964UT874052T\",\"create_time\":\"2024-07-11T00:41:44Z\",\"update_time\":\"2024-07-11T00:41:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/63S59464EK641382D\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/63S59464EK641382D/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HSUMY83D79964UT874052T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-11T00:41:23Z\",\"update_time\":\"2024-07-11T00:41:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HSUMY83D79964UT874052T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 19:41:19', 'jennet@gmail.com', 243.98, 'completo'),
(53, '2nqlrk58mpsnp846uphtev4dnh', '{\"id\":\"PAYID-M2HTD4A2S357112YN405313B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"8NH11156RG381093X\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-m2nxd31544872@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"PB7C72F5YY4N8\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"},\"phone\":\"5078851934\",\"country_code\":\"PA\"}},\"transactions\":[{\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"3N9KSBL5283LY\",\"email\":\"sb-z68t031588849@business.example.com\"},\"description\":\"Compra de productos a Bags Store PTY: 177.99USD\",\"custom\":\"2nqlrk58mpsnp846uphtev4dnh#JEix51+A96nstGcSDxnVdw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"Free Trade Zone\",\"city\":\"Panama City\",\"state\":\"Panama City\",\"postal_code\":\"0801\",\"country_code\":\"PA\"}},\"related_resources\":[{\"sale\":{\"id\":\"72P06342R0024202S\",\"state\":\"completed\",\"amount\":{\"total\":\"177.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"177.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"9.91\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-M2HTD4A2S357112YN405313B\",\"create_time\":\"2024-07-11T01:14:37Z\",\"update_time\":\"2024-07-11T01:14:37Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/72P06342R0024202S\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/72P06342R0024202S/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HTD4A2S357112YN405313B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2024-07-11T01:14:24Z\",\"update_time\":\"2024-07-11T01:14:37Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-M2HTD4A2S357112YN405313B\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2024-07-10 20:14:19', 'carlos@gmail.com', 177.99, 'completo');

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
