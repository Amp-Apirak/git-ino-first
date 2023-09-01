-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 11:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

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
  `contact_fullname` varchar(255) NOT NULL COMMENT 'ชื่อ-สกุล',
  `contact_position` varchar(255) NOT NULL COMMENT 'ตำแหน่ง',
  `contact_agency` varchar(200) NOT NULL COMMENT 'หน่วยงาน',
  `contact_tel` varchar(25) NOT NULL COMMENT '้เบอร',
  `contact_email` varchar(50) NOT NULL COMMENT 'อิเมล',
  `contact_detail` varchar(255) NOT NULL COMMENT 'รายละเอียดบริษัทและธุรกิจ',
  `contact_company` varchar(255) NOT NULL COMMENT 'บริษัท',
  `contact_type` varchar(255) NOT NULL COMMENT 'ลูกค้า,พนักงาน,หุ่นส่วน',
  `contact_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `contact_staff` text NOT NULL COMMENT 'ผู้สร้าง',
  `contact_province` varchar(255) NOT NULL COMMENT 'จังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_fullname`, `contact_position`, `contact_agency`, `contact_tel`, `contact_email`, `contact_detail`, `contact_company`, `contact_type`, `contact_crt`, `contact_staff`, `contact_province`) VALUES
(1, 'Phattraorn Amornophakun', 'Pre Sale', 'Point IT', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 17:07:39', 'Apirak Bangpuk', 'Bangkok'),
(2, 'Apirak Bangpuk', 'Presale', 'Point IT', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 16:49:07', 'Apirak Bangpuk', 'Bangkok'),
(3, 'Apirak Bangpuk', 'Presale', 'Point IT1', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 17:07:39', 'Apirak Bangpuk', 'Bangkok'),
(4, 'Phattraorn Amornophakun', 'Pre Sale', 'Point IT', '08959583626', 'mauk@gmail.com', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ซอย สุภาพงษ์ 1 แยก 6 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานคร', 'บริษัท พอยท์ ไอที คอนซัลทิ่ง จำกัด ', 'Staff', '2023-06-12 17:07:39', 'Apirak Bangpuk', 'Bangkok'),
(8, 'นายกเทศบาลเมืองป่าตอง', 'นายกเทศบาลเมืองป่าตอง', 'นายกเทศบาลเมืองป่าตอง', '(096) 659-9971', 'wiroot@eng.buu.ac.th', 'นายกเทศบาลเมืองป่าตอง', 'เทศบาลเมืองป่าตอง', 'Customer', '2023-09-01 09:50:35', 'Apirak bangpuk', '8598222918d3c6e513d63060cf55e2971ded729a'),
(9, 'นายกเทศบาลเมืองรังสิต', 'นายกเทศบาลเมืองรังสิต', 'นายกเทศบาลเมืองรังสิต', '(096) 659-9111', 'apitak@gmail.com', 'นายกเทศบาลเมืองรังสิต', 'นายกเทศบาลเมืองรังสิต', 'Customer', '2023-09-01 09:52:38', 'Apirak bangpuk', '0e85749a6f40d4614b87411e141fe8109099bc4f');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL COMMENT 'รหัส',
  `folder_name` varchar(255) NOT NULL COMMENT 'เลือกโฟลเดอร์ที่ต้องการเก็บข้อมูล',
  `doc_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `doc_staff` varchar(100) NOT NULL COMMENT 'ผู้สร้าง',
  `project_name` varchar(255) NOT NULL COMMENT 'โปรเจค',
  `task_name` varchar(255) NOT NULL,
  `doc_type` varchar(45) NOT NULL COMMENT 'ประเภอเอกสาร',
  `doc_name` varchar(100) NOT NULL COMMENT 'ชื่อเอกสาร',
  `doc_link` varchar(200) NOT NULL COMMENT 'แนบลิงค์',
  `doc_remark` varchar(200) NOT NULL COMMENT 'รายละเอียดเพิ่มเติม',
  `doc_status` varchar(255) NOT NULL COMMENT 'สถานะเอกสาร',
  `file_upfile` varchar(255) NOT NULL COMMENT 'ไฟล์อัพโหลด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`doc_id`, `folder_name`, `doc_crt`, `doc_staff`, `project_name`, `task_name`, `doc_type`, `doc_name`, `doc_link`, `doc_remark`, `doc_status`, `file_upfile`) VALUES
(34, '06/11/2023-Apirak', '2023-06-11 11:37:07', 'Apirak bangpuk', 'Health Care', 'Emergency', 'Word', 'แผนการดำเนินการโครงการ 2023', 'http://localhost/ino/doc_add.php', 'แผนการดำเนินการโครงการ 2023', 'Complated', 'INO  Project.xlsx');

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

--
-- Dumping data for table `folder_doc`
--

INSERT INTO `folder_doc` (`folder_id`, `folder_name`, `folder_crt`, `folder_staff`) VALUES
(14, '06/11/2023-Apirak', '2023-06-11 11:33:39', 'Apirak bangpuk'),
(15, 'Amp', '2023-06-27 15:04:37', 'Apirak bangpuk'),
(16, 'xzcxzc', '2023-06-27 15:05:12', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pipeline`
--

CREATE TABLE `pipeline` (
  `pip_id` int(11) NOT NULL COMMENT 'เลขไอดีของ Project',
  `project_name` varchar(255) NOT NULL COMMENT 'ชื่อโครงการ',
  `project_product` varchar(255) NOT NULL COMMENT 'ชื่อผลิตภัณฑ์',
  `project_brand` varchar(255) NOT NULL COMMENT 'แบรน์',
  `pip_vat` varchar(255) NOT NULL COMMENT 'Vat',
  `pip_salen` int(11) NOT NULL COMMENT 'ราคาขายไม่รวมภาษี Amount/Manaul',
  `pip_sale` int(11) NOT NULL COMMENT 'ราคาขายรวมภาษี',
  `pip_costn` int(11) NOT NULL COMMENT 'ราคาต้นทุนไม่รวมภาษี Amount/Manaul',
  `pip_cost` int(11) NOT NULL COMMENT 'ราคาทุนรวมภาษี',
  `pip_gp` int(11) NOT NULL COMMENT 'ผลกำไร',
  `pip_gp2` int(11) NOT NULL COMMENT 'ผลกำไร (%)',
  `pip_p` varchar(255) NOT NULL COMMENT 'ประมาณการโครงการ  Dropdown/Manaul',
  `contact_id` int(11) NOT NULL COMMENT 'Contact',
  `pip_r` varchar(255) NOT NULL COMMENT 'เพิ่มเติม',
  `pip_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันเดือนปีที่สร้าง',
  `pip_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง',
  `pip_ess` int(11) NOT NULL COMMENT 'ประมาณการขาย',
  `pip_esc` int(11) NOT NULL COMMENT 'ประมาณการต้นทุน',
  `pip_esp` int(11) NOT NULL COMMENT 'ประมาณผลกำไร',
  `date_start` date NOT NULL COMMENT 'วันเริ่มโครงการ',
  `date_end` date NOT NULL COMMENT 'วันสิ้นสุดโครงการ',
  `status` varchar(255) NOT NULL COMMENT 'Win,Loss',
  `con_number` varchar(255) NOT NULL COMMENT 'เลขที่สัญญา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipeline`
--

INSERT INTO `pipeline` (`pip_id`, `project_name`, `project_product`, `project_brand`, `pip_vat`, `pip_salen`, `pip_sale`, `pip_costn`, `pip_cost`, `pip_gp`, `pip_gp2`, `pip_p`, `contact_id`, `pip_r`, `pip_date`, `pip_staff`, `pip_ess`, `pip_esc`, `pip_esp`, `date_start`, `date_end`, `status`, `con_number`) VALUES
(1, 'โครงการระบบยืนยันตัวตนพร้อมการวิเคราะห์ภายใบหน้า (Super Rich)', 'BIO IDM-eKYC', 'AI Platform', '7', 500000, 535000, 300000, 321000, 200000, 40, '0.10', 2, 'ประมาณโครงสร้างราคา', '2023-09-01 03:49:15', 'Apirak', 50000, 30000, 20000, '2023-01-03', '2023-12-31', 'Win', ''),
(2, 'โครงการ นวัตกรรมบริการชุมชนเพื่อควบคุมการแพร่ระบาดเชื้อไวรัสโคโรน่า 2019 ย่านนวัตกรรมการแพทย์โยธี', 'EKYD', 'Point IT', '0.05', 500000, 535000, 300000, 5321000, 200000, 5, '0.30', 1, '5', '2023-09-01 03:49:24', 'Apirak bangpuk', 5, 5, 5, '2023-09-01', '2024-12-18', 'Loss', ''),
(3, 'โครงการ นวัตกรรมบริการชุมชนเพื่อควบคุมการแพร่ระบาดเชื้อไวรัสโคโรน่า 2019 ย่านนวัตกรรมการแพทย์โยธี', 'EKYD', 'Point IT', '0.03', 1000000, 1070000, 0, 535000, 500000, 50, '0.50', 1, '200000', '2023-09-01 07:10:12', 'Apirak bangpuk', 200000, 200000, 2023, '0000-00-00', '0000-00-00', '', ''),
(4, 'KYD', 'EKYD', 'Point IT', '5', 1000000, 1050000, 0, 525000, 500000, 50, 'Select', 0, '', '2023-09-01 09:32:23', 'Apirak bangpuk', 0, 0, 0, '2023-09-01', '2023-09-01', '', ''),
(5, 'โครงการ A', 'KYD', 'Emergency Platform', '7', 1000000, 1070000, 0, 535000, 500000, 50, '50', 1, 'นำล่องโครงการ', '2023-09-01 09:46:51', 'Apirak bangpuk', 500000, 250000, 250000, '2023-09-01', '2024-09-01', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pip_docker`
--

CREATE TABLE `pip_docker` (
  `docker_id` int(11) NOT NULL,
  `docker_name` varchar(255) NOT NULL COMMENT 'ชื่อโครงการ',
  `docker_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `docker_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_docker`
--

INSERT INTO `pip_docker` (`docker_id`, `docker_name`, `docker_date`, `docker_staff`) VALUES
(1, 'BIO IDM-eKYC', '2023-08-18 02:29:39', 'Apirak bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pip_file`
--

CREATE TABLE `pip_file` (
  `file_id` int(11) NOT NULL COMMENT 'Key',
  `pip_id` int(11) NOT NULL COMMENT 'เชื่อมข้อมูลโครกการ',
  `docker_id` int(11) NOT NULL COMMENT 'แฟ้ม',
  `type_id` int(11) NOT NULL COMMENT 'โฟรเดอร์',
  `file_name` varchar(255) NOT NULL COMMENT 'ชื่อไฟล์',
  `file_link` varchar(255) NOT NULL COMMENT 'Link Google Drive',
  `file_r` varchar(255) NOT NULL COMMENT 'คำอธิบาย',
  `file_status` varchar(255) NOT NULL COMMENT 'สถานะ',
  `file_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `file_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_file`
--

INSERT INTO `pip_file` (`file_id`, `pip_id`, `docker_id`, `type_id`, `file_name`, `file_link`, `file_r`, `file_status`, `file_date`, `file_staff`) VALUES
(1, 1, 1, 1, 'รายงานการลงพื้นที่ เทศบาลนครนครรังสิต  จังหวัด ปทุมธานี 17082023', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เพิ่มเติมอีกนิด', 'On Hold', '2023-08-18 02:49:08', 'Apirak Bangpuk'),
(2, 2, 1, 1, 'รายงานการลงพื้นที่ เทศบาลนครนครรังสิต  ', 'https://github.com/Amp-Apirak/ino/tree/dev-4', 'เพิ่มเติมอีกนิด', 'On Hold', '2023-08-18 03:06:47', 'Apirak Bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pip_folder`
--

CREATE TABLE `pip_folder` (
  `type_id` int(11) NOT NULL,
  `docker_id` int(11) NOT NULL COMMENT 'Docker',
  `type_name` varchar(255) NOT NULL COMMENT 'ชื่อโฟรเดอร์',
  `type_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สร้าง',
  `type_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_folder`
--

INSERT INTO `pip_folder` (`type_id`, `docker_id`, `type_name`, `type_date`, `type_staff`) VALUES
(1, 1, '01', '2023-08-18 02:37:26', 'Apirak Bangpuk');

-- --------------------------------------------------------

--
-- Table structure for table `pip_period`
--

CREATE TABLE `pip_period` (
  `p_id` int(11) NOT NULL COMMENT 'เลขไอดีของ period',
  `pip_id` int(11) NOT NULL COMMENT 'เลขไอดีของ Project',
  `pip_ps` varchar(255) NOT NULL COMMENT 'งวดชำระเงิน (เพิ่มได้มากกว่า 1 )',
  `pip_month` varchar(255) NOT NULL COMMENT 'เดือน',
  `pip_pst` int(11) NOT NULL COMMENT 'งวดชำระเงิน (%) Amount/Manaul',
  `pip_psw` int(11) NOT NULL COMMENT 'คำนวณราคาขายจาก %',
  `pip_pssum` int(11) NOT NULL COMMENT 'รวมกันต้องได้ 100 % และเท่ากับราคาขาย '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pip_period`
--

INSERT INTO `pip_period` (`p_id`, `pip_id`, `pip_ps`, `pip_month`, `pip_pst`, `pip_psw`, `pip_pssum`) VALUES
(1, 1, 'ชำระเงินงวดแรก', 'มกราคม', 20, 100000, 10000),
(2, 1, 'ชำระเงินงวด 2', 'มิถุนายน', 20, 100000, 10000),
(3, 2, 'ชำระเงินงวด 1', 'เมษายน', 50, 750000, 750000);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `pip_id` int(11) NOT NULL COMMENT 'เชื่อมกับโปรเจคเนม',
  `project_d` varchar(255) NOT NULL COMMENT 'รายละเอียดโครงการ',
  `project_m` varchar(255) NOT NULL COMMENT 'ผู้รับผิดชอบโครงการ',
  `project_u` varchar(255) NOT NULL COMMENT 'ทีม',
  `project_status` varchar(255) NOT NULL COMMENT 'สถานะ',
  `project_start` date NOT NULL COMMENT 'วันเริ่ม',
  `project_end` date NOT NULL COMMENT 'วัันสิ้นสุด',
  `project_crt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันสร้าง',
  `project_staff` varchar(255) NOT NULL COMMENT 'ผู้สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `pip_id`, `project_d`, `project_m`, `project_u`, `project_status`, `project_start`, `project_end`, `project_crt`, `project_staff`) VALUES
(1, 1, 'เพื่อสนับสนุนการทำงาน และร่วมปรึกษาหาลือ เพื่อพัฒนาระบบแพลตฟอร์ม ให้ตอบโจทย์การทำงานของของเจ้าหน้าที่ และกลุ่มเป้าหมายผู้ใช้งานอุปกรณ์แต่ละบ้าน ของเทศบาลนครนครรังสิต จังหวัดปทุมธานี', '2', '1,2,3', 'On Hold', '2023-08-18', '2023-08-31', '2023-08-18 04:35:08', 'Apirak Bangpuk');

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
  `project_name` varchar(255) NOT NULL COMMENT 'โปรเจค',
  `task_crt` datetime NOT NULL COMMENT 'วันที่สรัาง',
  `task_staff` text NOT NULL COMMENT 'ผู้สร้าง',
  `task_name` varchar(200) NOT NULL COMMENT 'หัวข้อ',
  `task_detail` varchar(200) NOT NULL COMMENT 'รายละเอียด',
  `task_status` varchar(100) NOT NULL COMMENT 'สถานะ'
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
-- Indexes for table `folder_doc`
--
ALTER TABLE `folder_doc`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `pipeline`
--
ALTER TABLE `pipeline`
  ADD PRIMARY KEY (`pip_id`);

--
-- Indexes for table `pip_docker`
--
ALTER TABLE `pip_docker`
  ADD PRIMARY KEY (`docker_id`);

--
-- Indexes for table `pip_file`
--
ALTER TABLE `pip_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `pip_folder`
--
ALTER TABLE `pip_folder`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `pip_period`
--
ALTER TABLE `pip_period`
  ADD PRIMARY KEY (`p_id`);

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
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `folder_doc`
--
ALTER TABLE `folder_doc`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pipeline`
--
ALTER TABLE `pipeline`
  MODIFY `pip_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ Project', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pip_docker`
--
ALTER TABLE `pip_docker`
  MODIFY `docker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pip_file`
--
ALTER TABLE `pip_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Key', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pip_folder`
--
ALTER TABLE `pip_folder`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pip_period`
--
ALTER TABLE `pip_period`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขไอดีของ period', AUTO_INCREMENT=4;

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
