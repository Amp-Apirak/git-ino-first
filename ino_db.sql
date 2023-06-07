-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 07:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `contact_fullname` text NOT NULL COMMENT 'ชื่อ-สกุล',
  `contact_position` text NOT NULL COMMENT 'ตำแหน่ง',
  `contact_agency` varchar(200) NOT NULL COMMENT 'หน่วยงาน',
  `contact_tel` varchar(25) NOT NULL COMMENT '้เบอร',
  `contact_email` varchar(50) NOT NULL COMMENT 'อิเมล',
  `contact_detail` varchar(255) NOT NULL COMMENT 'รายละเอียดบริษัทและธุรกิจ',
  `contact_company` varchar(255) NOT NULL COMMENT 'บริษัท',
  `contact_type` varchar(255) NOT NULL COMMENT 'ลูกค้า,พนักงาน,หุ่นส่วน',
  `contact_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `contact_staff` text NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `project_id`, `contact_fullname`, `contact_position`, `contact_agency`, `contact_tel`, `contact_email`, `contact_detail`, `contact_company`, `contact_type`, `contact_crt`, `contact_staff`) VALUES
(1, 1, 'คุณชาคริยา นาคมณี', 'อบต', 'เทศบาล', '08959583626', 'mauk@gmail.com', 'เทศบาล', 'เทศบาล', 'Customer', '2023-06-04 19:41:35', 'Apirak');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL COMMENT 'รหัส',
  `doc_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `doc_staff` varchar(100) NOT NULL COMMENT 'ผู้สร้าง',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `task_id` int(11) NOT NULL COMMENT 'โปรเจคย่อย',
  `doc_type` varchar(45) NOT NULL COMMENT 'ประเภอเอกสาร',
  `doc_name` varchar(100) NOT NULL COMMENT 'ชื่อเอกสาร',
  `doc_file` varchar(100) NOT NULL COMMENT 'แนบเอกสาร',
  `doc_link` varchar(200) NOT NULL COMMENT 'แนบลิงค์',
  `doc_remark` varchar(200) NOT NULL COMMENT 'รายละเอียดเพิ่มเติม',
  `doc_status` varchar(45) NOT NULL COMMENT 'สถานะเอกสาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estime`
--

CREATE TABLE `estime` (
  `id_es` int(11) NOT NULL,
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `es_month` text NOT NULL COMMENT 'เดือน',
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
  `folder_name` varchar(255) NOT NULL COMMENT 'ชื่อโฟร์เดอร์',
  `folder_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `folder_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(50) NOT NULL COMMENT 'รหัสผู้ใช้งาน',
  `project_product` varchar(100) NOT NULL COMMENT 'Project Name',
  `project_brand` varchar(100) NOT NULL COMMENT 'Product/Solution',
  `project_es` int(11) NOT NULL COMMENT 'Brand',
  `project_price` int(11) NOT NULL COMMENT 'Price/Unit',
  `project_qty` int(11) NOT NULL COMMENT 'QTY',
  `project_sales_novat` int(11) NOT NULL COMMENT 'Sales No Vat',
  `project_sales` int(11) NOT NULL COMMENT 'Sales Vat',
  `project_cost_novat` int(11) NOT NULL COMMENT 'Cost No Vat',
  `project_es_gp` int(11) NOT NULL COMMENT 'Es.GP',
  `project_gp` int(11) NOT NULL COMMENT '% GP',
  `project_pot` int(11) NOT NULL COMMENT '% Potential',
  `project_mean` text NOT NULL COMMENT 'Meaning',
  `project_es_sales` int(11) NOT NULL COMMENT 'Estimated Sales',
  `project_remark` varchar(255) NOT NULL COMMENT 'Remark',
  `project_bg` varchar(255) NOT NULL COMMENT 'BG',
  `project_up_status` varchar(100) NOT NULL COMMENT 'Win,Lost',
  `project_status` varchar(100) NOT NULL COMMENT 'สถานะ',
  `project_quarter` varchar(50) NOT NULL COMMENT 'ไตรมาส',
  `project_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `project_staff` varchar(50) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_product`, `project_brand`, `project_es`, `project_price`, `project_qty`, `project_sales_novat`, `project_sales`, `project_cost_novat`, `project_es_gp`, `project_gp`, `project_pot`, `project_mean`, `project_es_sales`, `project_remark`, `project_bg`, `project_up_status`, `project_status`, `project_quarter`, `project_crt`, `project_staff`) VALUES
(1, 'KIN-YOO-DEE', 'แพลตฟอร์มเฝ้าระวังเหตุฉุกเฉิน', 'KIN-YOO-DEE', 250000, 150000, 1, 250000, 250000, 250000, 250000, 250000, 250000, 'ไม่แน่ใจต้องใส่อะไร', 250000, 'ไม่แน่ใจต้องใส่อะไร', 'ไม่แน่ใจต้องใส่อะไร', 'ไม่แน่ใจต้องใส่อะไร', 'เสร็จสิ้น', '2023/1', '2023-06-04 15:39:46', 'apirak');

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
  `remind_staff` varchar(100) NOT NULL COMMENT 'ผู้สร้าง',
  `remind_name` varchar(100) NOT NULL COMMENT 'หัวข้อ',
  `remind_detail` varchar(255) NOT NULL COMMENT 'รายละเอีดย',
  `remind_file` varchar(100) NOT NULL COMMENT 'ไฟล์แนบ',
  `remind_date` datetime NOT NULL COMMENT 'วันที่กำหนด',
  `remind_status` varchar(100) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_task`
--

CREATE TABLE `sub_task` (
  `sub_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `sub_crt` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `sub_staff` varchar(45) NOT NULL COMMENT 'ชื่อผู้สร้าง',
  `sub_tpye` text NOT NULL COMMENT 'ประเภทเอกสาร',
  `sub_name` text NOT NULL COMMENT 'หัวข้อชื่อ',
  `sub_file` varchar(100) NOT NULL COMMENT 'เอกสาร',
  `sub_link` varchar(100) NOT NULL COMMENT 'แนบลิงค์',
  `sub_remark` int(200) NOT NULL COMMENT 'รายละเอียด',
  `sub_status` varchar(45) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_project`
--

CREATE TABLE `task_project` (
  `task_id` int(11) NOT NULL COMMENT 'รหัส',
  `project_id` int(11) NOT NULL COMMENT 'โปรเจค',
  `task_crt` datetime NOT NULL COMMENT 'วันที่สรัาง',
  `task_staff` text NOT NULL COMMENT 'ผู้สร้าง',
  `task_name` varchar(200) NOT NULL COMMENT 'หัวข้อ',
  `task_detail` varchar(200) NOT NULL COMMENT 'รายละเอียด',
  `task_status` varchar(100) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `username` varchar(50) NOT NULL COMMENT 'ชื่อเข้าใช้งานระบบ',
  `password` varchar(50) NOT NULL COMMENT 'รหัสผ่าน',
  `fullname` varchar(100) NOT NULL COMMENT 'ชื่อ-สกุล',
  `email` varchar(100) NOT NULL COMMENT 'อิเมล',
  `tel` varchar(20) NOT NULL COMMENT 'เบอร์',
  `user_crt` datetime NOT NULL COMMENT 'วันส้ราง',
  `user_staff` varchar(100) NOT NULL COMMENT 'ผู้สร้าง',
  `role` varchar(100) NOT NULL COMMENT 'บทบาท',
  `team` varchar(100) NOT NULL COMMENT 'ทีม',
  `position` varchar(100) NOT NULL COMMENT 'ตำแหน่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `tel`, `user_crt`, `user_staff`, `role`, `team`, `position`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'apirak bangpuk', 'apirak@gmail.com', '(089) 353-5555', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Non Service', 'IT Service'),
(2, 'Theerachart ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Theerachart ', 'apirak@pointit.co.th', '(099) 999-9', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Service Solution', 'Service Manager'),
(3, 'phattraorn', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'phattraorn amornophakun', 'phattraorn.a@gmail.com', '(061) 952-2', '2023-06-04 11:53:19', 'apirak bangpuk', 'Administrator', 'Innovation', 'Product Sale'),
(4, 'awirut', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'awirut', 'awirut@gmail.com', '(055) 556-6___', '2023-06-04 11:53:19', 'phattraorn amornophakun', 'Administrator', 'Innovation', 'Product Sale'),
(5, 'wattachai', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'wattachai', 'wattachai@gmail.com', '(065) 888-9', '2023-06-04 11:53:19', 'apirak bangpuk', 'Engineer', 'Service Solution', 'IT support'),
(7, 'ampamp', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'amp', 'amp@gmail.com', '(055) 555-6', '2023-06-04 11:53:19', 'apirak bangpuk', 'Administrator', 'Innovation', 'amp');

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
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `estime`
--
ALTER TABLE `estime`
  MODIFY `id_es` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `folder_doc`
--
ALTER TABLE `folder_doc`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

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
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
