-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 09:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Bruno', 'brunoadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'Admin', 'admin@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(3, 'Apple'),
(11, 'Dell'),
(12, 'Lenovo'),
(13, 'Asus'),
(14, 'MSI'),
(15, 'Acer Inc'),
(16, ' Seagate'),
(17, 'Toshiba'),
(18, 'Western Digital'),
(19, 'SanDisk'),
(20, 'G.Skill'),
(21, 'Corsair'),
(22, 'Intel®'),
(23, 'AMD®'),
(24, 'HDMI cable'),
(25, 'VGA cable'),
(26, 'DVI cable'),
(27, 'Ethernet cable'),
(28, 'ZOTAC');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(5, 21, '::1', 1, 1),
(6, 26, '::1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(15, 'CPU'),
(16, 'Monitor'),
(17, 'Keyboard'),
(18, 'Laptop'),
(19, 'Mouse'),
(20, 'Mother Board'),
(21, 'Hard Disk'),
(22, 'Pendrive'),
(24, 'Laptop adapter'),
(25, 'RAM'),
(26, 'Processor'),
(28, 'Laptop Bag'),
(29, 'Cable'),
(30, 'Graphics Card ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(21, 18, 3, 'APPLE 2020 Macbook Air M1', 850000, 10, 'APPLE 2020 Macbook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A  (13.3 inch, Space Grey, 1.29 kg)', '1652603767_mac.png', 'apple, mac book, laptop'),
(26, 18, 3, 'Apple MacBook Pro', 106990, 10, 'Apple MacBook Pro (MYD82HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78cm, Space Grey)', '1652604718_macbook pro.png', 'apple'),
(27, 18, 3, 'Apple Macbook Pro M1 Mac OS Monterey MacBook ', 219900, 10, 'Apple Macbook Pro M1 Mac OS Monterey MacBook (16GB RAM, 1TB SSD, 36.7cm, MKGT3HN/A, Silver)', '1652604895_mxw_2048,f_auto.png', 'apple mackbook'),
(28, 19, 3, 'Apple Magic Wireless Optical Mouse', 7500, 10, 'Apple Magic Wireless Optical Mouse (Multi-Touch, MK2E3ZM/A, White)', '1652605149_Apple mouse.png', 'apple magicmouse mouse'),
(29, 19, 3, 'Apple Magic Wireless Optical Mouse', 7500, 10, 'Apple Magic Wireless Optical Mouse (Multi-Touch, MMMQ3ZM/A, Black)', '1652605212_applemouse2.png', 'apple magicmouse mouse'),
(30, 17, 3, 'Apple Wireless Keyboard ', 19000, 10, 'Apple Wireless Keyboard (Multimedia Keys with Touch ID, MMMR3HN/A, Black Keys)', '1652605365_applekeyboard.png', 'apple, keyboard'),
(31, 21, 16, 'Seagate One Touch 1TB USB 3.0 Hard Disk Drive', 3999, 10, 'Seagate One Touch 1TB USB 3.0 Hard Disk Drive (Advanced Password Protection, STKY1000401, Silver)', '1652605828_hard disk.png', 'hard disk'),
(32, 22, 19, 'Sandisk Pendrive', 500, 10, 'Sandisk Cruzer Blade 32GB USB 2.0 Flash Drive (SDCZ50-032G-B35 | Red/Black)', '1652606238_pendrive.png', 'pen drive'),
(33, 28, 12, 'Lenovo Legion Recon Polyester Gaming Backpack', 500, 10, 'Lenovo Legion Recon Polyester Gaming Backpack for 15.6 Inch Laptop (Adjustable Shoulder Strap, GX40S69333, Black)', '1652606489_lenovo bag.png', 'bag'),
(34, 16, 11, 'Dell Monitor', 19999, 10, 'Dell S2721HGF 68.58cm (27 Inches) Full HD Curved Panel Gaming Monitor (Dell Display Manager, HDMI Port + DisplayPort, + Headphone Out Port, 144 Hz, 210-AWVD, Black)', '1652606775_dell monitor.png', 'monitor'),
(35, 29, 25, 'VGA', 200, 10, 'POSH Male to Male VGA Cable 1.5 Meter, Support PC/Monitor/LCD/LED, Plasma, Projector, TFT. VGA to VGA Converter Adapter Cable', '1652607199_vga.png', 'VGA'),
(36, 29, 24, 'HDMI Cable', 300, 10, 'Tizum High Speed HDMI Cable with Ethernet | Supports 3D, 4K | for All HDMI Devices, Laptop, Computer, Gaming Console, TV, Set Top Box (1.5 Meter/ 5 Feet)', '1652607409_hdmi.png', 'HDMI'),
(37, 29, 26, 'DVI Cable', 500, 10, 'BlueRigger DVI Male to DVI Male Digital Dual-Link Cable (3 Feet / 0.9 Meter)', '1652607542_dvi.png', 'DVI'),
(38, 29, 27, 'Quantum RJ45 Ethernet Patch Cable', 400, 10, 'Quantum RJ45 Ethernet Patch Cable/LAN Cable with Heavy Duty Gold Plated Connectors Supports Hi-Speed Gigabit Upto 1000Mbps, Waterproof and Durable, 1-Year Warranty - 32.8 Feet (10 Meters), (White)', '1652607676_Ethernet.png', 'Quantum RJ45 Ethernet Patch Cable'),
(39, 20, 14, 'MSI B450M PRO-VDH MAX Gaming Motherboard', 7000, 10, 'MSI B450M PRO-VDH MAX Gaming Motherboard', '1652607844_motherboard.png', 'MSI B450M PRO-VDH MAX Gaming Motherboard'),
(40, 20, 13, 'ASUS ROG Strix B450-F Gaming Motherboard ', 15000, 10, 'ASUS ROG Strix B450-F Gaming Motherboard (ATX) AMD Ryzen 2 AM4 DDR4 DP HDMI M.2 USB 3.1 Gen2 B450', '1652607954_motherboardasus.png', 'ASUS ROG Strix B450-F Gaming Motherboard '),
(41, 20, 14, 'MSI MPG B550 Gaming Plus AMD AM4 DDR4 M.2 USB 3.2 Gen 2 HDMI ATX Motherboard AMD Ryzen™ 5000 Series Desktop Processors', 17000, 10, 'MSI MPG B550 Gaming Plus AMD AM4 DDR4 M.2 USB 3.2 Gen 2 HDMI ATX Motherboard AMD Ryzen™ 5000 Series Desktop Processors', '1652608120_msimotherboard.png', 'MSI MPG B550 Gaming Plus AMD AM4 DDR4 M.2 USB 3.2 Gen 2 HDMI ATX Motherboard AMD Ryzen™ 5000 Series Desktop Processors'),
(42, 24, 1, 'HP Blue Pin Original Laptop Charger 19.5V 3.33A 65W Adapter', 16000, 10, 'HP Blue Pin Original Laptop Charger 19.5V 3.33A 65W Adapter (Power Cord Included)', '1652608338_hp charger.png', 'HP Blue Pin Original Laptop Charger 19.5V 3.33A 65W Adapter'),
(43, 24, 12, 'Lenovo GX20L29764 65W Laptop Adapter', 15000, 10, 'Lenovo GX20L29764 65W Laptop Adapter/Charger with Power Cord for Select Models of Lenovo (Round pin)', '1652608454_lenovo charger.png', 'Lenovo GX20L29764 65W Laptop Adapter'),
(44, 24, 15, 'Acer Adapter', 8000, 10, 'Acer 19V 3.42A 65 Watt Replacement Laptop Adapter/Charger Pin Size 5.5 x 1.7 mm for Acer Yellow Aspire, TM Travelmate 2100, 2200, 2310, 2400, NLCi (Power Cord Included)', '1652608671_acer charger.png', 'Acer Adapter'),
(45, 25, 20, 'G.Skill Trident Z Neo 16GB (2x8GB) DDR4', 8000, 10, 'G.Skill Trident Z Neo 16GB (2x8GB) DDR4 3600MHz CL18-22-22-42 1.35V Desktop Memory RAM - F4-3600C18D-16GTZN, Black', '1652608864_ram1.png', 'G.Skill Trident Z Neo 16GB (2x8GB) DDR4'),
(46, 26, 23, 'AMD Athlon 3000G with Radeon Vega 3 Graphics Desktop Processor', 6000, 10, 'AMD Athlon 3000G with Radeon Vega 3 Graphics Desktop Processor 2 Cores 3.5GHz 5MB Cache AM4 Socket (YD3000C6FHBOX)', '1652609018_amd.png', 'AMD Athlon 3000G with Radeon Vega 3 Graphics Desktop Processor'),
(47, 26, 23, 'AMD Ryzen 5 3600 Desktop Processor', 15000, 10, 'AMD Ryzen 5 3600 Desktop Processor 6 Cores up to 4.2 GHz 35MB Cache AM4 Socket (100-000000031)', '1652609100_amd2.png', 'AMD Ryzen 5 3600 Desktop Processor'),
(48, 26, 22, 'Intel Core i5 ', 18000, 10, 'Intel Core i5 12400F 12 Gen Generation Desktop PC Processor CPU with 18MB Cache and up to 4.40 GHz Clock Speed 3 Years Warranty with Fan DDR5 and DDR4 RAM Support LGA 1700 Socket', '1652609204_intel1.png', 'Intel Core i5 '),
(49, 26, 22, 'Intel Core i3', 6000, 10, 'Intel Core i3-10100F 10th Generation LGA1200 Desktop Processor 4 Cores 8 Threads up to 4.30GHz 6MB Cache', '1652609284_intel2.png', 'Intel Core i3'),
(50, 15, 12, 'Lenovo ThinkCentre cpu', 7000, 10, 'Lenovo ThinkCentre M92p Desktop (Core i5-2400/8 GB/500 GB HDD/Windows/MS Office/Intel HD Graphics 2000), Black', '1652609528_lenovo cpu.png', 'cpu'),
(51, 15, 11, 'Dell Cpu', 150000, 10, 'Dell Intel Core i3-2nd Gen Mini Desktop (8 GB RAM/ 500GB HDD/Windows 10 Pro, MS Office/Intel Integrated Graphics, Black) OptiPlex 790-Mini', '1652609625_dell cpu.png', 'cpu'),
(52, 15, 1, 'HP Slim Mini Tower cpu', 18000, 10, 'HP Slim Mini Tower Desktop PC Intel Celeron J4025(4GB/1TB HDD/Wired Keyboard & Mouse/Win 11/MS Office/Jet Black), S01-aF1107in', '1652609865_hp cpu.png', 'cpu'),
(53, 15, 13, 'ASUS ROG CPU', 80000, 10, 'ASUS ROG Strix GL10, 6 Cores AMD Ryzen 5-3600X 3rd Gen, Gaming Desktop (8GB/1TB HDD + 256GB SSD/4GB NVIDIA GeForce GTX 1650 Graphics/Windows 10/with Keyboard & Mouse/Gray/8 Kg), G10DK-53600X018T', '1652610009_asus.png', 'cpu'),
(54, 16, 13, 'ASUS Monitor,', 33000, 10, 'ASUS ProArt Display PA278QV 27\" WQHD (2560 x 1440) Monitor, 100% sRGB/Rec. 709, E < 2, IPS, DisplayPort HDMI DVI-D Mini DP, Calman Verified, Eye Care, Anti-Glare, Tilt Pivot Swivel Height Adjustable', '1652610181_asusmonitor.png', 'Monitor,'),
(55, 16, 15, 'Acer Monitor', 20000, 10, 'Acer Nitro QG221Q 21.5 Inch (54.61 cm) Full HD Gaming Monitor I VA Panel I 1 MS Response, 75 Hz Refresh Rate I 250 Nits Brightness I AMD Free Sync I Eye Care Features (Black)', '1652610327_Acer mointer.png', 'monitor'),
(56, 18, 1, 'HP Pavilion Laptop', 70000, 10, 'HP Pavilion 14-dv1002TU 11th Gen Core i5 Windows 10 Home Laptop (16GB RAM, 512GB SSD, Intel Iris Xe Graphics, MS Office 2019, 35.6cm, 50N48PA, Silver)', '1652610571_hplap.png', 'laptop'),
(57, 18, 11, 'Dell Inspiron 3515 Ryzen 5 Windows 11 Laptop ', 45000, 10, 'Dell Inspiron 3515 Ryzen 5 Windows 11 Laptop (8GB RAM, 256 SSD, AMD Radeon Graphics, MS Office, 39.62cm, D560676WIN9BE, Silver)', '1652610669_delllap.png', 'laptop'),
(58, 18, 12, 'Lenovo Legion 5 Pro Ryzen 7 Windows 11 Home Laptop ', 139000, 10, 'Lenovo Legion 5 Pro Ryzen 7 Windows 11 Home Laptop (16GB RAM, 1TB SSD, NVIDIA GeForce RTX 3060 + 6GB Graphics, MS Office, 40.64cm, 82JQ00JCIN, Storm Grey)', '1652610796_lenovolap.png', 'laptop'),
(59, 19, 1, 'HP x500 Optical Wired USB Mouse', 500, 10, 'HP x500 Optical Wired USB Mouse', '1652616297_hpmouse.png', 'mouse'),
(60, 19, 12, 'Lenovo 300 Wired Plug & Play USB Mouse', 400, 10, 'Lenovo 300 Wired Plug & Play USB Mouse, High Resolution 1600 DPI Optical Sensor, 3-Button Design with clickable Scroll Wheel, Ambidextrous, Ergonomic Mouse for Comfortable All-Day Grip (GX30M39704)', '1652616413_lenovo mouse.png', 'mouse'),
(61, 19, 11, 'Dell MS116 1000DPI USB Wired Optical Mouse', 300, 10, 'Dell MS116 1000DPI USB Wired Optical Mouse', '1652616479_dell mouse.png', 'Dell MS116 1000DPI USB Wired Optical Mouse'),
(62, 17, 1, 'HP K500F Backlit Membrane Wired Gaming Keyboard ', 900, 10, 'HP K500F Backlit Membrane Wired Gaming Keyboard with Mixed Color Lighting, Metal Panel with Logo Lighting, 26 Anti-Ghosting Keys, and Windows Lock Key / 3 Years Warranty(7ZZ97AA)', '1652616640_hpkeyboard.png', 'keyboard'),
(63, 17, 11, 'Dell KB216 Wired Multimedia USB Keyboard ', 800, 10, 'Dell KB216 Wired Multimedia USB Keyboard with Super Quite Plunger Keys with Spill-Resistant – Black', '1652616738_dellkeyboard.png', 'keyboard'),
(64, 21, 17, 'Toshiba Canvio Basics 1TB Portable External HDD', 4000, 10, 'Toshiba Canvio Basics 1TB Portable External HDD - USB 3.2 for PC Laptop Windows and Mac, 3 Years Warranty, External Hard Drive - Black', '1652616980_hard disk1.png', 'hard disk'),
(65, 21, 18, 'Western Digital WD 1TB USB 3.0 My Passport Portable External Hard Drive', 6000, 10, 'Western Digital WD 1TB USB 3.0 My Passport Portable External Hard Drive Compatible with PC, PS4 & Xbox (Black) -WDBYVG0010BBK-WESN', '1652617093_hard disk3.png', 'hard disk'),
(66, 22, 19, 'SanDisk Ultra Flair 64GB USB 3.0 Pen Drive', 600, 10, 'SanDisk Ultra Flair 64GB USB 3.0 Pen Drive', '1652617273_pendrive1.png', 'PenDrive'),
(67, 22, 1, 'HP v150w 32GB USB 2.0 flash Drive (Blue)', 400, 10, 'HP v150w 32GB USB 2.0 flash Drive (Blue)', '1652617373_hppendrive.png', 'PenDrive'),
(68, 25, 21, 'Corsair Vengeance LPX 8GB (1x8GB) DDR4 3200MHZ C16 Desktop RAM (Black)', 2000, 10, 'Corsair Vengeance LPX 8GB (1x8GB) DDR4 3200MHZ C16 Desktop RAM (Black)', '1652617907_ram2.png', 'ram'),
(69, 25, 21, 'Corsair Vengeance RGB RS 8GB (1 x 8GB) DDR4 DRAM 3200MHz C16 Memory Kit (Black) - CMG8GX4M1E3200C16', 4000, 10, 'Corsair Vengeance RGB RS 8GB (1 x 8GB) DDR4 DRAM 3200MHz C16 Memory Kit (Black) - CMG8GX4M1E3200C16', '1652617993_ram3.png', 'ram'),
(70, 28, 15, 'Acer Casual Extra soft padded Laptop Backpack', 800, 10, 'Acer Casual Extra soft padded Laptop Backpack 15.6-inch Premium Black and Melange Grey Color', '1652618232_acerbag.png', 'Acer Casual Extra soft padded Laptop Backpack, bag'),
(71, 28, 1, 'HP Lightweight backpack Variation', 1000, 10, 'HP Lightweight backpack Variation', '1652618371_hpbag.png', 'HP Lightweight backpack Variation'),
(72, 30, 28, 'ZOTAC Gaming GeForce RTX 3090 Trinity OC 24GB GDDR6X 384-bit 19.5 Gbps PCIE 4.0 Gaming Graphics Card', 300000, 10, 'ZOTAC Gaming GeForce RTX 3090 Trinity OC 24GB GDDR6X 384-bit 19.5 Gbps PCIE 4.0 Gaming Graphics Card, IceStorm 2.0 Advanced Cooling, Spectra 2.0 RGB Lighting, ZT-A30900J-10P', '1652693582_graphic1.png', 'graphic card'),
(73, 30, 28, 'ZOTAC GeForce GT 730 4GB DDR3 ZONE Edition Graphics Card with GeForce Experience', 7000, 10, 'ZOTAC GeForce GT 730 4GB DDR3 ZONE Edition Graphics Card with GeForce Experience', '1652693687_graphic2.png', 'graphic card'),
(74, 30, 13, 'ASUS Cerberus GeForce GTX 1050 Ti 4GB OC Edition GDDR5 Gaming Graphics Card ', 20000, 10, 'ASUS Cerberus GeForce GTX 1050 Ti 4GB OC Edition GDDR5 Gaming Graphics Card (Cerberus-GTX1050Ti-O4G)', '1652693805_graphic3.png', 'graphic card');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Abc', 'Xyz', 'abc@gmail.com', '3f009d72559f51e7e454b16e5d0687a1', '1234567890', 'aurangabad', 'aurangabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
