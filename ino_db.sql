-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2023 at 02:28 PM
-- Server version: 5.7.42-log
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ino_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL,
  `contact_fullname` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อ-สกุล',
  `contact_position` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ตำแหน่ง',
  `contact_agency` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หน่วยงาน',
  `contact_tel` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '้เบอร',
  `contact_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'อิเมล',
  `contact_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียดบริษัทและธุรกิจ',
  `contact_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บริษัท',
  `contact_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ลูกค้า,พนักงาน,หุ่นส่วน',
  `contact_crt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่สร้าง',
  `contact_staff` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `contact_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'จังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `project_id`, `contact_fullname`, `contact_position`, `contact_agency`, `contact_tel`, `contact_email`, `contact_detail`, `contact_company`, `contact_type`, `contact_crt`, `contact_staff`, `contact_province`) VALUES
(2, 1, 'Apirak Bangpuk', 'Presale', 'Point IT', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 16:49:07', 'Apirak Bangpuk', 'Bangkok'),
(3, 1, 'Apirak Bangpuk', 'Presale', 'Point IT1', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 17:07:39', 'Apirak Bangpuk', 'Bangkok'),
(4, 1, 'Phattraorn Amornophakun', 'Pre Sale', 'Point IT', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 17:07:39', 'Apirak Bangpuk', 'Bangkok');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL COMMENT 'รหัส',
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เลือกโฟลเดอร์ที่ต้องการเก็บข้อมูล',
  `doc_crt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่สร้าง',
  `doc_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โปรเจค',
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ประเภอเอกสาร',
  `doc_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อเอกสาร',
  `doc_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'แนบลิงค์',
  `doc_remark` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียดเพิ่มเติม',
  `doc_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะเอกสาร',
  `file_upfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไฟล์อัพโหลด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`doc_id`, `folder_name`, `doc_crt`, `doc_staff`, `project_name`, `task_name`, `doc_type`, `doc_name`, `doc_link`, `doc_remark`, `doc_status`, `file_upfile`) VALUES
(34, '06/11/2023-Apirak', '2023-06-11 11:37:07', 'Apirak bangpuk', 'Health Care', 'Emergency', 'Word', 'แผนการดำเนินการโครงการ 2023', 'http://localhost/ino/doc_add.php', 'แผนการดำเนินการโครงการ 2023', 'Complated', 'INO  Project.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `estime`
--

CREATE TABLE `estime` (
  `id_es` int(11) NOT NULL,
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `es_month` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เดือน',
  `es_cost` int(11) NOT NULL COMMENT 'ในเดือนนั้น',
  `es_year` int(11) NOT NULL COMMENT 'ปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estime`
--

INSERT INTO `estime` (`id_es`, `project_id`, `es_month`, `es_cost`, `es_year`) VALUES
(1, 1, 'Jan', 25000, 2023),
(2, 1, 'Fab', 25000, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `folder_doc`
--

CREATE TABLE `folder_doc` (
  `folder_id` int(11) NOT NULL COMMENT 'รหัส',
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อโฟร์เดอร์',
  `folder_crt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่สร้าง',
  `folder_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder_doc`
--

INSERT INTO `folder_doc` (`folder_id`, `folder_name`, `folder_crt`, `folder_staff`) VALUES
(14, '06/11/2023-Apirak', '2023-06-11 11:33:39', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รหัสผู้ใช้งาน',
  `project_product` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Project Name',
  `project_brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Product/Solution',
  `project_es` int(11) NOT NULL COMMENT 'Brand',
  `project_price` int(11) NOT NULL COMMENT 'Price/Unit',
  `project_qty` int(11) NOT NULL COMMENT 'QTY',
  `project_sales_novat` int(11) NOT NULL COMMENT 'Sales No Vat',
  `project_sales` int(11) NOT NULL COMMENT 'Sales Vat',
  `project_cost_novat` int(11) NOT NULL COMMENT 'Cost No Vat',
  `project_es_gp` int(11) NOT NULL COMMENT 'Es.GP',
  `project_gp` int(11) NOT NULL COMMENT '% GP',
  `project_pot` int(11) NOT NULL COMMENT '% Potential',
  `project_mean` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Meaning',
  `project_es_sales` int(11) NOT NULL COMMENT 'Estimated Sales',
  `project_remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Remark',
  `project_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BG',
  `project_up_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Win,Lost',
  `project_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ',
  `project_quarter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไตรมาส',
  `project_crt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่สร้าง',
  `project_staff` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้รับผิดชอบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_product`, `project_brand`, `project_es`, `project_price`, `project_qty`, `project_sales_novat`, `project_sales`, `project_cost_novat`, `project_es_gp`, `project_gp`, `project_pot`, `project_mean`, `project_es_sales`, `project_remark`, `project_bg`, `project_up_status`, `project_status`, `project_quarter`, `project_crt`, `project_staff`, `contact_name`) VALUES
(1, 'Health Care', 'Health Care', 'KIN-YOO-DEE', 250000, 150000, 1, 250000, 250000, 250000, 250000, 250000, 250000, 'ไม่แน่ใจต้องใส่อะไร', 250000, 'ไม่แน่ใจต้องใส่อะไร', 'ไม่แน่ใจต้องใส่อะไร', 'ไม่แน่ใจต้องใส่อะไร', 'เสร็จสิ้น', '2023/1', '2023-06-04 08:39:46', 'apirak', '0');

-- --------------------------------------------------------

--
-- Table structure for table `remind`
--

CREATE TABLE `remind` (
  `remind_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `task_id` int(11) NOT NULL COMMENT 'โปรเจคย่อย',
  `sub_id` int(11) NOT NULL COMMENT 'ชื่อเอกสาร',
  `remind_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `remind_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `remind_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อ',
  `remind_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอีดย',
  `remind_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ไฟล์แนบ',
  `remind_date` datetime NOT NULL COMMENT 'วันที่กำหนด',
  `remind_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_task`
--

CREATE TABLE `sub_task` (
  `sub_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `sub_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `sub_staff` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อผู้สร้าง',
  `sub_tpye` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ประเภทเอกสาร',
  `sub_name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อชื่อ',
  `sub_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เอกสาร',
  `sub_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'แนบลิงค์',
  `sub_remark` int(200) NOT NULL COMMENT 'รายละเอียด',
  `sub_status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_project`
--

CREATE TABLE `task_project` (
  `task_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'โปรเจค',
  `task_crt` datetime NOT NULL COMMENT 'วันที่สรัาง',
  `task_staff` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `task_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'หัวข้อ',
  `task_detail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `task_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_project`
--

INSERT INTO `task_project` (`task_id`, `project_name`, `task_crt`, `task_staff`, `task_name`, `task_detail`, `task_status`) VALUES
(1, 'Health Care', '2023-06-10 13:54:04', 'Apirak bangpuk', 'Emergency', 'AI Tracker', 'On Process');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อเข้าใช้งานระบบ',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อ-สกุล',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'อิเมล',
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'เบอร์',
  `user_crt` datetime NOT NULL COMMENT 'วันส้ราง',
  `user_staff` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ผู้สร้าง',
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บทบาท',
  `team` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ทีม',
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ตำแหน่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `tel`, `user_crt`, `user_staff`, `role`, `team`, `position`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Apirak bangpuk', 'apirak@gmail.com', '(089) 353-5555', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Non Service', 'IT Service'),
(2, 'Theerachart ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Theerachart ', 'apirak@pointit.co.th', '(099) 999-9', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Service Solution', 'Service Manager'),
(3, 'phattraorn', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'phattraorn amornophakun', 'phattraorn.a@gmail.com', '(061) 952-2', '2023-06-04 11:53:19', 'apirak bangpuk', 'Administrator', 'Innovation', 'Product Sale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `estime`
--
ALTER TABLE `estime`
  ADD PRIMARY KEY (`id_es`);

--
-- Indexes for table `folder_doc`
--
ALTER TABLE `folder_doc`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `remind`
--
ALTER TABLE `remind`
  ADD PRIMARY KEY (`remind_id`);

--
-- Indexes for table `sub_task`
--
ALTER TABLE `sub_task`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `task_project`
--
ALTER TABLE `task_project`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `estime`
--
ALTER TABLE `estime`
  MODIFY `id_es` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `folder_doc`
--
ALTER TABLE `folder_doc`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remind`
--
ALTER TABLE `remind`
  MODIFY `remind_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `sub_task`
--
ALTER TABLE `sub_task`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `task_project`
--
ALTER TABLE `task_project`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
