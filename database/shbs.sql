-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 03:20 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(14, 'Asmita Publication', 12),
(15, 'Nepal', 11),
(16, 'CharlesBridge', 15),
(17, 'Penguine Press', 15),
(18, 'Bhundipuran', 11),
(19, 'Goodwill', 12);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(11, 'College Books', 0),
(12, 'School Books', 0),
(14, 'Childrens', 0),
(15, 'Novels', 0),
(16, 'University Books', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Second Hand Book Store', 'Buy Old Second hand Books at one place', '16194752481607348871shopping-logo.png', 'Buy and Sell Second hand Books', 'Second hand Book Store Copyright 2021 UOG Marghazar Campus', 'Rs.', '03187848227', 'info@secondhandbookstore.com', 'UOG Marghazar campus');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(1, '608746e46b277', 12, 1, 14, 'SEE Mathematics', '180', '&lt;span style=&quot;color: rgb(101, 101, 101); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;&amp;nbsp;Mathematics is made compulsory up to Class 10. The final examination of class 10 is known as the Secondary Education Examination (SEE). Each and everyone wants to score higher Grade Point Average (GPA) in this examination. No other subjects than Compulsory Mathematics, Optional Mathematics, and Science would help them to score GPA above 3.60 and up to 4.00.&lt;/span&gt;', '1658836767Math-Practice-10.jpg', 90, NULL, 20, 1),
(2, '62dfd05684866', 15, 3, 0, 'Madalyn', '100', '&lt;p&gt;Madalyn cox&lt;/p&gt;', '1658835030madalyn-cox-O7ygzpAL4Mc-unsplash.jpg', 11, NULL, 1, 1),
(3, '62dfd10e5fd23', 15, 3, 0, 'The Burden is Light', '200', 'The Burden is light by&amp;nbsp;', '1658835214jon-tyson-qNFt8kcLlyI-unsplash.jpg', 11, NULL, 1, 1),
(4, '62dfd24505cab', 15, 4, 0, 'Diving Deep', '200', '&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;How does ocean exploration work? What kinds of machines and equipment help researchers under the sea? How deep can we dive to find out more about the plants and animals that live in the ocean? For fans of&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Alvin&amp;nbsp;&lt;/i&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;from&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Flying Deep&lt;/i&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Diving Deep&lt;/i&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&amp;nbsp;introduces all the ways humans have figured out how to engage with, explore, and learn from the oceans.&lt;/span&gt;', '165883552559386144.-SX318-.jpg', 5, NULL, 2, 1),
(5, '62dfd448c734a', 15, 2, 17, 'Lapnova', '300', '&lt;b style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;In a village in a medieval fiefdom buffeted by natural disasters, a motherless shepherd boy finds himself the unlikely pivot of a power struggle that puts all manner of faith to a savage test, in a spellbinding novel that represents Ottessa Moshfegh’s most exciting leap yet&lt;/b&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Little Marek, the abused and delusional son of the village shepherd, never knew his mother; his father told him she died in childbirth. One of life’s few consolations for Marek is his enduring bond with the blind village midwife, Ina, who suckled him as a baby, as she did so many of the village’s children. Ina’s gifts extend beyond childcare: she possesses a unique ability to communicate with the natural world. Her gift often brings her the transmission of sacred knowledge on levels far beyond those available to other villagers, however religious they might be. For some people, Ina’s home in the woods outside of the village is a place to fear and to avoid, a godless place.&lt;/span&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Among their number is Father Barnabas, the town priest and lackey for the depraved lord and governor, Villiam, whose hilltop manor contains a secret embarrassment of riches. The people’s desperate need to believe that there are powers that be who have their best interests at heart is put to a cruel test by Villiam and the priest, especially in this year of record drought and famine. But when fate brings Marek into violent proximity to the lord’s family, new and occult forces upset the old order. By year’s end, the veil between blindness and sight, life and death, the natural world and the spirit world, civility and savagery, will prove to be very thin indeed.&lt;/span&gt;', '165883604059693959.-SY475-.jpg', 10, NULL, 0, 1),
(6, '62dfd6507ca05', 12, 1, 14, 'Science Grade 10', '200', 'The curriculum and curricular materials have been developed and revised on a regular basis with the aim of making the education objective-oriented, practical, relevant and job oriented. It is necessary to instill the feelings of nationalism, national integrity and democratic spirit in the students and equip them with morality, discipline and self reliance, creativity and thoughtfulness. It is essential to develop in them the linguistic and mathematical skills, knowledge of science, information and communication technology, environment, health and population and life skills.&amp;nbsp;', '1658836560sci-10.jpg', 30, NULL, 1, 1),
(7, '62dfd88410af4', 11, 7, 18, 'Basic Mathematics', '250', '&lt;span style=&quot;color: rgb(101, 101, 101); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;&amp;nbsp;Mathematics is made optional Class 12. The final examination of class 12 is known as the Secondary Education Examination (SEE). Each and everyone wants to score higher Grade Point Average (GPA) in this examination. No other subjects than Compulsory Mathematics, Optional Mathematics, and Science would help them to score GPA above 3.60 and up to 4.00.&lt;/span&gt;', '1658837124images.jpeg', 100, NULL, 0, 1),
(8, '62dfd8fdb3a2d', 15, 2, 16, 'Never Be Alone', '355', '&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;A fatal car crash. A young orphan. Can she survive the harsh life of the seedy city streets?&lt;/span&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Eight-year-old Joon has no time to grieve her parents’ sudden death. Ripped from the security of a loving family, she endures horrific abuse in a system intended to protect her. After four years of torture and her foster brother’s attempt to steal her innocence, she runs away to Philadelphia’s poverty-stricken streets.&lt;/span&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Coming of age while homeless, Joon must fight just to stay alive. Despite the danger and desperation that surrounds her, she clings to her dream of offering the world something positive. But kind acts don’t put food in her belly as she searches for love and a place to call home.&lt;/span&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;Never Be Alone is a standalone dark psychological thriller. If you are looking for courageous characters, an edgy story, and a heartbreaking true-to-life tale, then you need to read this book.&lt;/span&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;br style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;&lt;span style=&quot;color: rgb(24, 24, 24); font-family: Merriweather, Georgia, serif;&quot;&gt;**WARNING**18+ Readers Only. Graphic content and subject matter.&lt;/span&gt;', '165883724539691240.-SX318-.jpg', 10, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(1, 'Second Hand', 12, 2, 1, 1),
(2, 'Horror', 15, 2, 1, 1),
(3, 'Novel', 15, 2, 1, 1),
(4, 'Picture Book', 15, 1, 1, 1),
(5, 'Second Hand', 15, 0, 1, 1),
(6, 'University Books', 16, 0, 1, 1),
(7, 'College Books', 11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(1, 'qq', 'qq', 'q@gmail.com', '', '594f803b380a41396ed63dca39503542', '1111111111', '11', '11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
