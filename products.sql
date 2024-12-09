-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2024 at 04:05 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `base_price` float NOT NULL,
  `stocks` int NOT NULL,
  `unit_price` float NOT NULL,
  `total_price` float NOT NULL,
  `image_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='product inventory';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;


--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_name`, `product_description`, `category_id`, `base_price`, `stocks`, `unit_price`, `total_price`, `image_url`, `created_at`, `updated_at`) VALUES
('Gaming PC Build', 'High-end gaming PC', 1, 800, 10, 1200, 12000, 'public/uploads/products/cpu.jpg', NOW(), NOW()),
('Mid-range Gaming PC', 'Balanced gaming PC', 1, 600, 15, 900, 13500, 'public/uploads/products/gpu.jpg', NOW(), NOW()),
('Budget Gaming PC', 'Affordable gaming PC', 1, 400, 20, 600, 12000, 'public/uploads/products/mobo.png', NOW(), NOW()),
('Graphics Card', 'NVIDIA RTX 3080', 2, 700, 5, 900, 4500, 'public/uploads/products/cpu.jpg', NOW(), NOW()),
('Motherboard', 'ASUS ROG Strix B550', 2, 150, 12, 200, 2400, 'public/uploads/products/ram.jpg', NOW(), NOW()),
('CPU', 'Intel Core i7-11700K', 2, 300, 8, 400, 3200, 'public/uploads/products/psu.jpg', NOW(), NOW()),
('RAM', 'Corsair Vengeance 16GB', 2, 80, 20, 120, 2400, 'public/uploads/products/ram.jpg', NOW(), NOW()),
('SSD', 'Samsung 970 EVO 1TB', 2, 120, 10, 180, 1800, 'public/uploads/products/cpu.jpg', NOW(), NOW()),
('HDD', 'Seagate Barracuda 2TB', 2, 50, 15, 80, 1200, 'public/uploads/products/mobo.png', NOW(), NOW()),
('Power Supply', 'Corsair 750W', 2, 90, 10, 130, 1300, 'public/uploads/products/gpu.jpg', NOW(), NOW()),
('Cooling System', 'Cooler Master Hyper 212', 2, 40, 25, 70, 1750, 'public/uploads/products/ram.jpg', NOW(), NOW()),
('PC Case', 'NZXT H510', 2, 70, 15, 110, 1650, 'public/uploads/products/psu.jpg', NOW(), NOW()),
('Monitor', 'Acer 24/" 144Hz', 3, 200, 7, 300, 2100, 'public/uploads/products/mobo.png', NOW(), NOW()),
('Keyboard', 'Logitech Mechanical', 3, 60, 20, 100, 2000, 'public/uploads/products/cpu.jpg', NOW(), NOW()),
('Mouse', 'Razer DeathAdder', 3, 40, 25, 80, 2000, 'public/uploads/products/gpu.jpg', NOW(), NOW()),
('Gaming Headset', 'HyperX Cloud II', 3, 50, 18, 90, 1620, 'public/uploads/products/gpu.jpg', NOW(), NOW()),
('Capture Card', 'Elgato HD60 S', 3, 150, 10, 220, 2200, 'public/uploads/products/psu.jpg', NOW(), NOW()),
('Webcam', 'Logitech C920', 3, 70, 12, 100, 1200, 'public/uploads/products/gpu.jpg', NOW(), NOW()),
('Microphone', 'Blue Yeti', 3, 120, 8, 180, 1440, 'public/uploads/products/ram.jpg', NOW(), NOW()),
('Router', 'TP-Link AC750', 4, 30, 25, 50, 1250, 'public/uploads/products/psu.jpg', NOW(), NOW()),
('USB Hub', 'Anker 7-Port', 4, 25, 30, 40, 1200, 'public/uploads/products/mobo.png', NOW(), NOW()),
('Gaming Chair', 'Secretlab Titan', 4, 300, 5, 450, 2250, 'public/uploads/products/ram.jpg', NOW(), NOW()),
('Desk', 'IKEA Gaming Desk', 4, 150, 10, 220, 2200, 'public/uploads/products/mobo.png', NOW(), NOW()),
('Surge Protector', 'Belkin 12-Outlet', 4, 20, 50, 30, 1500, 'public/uploads/products/psu.jpg', NOW(), NOW());


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
