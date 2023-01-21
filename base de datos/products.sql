-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2023 a las 06:01:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `shipping_cost`, `description`, `category_id`, `brand_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Pro', 'macbook-pro', '15 pulgadas, 1TB HDD, 32GB RAM', 2499.99, 29.99, 'MackBook Pro', 1, 1, 'macbook-pro.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(2, 'Dell Vostro 3557', 'vostro-3557', '15 pulgadas, 1TB HDD, 8GB RAM', 1499.99, 19.99, 'Dell Vostro 3557', 1, 2, 'dell-v3557.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(3, 'iPhone 11 Pro', 'iphone-11-pro', '6.1 pulgadas, 64GB 4GB RAM', 649.99, 14.99, 'iPhone 11 Pro', 2, 1, 'iphone-11-pro.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(4, 'Remax 610D Headset', 'remax-610d', '6.1 pulgadas, 64GB 4GB RAM', 8.99, 1.89, 'Remax 610D Headset', 3, 3, 'remax-610d.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(5, 'Samsung LED TV', 'samsung-led-24', '24 pulgadas, LED Display, Resolución 1366 x 768', 41.99, 12.59, 'Samsung LED TV', 4, 4, 'samsung-led-24.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(6, 'Samsung Camara Digital', 'samsung-mv800', '16.1MP, 5x Optical Zoom', 144.99, 13.39, 'Samsung Digital Camera', 5, 4, 'samsung-mv800.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31'),
(7, 'Huawei GR 5 2017', 'gr5-2017', '5.5 pulgadas, 32GB 4GB RAM', 148.99, 6.79, 'Huawei GR 5 2017', 2, 5, 'gr5-2017.png', '2023-01-21 09:22:31', '2023-01-21 09:22:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
