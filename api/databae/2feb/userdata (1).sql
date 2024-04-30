-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 06:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_name`, `banner_image`) VALUES
(1, 'banner 1', 'https://rukminim2.flixcart.com/fk-p-flap/1600/270/image/fba99b97b0581fb3.jpeg?q=20'),
(2, 'banner 2', 'https://rukminim2.flixcart.com/fk-p-flap/1600/270/image/fd835e5163084483.jpg?q=20');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Category_Name` varchar(100) NOT NULL,
  `Category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Category_Name`, `Category_image`) VALUES
(1, 'Mobiles', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/38a459d6d1fc930a.png?q=100'),
(2, 'Fashion', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/74f0eb6cc10e2743.png?q=100'),
(3, 'Home\r\n', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/38d4fbb64c70a3ff.png?q=100'),
(4, 'Electronics', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/629b0a6f61037ae6.png?q=100'),
(5, 'Beauty', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/f925cfe5ecdf6acf.png?q=100'),
(6, 'Grocery', 'https://rukminim2.flixcart.com/fk-p-flap/64/64/image/711174cfe1d2fa75.png?q=100');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Price` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `star` double NOT NULL,
  `fee` double NOT NULL,
  `wishlist_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Category_id`, `Name`, `short_name`, `Description`, `Price`, `Image`, `quantity`, `star`, `fee`, `wishlist_status`) VALUES
(1, 1, 'Redmi 13C 5G (Startrail Silver, 6GB RAM, 128GB Storage) | MediaTek Dimensity 6100+ 5G | 90Hz Display', 'REDMI 13c 5G (Startrail Silver, 128 GB)  (6 GB RAM)', 'Processor: Powerful MediaTek Dimensity 6100+ 5G SoC | 16GB of RAM including 8GB virtual | 6.74\" HD+ ', 14000, 'https://m.media-amazon.com/images/I/41N1wPvYQTL._SX300_SY300_QL70_FMwebp_.jpg', 10, 5, 2, 0),
(2, 1, 'itel A70 Smartphone | 12GB* RAM, 128GB Storage | 8MP AI Selfie Camera | 5000mAh Battery | Type-C Charging | Dynamic Bar | Starlish Black', 'itel A70 (Starlish Black, 128 GB)  (4 GB RAM)', 'Powerful Performance: Up to 12GB RAM with Memory Fusion & 256GB Storage\nCrystal Clear Shots: 13MP AI', 7999, 'https://m.media-amazon.com/images/I/71uUtqYzxOL._SX679_.jpg', 10, 3.5, 2, 0),
(4, 1, 'realme narzo 50i Prime (Mint Green 4GB RAM+64GB Storage) Octa-core Processor |5000 mAh Battery', 'realme narzo 50i Prime (Mint Green 4GB RAM+64GB Storage)', 'Powerful Unisoc T612 processor for smooth day to day performance |Superb performance with an AnTuTu ', 6399, 'https://m.media-amazon.com/images/I/4177-fM6ahL._SX300_SY300_QL70_FMwebp_.jpg', 10, 4, 2, 0),
(5, 1, 'itel A70 Smartphone | 12GB* RAM, 128GB Storage | 8MP AI Selfie Camera | 5000mAh Battery | Type-C Cha', 'itel A70 Smartphone | 12GB* RAM, 128GB Storage', 'Powerful Performance: Up to 12GB RAM with Memory Fusion & 128GB Storage\nCrystal Clear Shots: 13MP AI', 6999, 'https://m.media-amazon.com/images/I/61y103ZjOgL._SX679_.jpg', 10, 5, 2, 0),
(7, 1, 'Apple iPhone 13 (256GB) - Pink', 'Apple iPhone 13 (256GB) - Pink', '15 cm (6.1-inch) Super Retina XDR display\nCinematic mode adds shallow depth of field and shifts focu', 51999, 'https://m.media-amazon.com/images/I/61l9ppRIiqL._AC_UY218_.jpg', 10, 3, 2, 0),
(8, 5, 'Biotique Natural Makeup Matte Diva Pout Lipstick, Brown Sugar Love - 4g', 'Biotique Natural Makeup Matte Diva Pout Lipstick', 'Magicolor is skincare-infused. It is made up of all-natural colour pigments which nourish your lips ', 88, 'https://m.media-amazon.com/images/I/61NHkGpmKoL._SX522_.jpg', 10, 5, 2, 0),
(9, 5, 'PERPAA® Super Matte Nail Polish Set of 2 Colors, Matte Nail Polish Kit, Quick Drying,Long Lasting & Waterproof Matte Finish Nail Art Gifts for Women 6 ml Each (Pink & Purple)', 'PERPAA® Super Matte Nail Polish Set of 2 Colors', 'PACK OF 3 LIPSTICK COMBO: The product comes in an amazing combination of 3 shades that will add a pe', 299, 'https://m.media-amazon.com/images/I/51xIvYaf6OL._SX522_PIbundle-2,TopRight,0,0_AA522SH20_.jpg', 10, 3.2, 2, 0),
(10, 5, 'FACES CANADA Magneteyes Kajal - Black, 0.35g | 24 Hr Long Stay | One Stroke Smooth Glide | Waterproof, Smudgeproof & Fadeproof | Deep Matte Finish | Enriched With Almond Oil & Vitamin E', 'FACES CANADA Magneteyes Kajal ', 'SMUDGE PROOF: The Elle 18 Kajal liner is designed to resist smudging and smearing so that your eyes look pristine at all times. This Elle 18 Kajal pencil is designed to make eye makeup easy and hassle-free, with a creamy and smooth texture that glides on ', 199, 'https://m.media-amazon.com/images/I/81M2+S3FuJL._SX522_.jpg', 10, 4.2, 2, 0),
(11, 5, 'Organic Netra Baby Kajal Water Resistant, Smudgeproof, Longlasting For Normal Skin Type Enriched With Natural & Organic Ingredients With No Harmful Chemicals, Matte Finish, 4g', 'Organic Netra Baby Kajal Water Resistant', '[USDA CERTIFIED ORGANIC INGREDIENTS]: Organic Netra baby kajal is enriched with USDA Certified Organic ingredients. Organic Netra baby kajal has a natural concoction of Organic Coconut Oil, Almond Oil, Castor Oil, Bhimdeni Kapur, BeesWax, and Organic Cow ', 169, 'https://m.media-amazon.com/images/I/71hyIVx-OvL._SX522_.jpg', 10, 3.3, 2, 0),
(12, 4, 'Acer Aspire Lite 12th Gen Intel Core i5-1235U Thin and Light Laptop (Windows 11 Home/8GB RAM/512GB SSD/Intel Iris Xe Graphics) AL15-52, 39.62cm (15.6\") Full HD Display, Metal Body, Steel Gray, 1.6 KG', 'Acer Aspire Lite 12th Gen Intel Core i5-1235U', 'Processor:Intel Core i3-1115G4(up to 4.1 GHz with Intel Turbo Boost Technology(2g),6 MB L3 cache, 2 cores)|Memory: 8 GB DDR4-3200 SDRAM (1 x 8 GB)| Storage: 256 GB PCIe NVMe M.2 SSD\nDisplay & Graphics : 35.6 cm (14\") diagonal, FHD, micro-edge,anti-glare, ', 32990, 'https://m.media-amazon.com/images/I/617rprfdhRL._SX522_.jpg', 10, 2.2, 2, 0),
(13, 4, 'HP Laptop 15s, AMD Ryzen 7 5700U, 15.6-inch (39.6 cm), FHD, 16GB DDR4, 512GB SSD, AMD Radeon Graphics, Backlit KB, Thin & Light, Dual Speakers (Win 11, MSO 2021, Silver, 1.69 kg), ey2001AU', 'HP Laptop 15s, AMD Ryzen 7 5700U, 15.6-inch (39.6 cm), FHD, 16GB DDR4, 512GB SSD', '【4-core AMD Ryzen 3 5300U】8 threads and 4MB L3 cache deliver powerful performance and swift responsiveness. The AMD Radeon graphics help you experience crisp visuals with vivid clarity.\n【Upgraded memory and storage】8GB DDR4 RAM integrates a higher-bandwid', 36990, 'https://m.media-amazon.com/images/I/717A3ZolzpL._SX679_.jpg', 10, 4, 2, 0),
(14, 4, 'Lenovo IdeaPad Slim 3 Intel Core i3-1115G4 11th Gen 15.6\" (39.62cm) FHD Laptop (8GB/256GB SSD/Win 11/Office 2021/3 Month Game Pass/Arctic Grey/1.65Kg), 82H803TXIN', 'Lenovo IdeaPad Slim 3 Intel Core i3 11th Gen 15.6(39.62cm) FHD Laptop (8GB/256GB SSD)', '【4-core AMD Ryzen 3 5300U】8 threads and 4MB L3 cache deliver powerful performance and swift responsiveness. The AMD Radeon graphics help you experience crisp visuals with vivid clarity.\n【Upgraded memory and storage】8GB DDR4 RAM integrates a higher-bandwid', 31990, 'https://m.media-amazon.com/images/I/512QAURU1TL._SX679_.jpg', 10, 3.3, 2, 0),
(15, 4, 'boAt Rockerz 450 Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, Integrated Controls and Dual Modes(Luscious Black)', 'boAt Rockerz 450 Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback', 'Playback- It provides a massive battery backup of upto 15 hours for a superior playback time. Charging Time : 3 Hours\nDrivers- Its 40mm dynamic drivers help pump out immersive HD audio all day long.\nEarcushions- It has been ergonomically designed and stru', 1699, 'https://m.media-amazon.com/images/I/51xxA+6E+xL._SX522_.jpg', 10, 5, 2.2, 0),
(16, 4, 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Furious Red)', 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Furious Red)', 'The perfect way to add some style and stand out from the crowd with the boAt BassHeads 100 \"Hawk\" inspired earphones\nThe stylish BassHeads 100 superior coated wired earphones are a definite fashion statement - wear your attitude with its wide variety of c', 349, 'https://m.media-amazon.com/images/I/61l+14s5QVL._SX522_.jpg', 10, 4.4, 2, 0),
(17, 2, 'Red Tape Men Navy Round Neck Sweatshirt', 'Red Tape Men Navy Round Neck Sweatshirt', 'Product details\r\nMaterial composition60% Cotton, 40% Polyester\r\nSleeve typeLong Sleeve\r\nMaterial typeCotton Blend\r\nFit typeRegular\r\nLengthStandard Length\r\nNeck styleRound Neck\r\nCountry of OriginBangladesh\r\nAbout this item\r\nProduct Type : Sweatshirt\r\nFabric : 60% Cotton 40% Polyester, Fleece, 260 Gsm\r\nSleeve : Long Sleeve\r\nNeck : Round Neck\r\nCare : Machine Wash\r\nAdditional Information\r\nManufacturerMIRZA INTERNATIONAL LTD, Importer:-MIRZA INTERNATIONAL LTD., 14/6, CIVIL LINES, KANPUR-208001\r\nPacke', 499, 'https://m.media-amazon.com/images/I/71NDd0TRlvL._SX679_.jpg', 10, 3, 2, 0),
(18, 2, 'Qube By Fort Collins Men Fleece Hooded Sweatshirt', 'Qube By Fort Collins Men Fleece Hooded', 'Product details\r\nMaterial composition60% Cotton, 40% Polyester\r\nSleeve typeLong Sleeve\r\nMaterial typeFleece\r\nFit typeRegular\r\nLengthStandard Length\r\nNeck styleRound Neck\r\nCountry of OriginIndia\r\nAbout this item\r\nColor name: Gold\r\nMaterial: Fleece\r\nPattern: Solid\r\nlong sleeve\r\nhand wash\r\nAdditional Information\r\nManufacturerIndra Hosiery Mills, Indra Hosiery Mills, Plot no 31,32,33, Sharman Enclave, Behind Nagesh building, Near Jalandhar Byepass, Ludhiana-141008, Punjab, India, +918288070705\r\nPack', 1, 'https://m.media-amazon.com/images/I/81jSIuPSasL._SX569_.jpg', 10, 5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES
(1, 1, 'https://m.media-amazon.com/images/I/41N1wPvYQTL._SX300_SY300_QL70_FMwebp_.jpg'),
(2, 1, 'https://m.media-amazon.com/images/I/41N1wPvYQTL._SX300_SY300_QL70_FMwebp_.jpg'),
(3, 9, 'https://m.media-amazon.com/images/I/51xIvYaf6OL._SX522_PIbundle-2,TopRight,0,0_AA522SH20_.jpg'),
(4, 9, 'https://m.media-amazon.com/images/I/51xIvYaf6OL._SX522_PIbundle-2,TopRight,0,0_AA522SH20_.jpg'),
(5, 15, 'https://m.media-amazon.com/images/I/51xxA+6E+xL._SX522_.jpg'),
(6, 15, 'https://m.media-amazon.com/images/I/51xxA+6E+xL._SX522_.jpg'),
(7, 2, 'https://m.media-amazon.com/images/I/71uUtqYzxOL._SX679_.jpg'),
(8, 4, 'https://m.media-amazon.com/images/I/4177-fM6ahL._SX300_SY300_QL70_FMwebp_.jpg'),
(9, 5, 'https://m.media-amazon.com/images/I/61y103ZjOgL._SX679_.jpg'),
(10, 7, 'https://m.media-amazon.com/images/I/61l9ppRIiqL._AC_UY218_.jpg'),
(11, 8, 'https://m.media-amazon.com/images/I/61NHkGpmKoL._SX522_.jpg'),
(12, 10, 'https://m.media-amazon.com/images/I/81M2+S3FuJL._SX522_.jpg'),
(13, 11, 'https://m.media-amazon.com/images/I/71hyIVx-OvL._SX522_.jpg'),
(14, 12, 'https://m.media-amazon.com/images/I/617rprfdhRL._SX522_.jpg'),
(15, 13, 'https://m.media-amazon.com/images/I/717A3ZolzpL._SX679_.jpg'),
(16, 14, 'https://m.media-amazon.com/images/I/512QAURU1TL._SX679_.jpg'),
(17, 16, 'https://m.media-amazon.com/images/I/61l+14s5QVL._SX522_.jpg'),
(18, 17, 'https://m.media-amazon.com/images/I/71NDd0TRlvL._SX679_.jpg'),
(19, 18, 'https://m.media-amazon.com/images/I/81jSIuPSasL._SX569_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `profile_image`, `phone_no`, `state`, `city`, `address`) VALUES
(13, 'Rihtik kumar Sharma', 'ritik@gmail.com', 'd34a01b589627e7c5ac3a90cad06b2a7', 'ritik@gmail.com.jpg', '3216549874', 'Uttar Pradesh', 'Lucknow', 'Delhi '),
(15, 'Dishi ', 'dishi@gmail.com', '759d201176db276addf8bd6c664ef9cb', 'IMG25992.jpg', '9999999995', 'Uttar Pradesh', 'Delhi', 'Nehru computer market'),
(16, 'Aman ', 'aman@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', 'IMG79026.jpg', '5458745965', 'Uttar Pradesh', 'Lucknow', 'Ambedkar Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `wishlist_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `Product_id`, `wishlist_status`) VALUES
(10, 1, 1),
(11, 2, 1),
(12, 5, 1),
(13, 0, 1),
(14, 11, 1),
(15, 9, 1),
(16, 15, 1),
(17, 18, 1),
(18, 14, 1),
(19, 16, 1),
(20, 7, 1),
(21, 10, 1),
(23, 13, 1),
(24, 12, 1),
(25, 8, 1),
(26, 17, 1),
(27, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
